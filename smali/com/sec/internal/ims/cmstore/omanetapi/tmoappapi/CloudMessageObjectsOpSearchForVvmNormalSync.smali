.class public Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageObjectsOpSearchForVvmNormalSync;
.super Lcom/sec/internal/omanetapi/nms/ObjectsOpSearch;
.source "CloudMessageObjectsOpSearchForVvmNormalSync.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final serialVersionUID:J = 0xd8e64ef8aaae46fL


# instance fields
.field private final JSON_CURSOR_TAG:Ljava/lang/String;

.field private final JSON_OBJECT_LIST_TAG:Ljava/lang/String;

.field private transient mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

.field private final mFormatOfName:Ljava/text/SimpleDateFormat;

.field private final transient mIAPICallFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetmIAPICallFlowListener(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageObjectsOpSearchForVvmNormalSync;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageObjectsOpSearchForVvmNormalSync;->mIAPICallFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageObjectsOpSearchForVvmNormalSync;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-class v0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageObjectsOpSearchForVvmNormalSync;

    .line 48
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageObjectsOpSearchForVvmNormalSync;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;ZLcom/sec/internal/ims/cmstore/MessageStoreClient;)V
    .locals 8

    .line 59
    invoke-interface {p6}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getNmsHost()Ljava/lang/String;

    move-result-object v2

    .line 60
    invoke-interface {p6}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getOMAApiVersion()Ljava/lang/String;

    move-result-object v3

    .line 61
    invoke-interface {p6}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getStoreName()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move-object v5, p3

    move-object v6, p6

    .line 59
    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/omanetapi/nms/ObjectsOpSearch;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    const-string v0, "objectList"

    .line 53
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageObjectsOpSearchForVvmNormalSync;->JSON_OBJECT_LIST_TAG:Ljava/lang/String;

    const-string v0, "cursor"

    .line 54
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageObjectsOpSearchForVvmNormalSync;->JSON_CURSOR_TAG:Ljava/lang/String;

    .line 62
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 63
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string/jumbo v2, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageObjectsOpSearchForVvmNormalSync;->mFormatOfName:Ljava/text/SimpleDateFormat;

    const-string v1, "UTC"

    .line 64
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 65
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageObjectsOpSearchForVvmNormalSync;->mIAPICallFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    .line 66
    invoke-interface {p6}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-interface {p6}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageObjectsOpSearchForVvmNormalSync;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    .line 68
    new-instance v0, Lcom/sec/internal/omanetapi/nms/data/SelectionCriteria;

    invoke-direct {v0}, Lcom/sec/internal/omanetapi/nms/data/SelectionCriteria;-><init>()V

    .line 69
    invoke-direct {p0, p3, p4, v0, p5}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageObjectsOpSearchForVvmNormalSync;->constructSearchParam(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Lcom/sec/internal/omanetapi/nms/data/SelectionCriteria;Z)V

    .line 70
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-nez p5, :cond_0

    .line 71
    iput-object p2, v0, Lcom/sec/internal/omanetapi/nms/data/SelectionCriteria;->fromCursor:Ljava/lang/String;

    .line 74
    :cond_0
    invoke-interface {p6}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p5

    invoke-virtual {p5}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p5

    invoke-interface {p5, p3}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getValidTokenByLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 75
    invoke-interface {p6}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p6

    invoke-virtual {p6}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p6

    invoke-interface {p6}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getContentType()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p0, p6, p5}, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->initCommonRequestHeaders(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p5, 0x1

    .line 77
    invoke-virtual {p0, v0, p5}, Lcom/sec/internal/omanetapi/nms/ObjectsOpSearch;->initPostRequest(Lcom/sec/internal/omanetapi/nms/data/SelectionCriteria;Z)V

    .line 79
    new-instance p5, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageObjectsOpSearchForVvmNormalSync$1;

    move-object v1, p5

    move-object v2, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p2

    move-object v6, p1

    move-object v7, p0

    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageObjectsOpSearchForVvmNormalSync$1;-><init>(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageObjectsOpSearchForVvmNormalSync;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    invoke-virtual {p0, p5}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setCallback(Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageObjectsOpSearchForVvmNormalSync;Lcom/sec/internal/helper/httpclient/HttpResponseParams;)Z
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->handleUnAuthorized(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageObjectsOpSearchForVvmNormalSync;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0
.end method

.method private constructSearchParam(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Lcom/sec/internal/omanetapi/nms/data/SelectionCriteria;Z)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 180
    iget-object v0, v1, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 181
    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getMaxSearchEntry()I

    move-result v0

    iput v0, v3, Lcom/sec/internal/omanetapi/nms/data/SelectionCriteria;->maxEntries:I

    .line 186
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v0, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, ""

    if-eqz v0, :cond_1

    .line 187
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->isGcmReplacePolling()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p4, :cond_0

    .line 189
    new-instance v0, Lcom/sec/internal/omanetapi/nms/data/SearchCriteria;

    invoke-direct {v0}, Lcom/sec/internal/omanetapi/nms/data/SearchCriteria;-><init>()V

    new-array v1, v4, [Lcom/sec/internal/omanetapi/nms/data/SearchCriterion;

    .line 191
    new-instance v2, Lcom/sec/internal/omanetapi/nms/data/SearchCriterion;

    invoke-direct {v2}, Lcom/sec/internal/omanetapi/nms/data/SearchCriterion;-><init>()V

    aput-object v2, v1, v5

    const-string v4, "PresetSearch"

    .line 192
    iput-object v4, v2, Lcom/sec/internal/omanetapi/nms/data/SearchCriterion;->type:Ljava/lang/String;

    const-string v4, "UPOneDotO"

    .line 193
    iput-object v4, v2, Lcom/sec/internal/omanetapi/nms/data/SearchCriterion;->name:Ljava/lang/String;

    .line 194
    iput-object v6, v2, Lcom/sec/internal/omanetapi/nms/data/SearchCriterion;->value:Ljava/lang/String;

    .line 195
    iput-object v1, v0, Lcom/sec/internal/omanetapi/nms/data/SearchCriteria;->criterion:[Lcom/sec/internal/omanetapi/nms/data/SearchCriterion;

    .line 196
    iput-object v0, v3, Lcom/sec/internal/omanetapi/nms/data/SelectionCriteria;->searchCriteria:Lcom/sec/internal/omanetapi/nms/data/SearchCriteria;

    :cond_0
    return-void

    .line 204
    :cond_1
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v0, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v7, "Date"

    const/4 v8, 0x0

    if-eqz v0, :cond_4

    .line 205
    sget-object v9, Lcom/sec/internal/ims/cmstore/helper/TMOVariables$TmoMessageFolderId;->mVVMailInbox:Ljava/lang/String;

    :try_start_0
    const-string/jumbo v0, "timeStamp"

    .line 208
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v12

    .line 209
    iget-object v10, v1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageObjectsOpSearchForVvmNormalSync;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/16 v11, 0x11

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string/jumbo v15, "timeStamp DESC"

    invoke-virtual/range {v10 .. v15}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v10, :cond_2

    .line 211
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 212
    iget-object v0, v1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageObjectsOpSearchForVvmNormalSync;->mFormatOfName:Ljava/text/SimpleDateFormat;

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 213
    :try_start_2
    new-instance v0, Lcom/sec/internal/omanetapi/nms/data/SearchCriteria;

    invoke-direct {v0}, Lcom/sec/internal/omanetapi/nms/data/SearchCriteria;-><init>()V

    new-array v12, v4, [Lcom/sec/internal/omanetapi/nms/data/SearchCriterion;

    .line 215
    new-instance v13, Lcom/sec/internal/omanetapi/nms/data/SearchCriterion;

    invoke-direct {v13}, Lcom/sec/internal/omanetapi/nms/data/SearchCriterion;-><init>()V

    aput-object v13, v12, v5

    .line 217
    iput-object v7, v13, Lcom/sec/internal/omanetapi/nms/data/SearchCriterion;->type:Ljava/lang/String;

    .line 218
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "minDate="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/sec/internal/omanetapi/nms/data/SearchCriterion;->value:Ljava/lang/String;

    .line 219
    iput-object v12, v0, Lcom/sec/internal/omanetapi/nms/data/SearchCriteria;->criterion:[Lcom/sec/internal/omanetapi/nms/data/SearchCriterion;

    .line 220
    iput-object v0, v3, Lcom/sec/internal/omanetapi/nms/data/SelectionCriteria;->searchCriteria:Lcom/sec/internal/omanetapi/nms/data/SearchCriteria;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v11, v6

    goto :goto_2

    :cond_2
    move-object v11, v6

    :goto_0
    if-eqz v10, :cond_5

    .line 226
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v11, v6

    move-object v10, v8

    .line 223
    :goto_2
    :try_start_3
    sget-object v12, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageObjectsOpSearchForVvmNormalSync;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v10, :cond_5

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v8, v10

    :goto_3
    if-eqz v8, :cond_3

    .line 226
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 228
    :cond_3
    throw v0

    :cond_4
    move-object v9, v6

    move-object v11, v9

    .line 230
    :cond_5
    :goto_4
    iget-object v0, v1, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    .line 231
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getProtocol()Ljava/lang/String;

    move-result-object v0

    .line 232
    new-instance v10, Landroid/net/Uri$Builder;

    invoke-direct {v10}, Landroid/net/Uri$Builder;-><init>()V

    .line 233
    invoke-virtual {v10, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v12, v1, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 235
    invoke-interface {v12}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v12

    .line 236
    invoke-interface {v12}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getNmsHost()Ljava/lang/String;

    move-result-object v12

    .line 234
    invoke-virtual {v0, v12}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v12, "nms"

    .line 237
    invoke-virtual {v0, v12}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v12, v1, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 239
    invoke-interface {v12}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v12

    .line 240
    invoke-interface {v12}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getOMAApiVersion()Ljava/lang/String;

    move-result-object v12

    .line 238
    invoke-virtual {v0, v12}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, v1, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 242
    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v1

    .line 243
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getStoreName()Ljava/lang/String;

    move-result-object v1

    .line 241
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    move-object/from16 v1, p1

    .line 243
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "folders"

    .line 244
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 245
    invoke-virtual {v0, v9}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 247
    :try_start_4
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Reference;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Reference;-><init>()V
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_4

    .line 248
    :try_start_5
    new-instance v0, Ljava/net/URL;

    invoke-virtual {v10}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Reference;->resourceURL:Ljava/net/URL;
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_6

    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    move-object v1, v8

    .line 250
    :goto_5
    sget-object v9, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageObjectsOpSearchForVvmNormalSync;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iput-object v8, v1, Lcom/sec/internal/omanetapi/nms/data/Reference;->resourceURL:Ljava/net/URL;

    .line 253
    :goto_6
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageObjectsOpSearchForVvmNormalSync;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "type: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", minDate: "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    new-instance v0, Lcom/sec/internal/omanetapi/nms/data/SortCriteria;

    invoke-direct {v0}, Lcom/sec/internal/omanetapi/nms/data/SortCriteria;-><init>()V

    new-array v2, v4, [Lcom/sec/internal/omanetapi/nms/data/SortCriterion;

    .line 257
    new-instance v4, Lcom/sec/internal/omanetapi/nms/data/SortCriterion;

    invoke-direct {v4}, Lcom/sec/internal/omanetapi/nms/data/SortCriterion;-><init>()V

    aput-object v4, v2, v5

    .line 259
    iput-object v7, v4, Lcom/sec/internal/omanetapi/nms/data/SortCriterion;->type:Ljava/lang/String;

    const-string v5, "Ascending"

    .line 260
    iput-object v5, v4, Lcom/sec/internal/omanetapi/nms/data/SortCriterion;->order:Ljava/lang/String;

    .line 261
    iput-object v2, v0, Lcom/sec/internal/omanetapi/nms/data/SortCriteria;->criterion:[Lcom/sec/internal/omanetapi/nms/data/SortCriterion;

    .line 263
    iput-object v1, v3, Lcom/sec/internal/omanetapi/nms/data/SelectionCriteria;->searchScope:Lcom/sec/internal/omanetapi/nms/data/Reference;

    .line 264
    iput-object v0, v3, Lcom/sec/internal/omanetapi/nms/data/SelectionCriteria;->sortCriteria:Lcom/sec/internal/omanetapi/nms/data/SortCriteria;

    return-void
.end method


# virtual methods
.method public getRetryInstance(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .locals 1

    .line 268
    iget-object p1, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->getBoxId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getValidTokenByLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 269
    iget-object v0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->initCommonRequestHeaders(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public onSearchComplete(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V
    .locals 1

    .line 274
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    .line 276
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setLine(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    .line 277
    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setSyncType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    sget-object p2, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->VVM_NORMAL_SYNC_SUMMARY_COMPLETE:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    .line 278
    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setActionType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    .line 281
    new-instance p2, Landroid/os/Message;

    invoke-direct {p2}, Landroid/os/Message;-><init>()V

    .line 282
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object p1

    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 283
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->VVM_NORMAL_SYNC_SUMMARY_COMPLETE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    iput p1, p2, Landroid/os/Message;->what:I

    .line 284
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageObjectsOpSearchForVvmNormalSync;->mIAPICallFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    invoke-interface {p0, p2}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFixedFlowWithMessage(Landroid/os/Message;)V

    return-void
.end method
