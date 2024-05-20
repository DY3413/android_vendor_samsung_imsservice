.class public Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;
.super Lcom/sec/internal/omanetapi/nms/ObjectsOpSearch;
.source "CloudMessageObjectsOpSearch.java"


# static fields
.field private static final serialVersionUID:J = 0x72101bb1a5181ffL


# instance fields
.field private final JSON_CURSOR_TAG:Ljava/lang/String;

.field private final JSON_OBJECT_LIST_TAG:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field private transient mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

.field private final mFormatOfName:Ljava/text/SimpleDateFormat;

.field private final transient mIAPICallFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

.field private final mIsFullSync:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIAPICallFlowListener(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->mIAPICallFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    return-object p0
.end method

.method public constructor <init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;ZLcom/sec/internal/ims/cmstore/MessageStoreClient;Z)V
    .locals 7

    .line 57
    invoke-interface {p6}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getNmsHost()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p6}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getOMAApiVersion()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p6}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getStoreName()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move-object v5, p3

    move-object v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/omanetapi/nms/ObjectsOpSearch;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 45
    const-class v0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;

    .line 46
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->TAG:Ljava/lang/String;

    const-string v0, "objectList"

    .line 52
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->JSON_OBJECT_LIST_TAG:Ljava/lang/String;

    const-string v0, "cursor"

    .line 53
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->JSON_CURSOR_TAG:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p6}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->TAG:Ljava/lang/String;

    .line 61
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 62
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string/jumbo v2, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->mFormatOfName:Ljava/text/SimpleDateFormat;

    const-string v1, "UTC"

    .line 63
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 64
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->mIAPICallFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    .line 65
    iput-boolean p7, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->mIsFullSync:Z

    .line 66
    invoke-interface {p6}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getContext()Landroid/content/Context;

    move-result-object p7

    invoke-interface {p6}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result p6

    invoke-static {p7, p6}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    move-result-object p6

    iput-object p6, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    .line 68
    new-instance p6, Lcom/sec/internal/omanetapi/nms/data/SelectionCriteria;

    invoke-direct {p6}, Lcom/sec/internal/omanetapi/nms/data/SelectionCriteria;-><init>()V

    .line 69
    invoke-direct {p0, p3, p4, p6, p5}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->constructSearchParam(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Lcom/sec/internal/omanetapi/nms/data/SelectionCriteria;Z)V

    .line 70
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-nez p5, :cond_0

    .line 71
    iput-object p2, p6, Lcom/sec/internal/omanetapi/nms/data/SelectionCriteria;->fromCursor:Ljava/lang/String;

    .line 74
    :cond_0
    iget-object p5, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p5}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p5

    invoke-virtual {p5}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p5

    invoke-interface {p5, p3}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getValidTokenByLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 76
    iget-object p7, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p7}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p7

    invoke-virtual {p7}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p7

    invoke-interface {p7}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getContentType()Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p0, p7, p5}, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->initCommonRequestHeaders(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p5, 0x1

    .line 77
    invoke-virtual {p0, p6, p5}, Lcom/sec/internal/omanetapi/nms/ObjectsOpSearch;->initPostRequest(Lcom/sec/internal/omanetapi/nms/data/SelectionCriteria;Z)V

    .line 79
    new-instance p5, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;

    move-object v0, p5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p0

    move-object v4, p3

    move-object v5, p4

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;-><init>(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Ljava/lang/String;)V

    invoke-virtual {p0, p5}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setCallback(Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;Lcom/sec/internal/helper/httpclient/HttpResponseParams;)Z
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->handleUnAuthorized(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0
.end method

.method static synthetic access$500(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0
.end method

.method static synthetic access$600(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0
.end method

.method static synthetic access$700(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0
.end method

.method private constructSearchParam(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Lcom/sec/internal/omanetapi/nms/data/SelectionCriteria;Z)V
    .locals 11

    .line 250
    iget-object v0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 251
    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getMaxSearchEntry()I

    move-result v0

    iput v0, p3, Lcom/sec/internal/omanetapi/nms/data/SelectionCriteria;->maxEntries:I

    .line 256
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v0, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, ""

    if-eqz v0, :cond_1

    .line 257
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->isGcmReplacePolling()Z

    move-result p0

    if-eqz p0, :cond_0

    if-nez p4, :cond_0

    .line 259
    new-instance p0, Lcom/sec/internal/omanetapi/nms/data/SearchCriteria;

    invoke-direct {p0}, Lcom/sec/internal/omanetapi/nms/data/SearchCriteria;-><init>()V

    new-array p1, v1, [Lcom/sec/internal/omanetapi/nms/data/SearchCriterion;

    .line 261
    new-instance p2, Lcom/sec/internal/omanetapi/nms/data/SearchCriterion;

    invoke-direct {p2}, Lcom/sec/internal/omanetapi/nms/data/SearchCriterion;-><init>()V

    aput-object p2, p1, v2

    const-string p4, "PresetSearch"

    .line 262
    iput-object p4, p2, Lcom/sec/internal/omanetapi/nms/data/SearchCriterion;->type:Ljava/lang/String;

    const-string p4, "UPOneDotO"

    .line 263
    iput-object p4, p2, Lcom/sec/internal/omanetapi/nms/data/SearchCriterion;->name:Ljava/lang/String;

    .line 264
    iput-object v3, p2, Lcom/sec/internal/omanetapi/nms/data/SearchCriterion;->value:Ljava/lang/String;

    .line 265
    iput-object p1, p0, Lcom/sec/internal/omanetapi/nms/data/SearchCriteria;->criterion:[Lcom/sec/internal/omanetapi/nms/data/SearchCriterion;

    .line 266
    iput-object p0, p3, Lcom/sec/internal/omanetapi/nms/data/SelectionCriteria;->searchCriteria:Lcom/sec/internal/omanetapi/nms/data/SearchCriteria;

    :cond_0
    return-void

    .line 274
    :cond_1
    sget-object p4, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {p4, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p4

    const/4 v0, 0x0

    if-eqz p4, :cond_4

    .line 275
    sget-object p4, Lcom/sec/internal/ims/cmstore/helper/TMOVariables$TmoMessageFolderId;->mVVMailInbox:Ljava/lang/String;

    .line 277
    iget-boolean v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->mIsFullSync:Z

    if-nez v4, :cond_5

    :try_start_0
    const-string/jumbo v4, "timeStamp"

    .line 279
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v7

    .line 280
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/16 v6, 0x11

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string/jumbo v10, "timeStamp DESC"

    invoke-virtual/range {v5 .. v10}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_2

    .line 282
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 283
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->mFormatOfName:Ljava/text/SimpleDateFormat;

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v5

    goto :goto_1

    :cond_2
    move-object v5, v3

    :goto_0
    if-eqz v4, :cond_7

    .line 289
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception v5

    move-object v4, v0

    .line 286
    :goto_1
    :try_start_2
    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v4, :cond_5

    .line 289
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_1
    move-exception p0

    move-object v0, v4

    :goto_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 291
    :cond_3
    throw p0

    .line 293
    :cond_4
    sget-object p4, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM_GREETINGS:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {p4, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_6

    .line 294
    sget-object p4, Lcom/sec/internal/ims/cmstore/helper/TMOVariables$TmoMessageFolderId;->mVVMailGreeting:Ljava/lang/String;

    :cond_5
    :goto_3
    move-object v5, v3

    goto :goto_4

    :cond_6
    move-object p4, v3

    move-object v5, p4

    .line 296
    :cond_7
    :goto_4
    iget-object v4, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v4}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v4

    .line 297
    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getProtocol()Ljava/lang/String;

    move-result-object v4

    .line 298
    new-instance v6, Landroid/net/Uri$Builder;

    invoke-direct {v6}, Landroid/net/Uri$Builder;-><init>()V

    .line 299
    invoke-virtual {v6, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    iget-object v7, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 301
    invoke-interface {v7}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v7

    .line 302
    invoke-interface {v7}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getNmsHost()Ljava/lang/String;

    move-result-object v7

    .line 300
    invoke-virtual {v4, v7}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v7, "nms"

    .line 303
    invoke-virtual {v4, v7}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    iget-object v7, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 305
    invoke-interface {v7}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v7

    .line 306
    invoke-interface {v7}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getOMAApiVersion()Ljava/lang/String;

    move-result-object v7

    .line 304
    invoke-virtual {v4, v7}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    iget-object v7, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 308
    invoke-interface {v7}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v7

    .line 309
    invoke-interface {v7}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getStoreName()Ljava/lang/String;

    move-result-object v7

    .line 307
    invoke-virtual {v4, v7}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    .line 309
    invoke-virtual {v4, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v4, "folders"

    .line 310
    invoke-virtual {p1, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 311
    invoke-virtual {p1, p4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 313
    :try_start_3
    new-instance p1, Lcom/sec/internal/omanetapi/nms/data/Reference;

    invoke-direct {p1}, Lcom/sec/internal/omanetapi/nms/data/Reference;-><init>()V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_3

    .line 314
    :try_start_4
    new-instance p4, Ljava/net/URL;

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p4, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Reference;->resourceURL:Ljava/net/URL;
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_6

    :catch_2
    move-exception p4

    goto :goto_5

    :catch_3
    move-exception p4

    move-object p1, v0

    .line 316
    :goto_5
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v4, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iput-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/Reference;->resourceURL:Ljava/net/URL;

    .line 319
    :goto_6
    iget-object p4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "type: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", minDate: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", mIsFullSync: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->mIsFullSync:Z

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p4, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-boolean p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->mIsFullSync:Z

    const-string p2, "Date"

    if-nez p0, :cond_8

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_8

    .line 321
    new-instance p0, Lcom/sec/internal/omanetapi/nms/data/SearchCriteria;

    invoke-direct {p0}, Lcom/sec/internal/omanetapi/nms/data/SearchCriteria;-><init>()V

    new-array p4, v1, [Lcom/sec/internal/omanetapi/nms/data/SearchCriterion;

    .line 323
    new-instance v0, Lcom/sec/internal/omanetapi/nms/data/SearchCriterion;

    invoke-direct {v0}, Lcom/sec/internal/omanetapi/nms/data/SearchCriterion;-><init>()V

    aput-object v0, p4, v2

    .line 325
    iput-object p2, v0, Lcom/sec/internal/omanetapi/nms/data/SearchCriterion;->type:Ljava/lang/String;

    .line 326
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "minDate="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/internal/omanetapi/nms/data/SearchCriterion;->value:Ljava/lang/String;

    .line 327
    iput-object p4, p0, Lcom/sec/internal/omanetapi/nms/data/SearchCriteria;->criterion:[Lcom/sec/internal/omanetapi/nms/data/SearchCriterion;

    .line 328
    iput-object p0, p3, Lcom/sec/internal/omanetapi/nms/data/SelectionCriteria;->searchCriteria:Lcom/sec/internal/omanetapi/nms/data/SearchCriteria;

    .line 331
    :cond_8
    new-instance p0, Lcom/sec/internal/omanetapi/nms/data/SortCriteria;

    invoke-direct {p0}, Lcom/sec/internal/omanetapi/nms/data/SortCriteria;-><init>()V

    new-array p4, v1, [Lcom/sec/internal/omanetapi/nms/data/SortCriterion;

    .line 333
    new-instance v0, Lcom/sec/internal/omanetapi/nms/data/SortCriterion;

    invoke-direct {v0}, Lcom/sec/internal/omanetapi/nms/data/SortCriterion;-><init>()V

    aput-object v0, p4, v2

    .line 335
    iput-object p2, v0, Lcom/sec/internal/omanetapi/nms/data/SortCriterion;->type:Ljava/lang/String;

    const-string p2, "Ascending"

    .line 336
    iput-object p2, v0, Lcom/sec/internal/omanetapi/nms/data/SortCriterion;->order:Ljava/lang/String;

    .line 337
    iput-object p4, p0, Lcom/sec/internal/omanetapi/nms/data/SortCriteria;->criterion:[Lcom/sec/internal/omanetapi/nms/data/SortCriterion;

    .line 339
    iput-object p1, p3, Lcom/sec/internal/omanetapi/nms/data/SelectionCriteria;->searchScope:Lcom/sec/internal/omanetapi/nms/data/Reference;

    .line 340
    iput-object p0, p3, Lcom/sec/internal/omanetapi/nms/data/SelectionCriteria;->sortCriteria:Lcom/sec/internal/omanetapi/nms/data/SortCriteria;

    return-void
.end method
