.class public Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;
.super Ljava/lang/Object;
.source "DefaultCloudMessageStrategy.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;
.implements Lcom/sec/internal/interfaces/ims/cmstore/IMessageAttributeInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;,
        Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$NmsNotificationType;
    }
.end annotation


# static fields
.field public static final MAX_RETRY_COUNTER:I = 0x4


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field protected mContentType:Ljava/lang/String;

.field protected mFailedCallFlowTranslator:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/sec/internal/helper/httpclient/HttpRequestParams;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mMaxBulkDelete:I

.field protected mMaxRetryCounter:I

.field protected mMaxSearch:I

.field protected mMessageAttributeRegistration:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mNotificationFormat:Lcom/sec/internal/omanetapi/common/data/NotificationFormat;

.field protected mOmaCallFlowTranslator:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mProtocol:Ljava/lang/String;

.field protected mScheduledTimer:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mStandardRetrySchedule:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

.field protected mStrategyType:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

.field protected mSuccessfullCallFlowTranslator:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/sec/internal/helper/httpclient/HttpRequestParams;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;",
            ">;>;"
        }
    .end annotation
.end field

.field protected sErrorMsgsTranslator:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorType;",
            "Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V
    .locals 2

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const-class v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x4

    .line 75
    iput v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMaxRetryCounter:I

    const/16 v0, 0x64

    .line 82
    iput v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMaxBulkDelete:I

    const/16 v0, 0xa

    .line 83
    iput v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMaxSearch:I

    .line 640
    sget-object v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->DEFAULT:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStrategyType:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->LOG_TAG:Ljava/lang/String;

    const-string v1, "DefaultCloudMessageStrategy"

    .line 115
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-void
.end method

.method private getHandlerClassName(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;)Ljava/lang/String;
    .locals 1

    .line 535
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    .line 536
    instance-of v0, p1, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;

    if-eqz v0, :cond_0

    .line 537
    const-class p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 538
    :cond_0
    instance-of v0, p1, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;

    if-eqz v0, :cond_1

    .line 539
    const-class p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 540
    :cond_1
    instance-of v0, p1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;

    if-eqz v0, :cond_2

    .line 541
    const-class p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 542
    :cond_2
    instance-of v0, p1, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;

    if-nez v0, :cond_3

    instance-of p1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    if-eqz p1, :cond_4

    .line 543
    :cond_3
    const-class p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    :cond_4
    :goto_0
    return-object p0
.end method


# virtual methods
.method public final bulkOpTreatSuccessIndividualResponse(I)Z
    .locals 4

    .line 933
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStrategyType:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    sget-object v2, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->TMOUS:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->isOneOf([Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x193

    if-eq p1, p0, :cond_0

    const/16 p0, 0x194

    if-ne p1, p0, :cond_1

    :cond_0
    return v0

    :cond_1
    return v3
.end method

.method public final bulkOpTreatSuccessRequestResponse(I)Z
    .locals 4

    .line 944
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStrategyType:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    sget-object v2, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->TMOUS:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->isOneOf([Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x194

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    return v3
.end method

.method public clearOmaRetryData()V
    .locals 0

    return-void
.end method

.method public getAdaptedRetrySchedule(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getContentType()Ljava/lang/String;
    .locals 0

    .line 688
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mContentType:Ljava/lang/String;

    return-object p0
.end method

.method public getControllerOfLastFailedApi()Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getFailedCallFlowTranslator()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/sec/internal/helper/httpclient/HttpRequestParams;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;",
            ">;>;"
        }
    .end annotation

    .line 650
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mFailedCallFlowTranslator:Ljava/util/Map;

    return-object p0
.end method

.method public final getIsInitSyncIndicatorRequired()Z
    .locals 4

    .line 757
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStrategyType:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    sget-object v2, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->ATT:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->isOneOf([Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    return v3
.end method

.method public getLastFailedApi()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getMaxBulkDeleteEntry()I
    .locals 0

    .line 819
    iget p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMaxBulkDelete:I

    return p0
.end method

.method public final getMaxRetryCounter()I
    .locals 0

    .line 655
    iget p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMaxRetryCounter:I

    return p0
.end method

.method public final getMaxSearchEntry()I
    .locals 0

    .line 824
    iget p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMaxSearch:I

    return p0
.end method

.method public final getMessageAttributeRegistration()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 660
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    return-object p0
.end method

.method public getNativeLine()Ljava/lang/String;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTelCtn()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNcHost()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getNmsHost()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public final getNotificaitonFormat()Lcom/sec/internal/omanetapi/common/data/NotificationFormat;
    .locals 0

    .line 683
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mNotificationFormat:Lcom/sec/internal/omanetapi/common/data/NotificationFormat;

    return-object p0
.end method

.method public getOMAApiVersion()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public final getProtocol()Ljava/lang/String;
    .locals 0

    .line 665
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mProtocol:Ljava/lang/String;

    return-object p0
.end method

.method public final getSmsHashTagOrCorrelationTag(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 741
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStrategyType:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->ATT:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->TMOUS:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->isOneOf([Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 742
    invoke-static {p1, p2, p3}, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/AmbsUtils;->generateSmsHashCode(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getStoreName()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public final getSuccessfullCallFlowTranslator()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/sec/internal/helper/httpclient/HttpRequestParams;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;",
            ">;>;"
        }
    .end annotation

    .line 645
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mSuccessfullCallFlowTranslator:Ljava/util/Map;

    return-object p0
.end method

.method public getTimerValue(I)J
    .locals 0

    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public getTypeUsingMessageContext(Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getValidTokenByLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected initOmaFailureCommonFlow()V
    .locals 7

    .line 357
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->LOG_TAG:Ljava/lang/String;

    const-string v1, "init OMA failure common flow"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    const-class v2, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetIndividualObject;

    .line 366
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;

    .line 367
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x194

    invoke-direct {v1, v4, v2, v3}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->DOWNLOAD_RETRIVED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 368
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 364
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    const-class v3, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetIndividualObject;

    .line 372
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-class v5, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;

    .line 373
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v3, v5}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->OBJECT_ONE_DOWNLOAD_COMPLETED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 374
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 370
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    const-class v5, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetAllPayloads;

    .line 381
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;

    .line 382
    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v4, v5, v6}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 383
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 379
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    const-class v5, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetAllPayloads;

    .line 387
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;

    .line 388
    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v4, v5, v6}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 389
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 385
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    const-class v5, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetIndividualPayLoad;

    .line 394
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;

    .line 395
    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v4, v5, v6}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 396
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 392
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    const-class v3, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetIndividualPayLoad;

    .line 400
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-class v5, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;

    .line 401
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v3, v5}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 402
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 398
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    const-class v2, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessagePutObjectFlag;

    .line 408
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Landroid/os/Handler;

    .line 409
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v4, v2, v3}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->UPDATE_ONE_SUCCESSFUL:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 410
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 406
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    const-class v3, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageDeleteObjectFlag;

    .line 416
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-class v5, Landroid/os/Handler;

    .line 417
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v3, v5}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 418
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 414
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    new-instance v0, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    const-class v1, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageDeleteIndividualObject;

    .line 424
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-class v3, Landroid/os/Handler;

    .line 425
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v4, v1, v3}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 426
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 422
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected final initOmaSuccessCommonFlow()V
    .locals 9

    .line 223
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->LOG_TAG:Ljava/lang/String;

    const-string v1, "init OMA success common flow"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    const-class v2, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateAllObjects;

    .line 228
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Landroid/os/Handler;

    .line 229
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xc9

    invoke-direct {v1, v4, v2, v3}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->OBJECT_ONE_UPLOAD_COMPLETED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 230
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 226
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    const-class v2, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetIndividualObject;

    .line 236
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;

    .line 237
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xc8

    invoke-direct {v1, v5, v2, v3}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->OBJECT_ONE_DOWNLOAD_COMPLETED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 238
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 234
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    const-class v3, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetIndividualObject;

    .line 242
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-class v6, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;

    .line 243
    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v5, v3, v6}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->DOWNLOAD_RETRIVED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 244
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 240
    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    const-class v6, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetAllPayloads;

    .line 251
    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;

    .line 252
    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v5, v6, v7}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 249
    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    const-class v6, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetAllPayloads;

    .line 257
    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;

    .line 258
    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v5, v6, v7}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 259
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 255
    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    const-class v6, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetIndividualPayLoad;

    .line 264
    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;

    .line 265
    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v5, v6, v7}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 262
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    const-class v2, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetIndividualPayLoad;

    .line 270
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-class v6, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;

    .line 271
    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v5, v2, v6}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 272
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 268
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    const-class v2, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessagePutObjectFlag;

    .line 278
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Landroid/os/Handler;

    .line 279
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v4, v2, v3}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->UPDATE_ONE_SUCCESSFUL:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 280
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 276
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    const-class v3, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageDeleteObjectFlag;

    .line 286
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Landroid/os/Handler;

    .line 287
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0xcc

    invoke-direct {v1, v6, v3, v4}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 288
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 284
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    const-class v3, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageDeleteIndividualObject;

    .line 294
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Landroid/os/Handler;

    .line 295
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v5, v3, v4}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 292
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    const-class v2, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;

    .line 302
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Landroid/os/Handler;

    .line 303
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v5, v2, v3}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->INITIAL_SYNC_SUMMARY_COMPLETE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 304
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 300
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    const-class v3, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;

    .line 308
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Landroid/os/Handler;

    .line 309
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v6, v3, v4}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 310
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 306
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    const-class v2, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkDeletion;

    .line 317
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;

    .line 318
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v5, v2, v3}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->BULK_UPDATE_OR_DELETE_SUCCESSFUL:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 319
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 315
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    const-class v3, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkDeletion;

    .line 323
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;

    .line 324
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v6, v3, v4}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 325
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 321
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    const-class v3, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkDeletion;

    .line 329
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;

    .line 330
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0x193

    invoke-direct {v1, v7, v3, v4}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->FALLBACK_ONE_UPDATE_OR_DELETE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 331
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 327
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    const-class v4, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkUpdate;

    .line 338
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-class v8, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;

    .line 339
    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v5, v4, v8}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 340
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 336
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    const-class v4, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkUpdate;

    .line 344
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;

    .line 345
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v6, v4, v5}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 346
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 342
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    new-instance v0, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    const-class v1, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkUpdate;

    .line 350
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;

    .line 351
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v7, v1, v2}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 352
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 348
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final isAirplaneModeChangeHandled()Z
    .locals 4

    .line 879
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStrategyType:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->ATT:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->TMOUS:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->isOneOf([Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v3

    :cond_0
    return v2
.end method

.method public final isAppTriggerMessageSearch()Z
    .locals 4

    .line 917
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStrategyType:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    sget-object v2, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->TMOUS:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->isOneOf([Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    return v3
.end method

.method public final isBulkCreationEnabled()Z
    .locals 3

    .line 803
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStrategyType:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->ATT:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->isOneOf([Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 804
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->isAmbsPhaseIV()Z

    move-result p0

    return p0

    :cond_0
    return v2
.end method

.method public final isBulkDeleteEnabled()Z
    .locals 4

    .line 795
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStrategyType:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    sget-object v2, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->ATT:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->isOneOf([Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 796
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->isAmbsPhaseIV()Z

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method public final isBulkUpdateEnabled()Z
    .locals 3

    .line 787
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStrategyType:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->ATT:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->isOneOf([Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 788
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->isAmbsPhaseIV()Z

    move-result p0

    return p0

    :cond_0
    return v2
.end method

.method public final isCaptivePortalCheckSupported()Z
    .locals 4

    .line 725
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStrategyType:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    sget-object v2, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->ATT:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->isOneOf([Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    return v3
.end method

.method protected isCarrierStrategyBreakCommonRule(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected isCarrierStrategyDiffFromCommonRuleByCode(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isDeviceConfigUsed()Z
    .locals 4

    .line 829
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStrategyType:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    sget-object v2, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->TMOUS:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->isOneOf([Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    return v3
.end method

.method public final isEnableATTHeader()Z
    .locals 4

    .line 853
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStrategyType:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    sget-object v2, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->ATT:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->isOneOf([Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    return v3
.end method

.method public final isEnableFolderIdInSearch()Z
    .locals 4

    .line 749
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStrategyType:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    sget-object v2, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->TMOUS:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->isOneOf([Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    return v3
.end method

.method public final isEnableTMOHeader()Z
    .locals 4

    .line 861
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStrategyType:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    sget-object v2, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->TMOUS:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->isOneOf([Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    return v3
.end method

.method protected isFailedForLocationRedirect(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/helper/httpclient/HttpResponseParams;)Z
    .locals 2

    .line 467
    invoke-virtual {p3}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getHeaders()Ljava/util/Map;

    move-result-object p3

    const-string v0, "Location"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 469
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 470
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 472
    :goto_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 474
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 475
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->isGcmReplacePolling()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 476
    iget-object p3, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p3}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p3

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveNmsHost(Ljava/lang/String;)V

    .line 477
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->getNmsHost()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;->updateServerRoot(Ljava/lang/String;)V

    goto :goto_1

    .line 479
    :cond_1
    instance-of p3, p2, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;

    if-eqz p3, :cond_2

    .line 480
    iget-object p3, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p3}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p3

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveNmsHost(Ljava/lang/String;)V

    .line 481
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->getNmsHost()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;->updateServerRoot(Ljava/lang/String;)V

    goto :goto_1

    .line 482
    :cond_2
    instance-of p3, p2, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;

    if-eqz p3, :cond_3

    .line 483
    iget-object p3, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p3}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p3

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveNcHost(Ljava/lang/String;)V

    .line 484
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->getNcHost()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;->updateServerRoot(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 488
    invoke-virtual {p0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 490
    :cond_3
    :goto_1
    sget-object p0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->MSTORE_REDIRECT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p0

    invoke-interface {p1, p0, p2}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedEvent(ILjava/lang/Object;)V

    return v0

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method protected isFailedForOmaRetryAfter(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/helper/httpclient/HttpResponseParams;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Z
    .locals 5

    .line 437
    invoke-virtual {p3}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getHeaders()Ljava/util/Map;

    move-result-object p3

    const-string v0, "Retry-After"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    if-eqz p3, :cond_2

    .line 438
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 439
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 440
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "retryAfterHeader: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "API["

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "], retry after "

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " seconds"

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 440
    invoke-static {v2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    if-lez p3, :cond_0

    const-string v1, "retry_header"

    .line 445
    invoke-interface {p1, p2, v1, p3}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onOverRequest(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    .line 450
    invoke-interface {p1, p2, p4}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 454
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    invoke-interface {p1, p2, p4}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public isGbaSupported()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isGoForwardSyncSupported()Z
    .locals 4

    .line 733
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStrategyType:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    sget-object v2, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->ATT:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->isOneOf([Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    return v3
.end method

.method public final isMultiLineSupported()Z
    .locals 4

    .line 701
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStrategyType:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    sget-object v2, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->TMOUS:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->isOneOf([Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    return v3
.end method

.method public final isNeedCheckBlockedNumberBeforeCopyRcsDb()Z
    .locals 4

    .line 991
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStrategyType:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    sget-object v2, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->ATT:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->isOneOf([Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    return v3
.end method

.method public final isNmsEventHasMessageDetail()Z
    .locals 4

    .line 717
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStrategyType:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    sget-object v2, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->TMOUS:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->isOneOf([Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    return v3
.end method

.method public final isNotifyAppOnUpdateCloudFail()Z
    .locals 4

    .line 869
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStrategyType:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    sget-object v2, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->TMOUS:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->isOneOf([Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    return v3
.end method

.method protected isOmaErrorRuleMatch(ILcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/Object;I)Z
    .locals 4

    .line 552
    invoke-direct {p0, p3}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->getHandlerClassName(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;)Ljava/lang/String;

    move-result-object v0

    .line 553
    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2, v0}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 555
    new-instance v0, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Landroid/os/Handler;

    .line 556
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p1, v2, v3}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 557
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/high16 v3, -0x80000000

    if-eqz v2, :cond_0

    .line 558
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 559
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 560
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    if-eq p5, v3, :cond_2

    goto :goto_1

    :cond_2
    move p5, v0

    :goto_1
    if-eq p5, v3, :cond_5

    .line 566
    invoke-static {p5}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    move-result-object v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    goto :goto_2

    .line 567
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    .line 568
    :goto_2
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "API["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], match rule["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0xc8

    if-lt p1, p0, :cond_4

    const/16 p0, 0x12c

    if-ge p1, p0, :cond_4

    .line 571
    invoke-interface {p3, p2, p5, p4}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onSuccessfulEvent(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;ILjava/lang/Object;)V

    goto :goto_3

    .line 573
    :cond_4
    invoke-interface {p3, p5, p4}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedEvent(ILjava/lang/Object;)V

    :goto_3
    const/4 p0, 0x1

    return p0

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method public final isPollingAllowed()Z
    .locals 4

    .line 709
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStrategyType:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    sget-object v2, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->ATT:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->isOneOf([Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    return v3
.end method

.method public final isPostMethodForBulkDelete()Z
    .locals 4

    .line 811
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStrategyType:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    sget-object v2, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->ATT:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->isOneOf([Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    return v3
.end method

.method public final isProvisionRequired()Z
    .locals 4

    .line 693
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStrategyType:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    sget-object v2, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->ATT:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->isOneOf([Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    return v3
.end method

.method public final isRetryEnabled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isRetryRequired(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isStoreImdnEnabled()Z
    .locals 3

    .line 975
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStrategyType:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->ATT:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->isOneOf([Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 976
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->isAmbsPhaseIV()Z

    move-result p0

    return p0

    :cond_0
    return v2
.end method

.method public final isSupportAtt72HoursRule()Z
    .locals 3

    .line 1015
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStrategyType:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->ATT:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->isOneOf([Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1016
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->isAmbsPhaseIV()Z

    move-result p0

    return p0

    :cond_0
    return v2
.end method

.method public final isTokenRequestedFromProvision()Z
    .locals 4

    .line 765
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStrategyType:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    sget-object v2, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->ATT:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->isOneOf([Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    return v3
.end method

.method public final isUIButtonUsed()Z
    .locals 4

    .line 837
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStrategyType:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    sget-object v2, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->ATT:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->isOneOf([Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    return v3
.end method

.method public isValidOMARequestUrl()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final needToHandleSimSwap()Z
    .locals 4

    .line 925
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStrategyType:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    sget-object v2, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->ATT:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->isOneOf([Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    return v3
.end method

.method public onOmaApiCredentialFailed(Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;I)V
    .locals 0

    return-void
.end method

.method protected final onOmaFlowInitComplete()V
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    return-void
.end method

.method protected final onOmaFlowInitStart()V
    .locals 1

    .line 215
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    return-void
.end method

.method public onOmaSuccess(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
    .locals 0

    return-void
.end method

.method public final requiresInterworkingCrossSearch()Z
    .locals 4

    .line 779
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStrategyType:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->ATT:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->TMOUS:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->isOneOf([Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v3

    :cond_0
    return v2
.end method

.method public final requiresMsgUploadInInitSync()Z
    .locals 4

    .line 845
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStrategyType:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    sget-object v2, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->ATT:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->isOneOf([Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    return v3
.end method

.method public setDeviceConfigUsed(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final setProtocol(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public shouldCareAfterPreProcess(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/helper/httpclient/HttpResponseParams;Ljava/lang/Object;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;I)Z
    .locals 9

    .line 173
    invoke-virtual {p3}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v6

    .line 174
    instance-of v0, p2, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;

    if-eqz v0, :cond_0

    const-string v0, "NMS"

    goto :goto_0

    :cond_0
    const-string v0, "NC"

    :goto_0
    move-object v7, v0

    .line 175
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "["

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], res code["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 175
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    move v1, v6

    move-object v2, p2

    move-object v3, p1

    move-object v4, p4

    move v5, p6

    .line 177
    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->isOmaErrorRuleMatch(ILcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/Object;I)Z

    move-result p4

    const/4 p6, 0x0

    if-eqz p4, :cond_1

    .line 179
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "], isOmaErrorRuleMatch"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p6

    .line 183
    :cond_1
    invoke-virtual {p0, p2, v6}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->isCarrierStrategyBreakCommonRule(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;I)Z

    move-result p4

    const/4 v0, 0x1

    const-string v1, "], ["

    if-eqz p4, :cond_2

    .line 184
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] catch call"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 189
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->shouldCareAfterProcessOMACommonCase(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/helper/httpclient/HttpResponseParams;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 190
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "], match common cases"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 190
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p6

    .line 194
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] catch call, return"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method protected shouldCareAfterProcessOMACommonCase(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/helper/httpclient/HttpResponseParams;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Z
    .locals 4

    .line 500
    invoke-virtual {p3}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v0

    const/16 v1, 0x1f7

    const/4 v2, 0x0

    const/16 v3, 0x1f4

    if-lt v0, v3, :cond_0

    if-eq v0, v1, :cond_0

    .line 503
    invoke-interface {p1, p2, p4}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V

    return v2

    .line 506
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->isCarrierStrategyDiffFromCommonRuleByCode(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;I)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    :cond_1
    const/16 v3, 0x12e

    if-eq v0, v3, :cond_6

    const/16 v3, 0x191

    if-eq v0, v3, :cond_5

    const/16 v3, 0x198

    if-eq v0, v3, :cond_4

    const/16 v3, 0x1ad

    if-eq v0, v3, :cond_2

    if-eq v0, v1, :cond_2

    const/4 p0, 0x1

    return p0

    .line 521
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->isFailedForOmaRetryAfter(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/helper/httpclient/HttpResponseParams;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 522
    invoke-interface {p1, p2, p4}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V

    :cond_3
    return v2

    .line 526
    :cond_4
    invoke-interface {p1, p2, p4}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V

    return v2

    .line 511
    :cond_5
    invoke-interface {p1, p2, p4}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V

    return v2

    .line 514
    :cond_6
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "API["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "], 302"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->isFailedForLocationRedirect(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/helper/httpclient/HttpResponseParams;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 516
    invoke-interface {p1, p2, p4}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V

    :cond_7
    return v2
.end method

.method public final shouldCareGroupChatAttribute()Z
    .locals 3

    .line 1007
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStrategyType:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->ATT:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->isOneOf([Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1008
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->isAmbsPhaseIV()Z

    move-result p0

    return p0

    :cond_0
    return v2
.end method

.method public final shouldClearCursorUponInitSyncDone()Z
    .locals 4

    .line 983
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStrategyType:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    sget-object v2, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->TMOUS:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->isOneOf([Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v3

    :cond_0
    return v0
.end method

.method public final shouldCorrectShortCode()Z
    .locals 4

    .line 909
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStrategyType:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    sget-object v2, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->ATT:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->isOneOf([Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    return v3
.end method

.method public shouldEnableNetAPIPutFlag(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public shouldEnableNetAPIWorking(ZZZZZ)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final shouldPersistImsRegNum()Z
    .locals 4

    .line 967
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStrategyType:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    sget-object v2, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->ATT:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->isOneOf([Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v3

    :cond_0
    return v0
.end method

.method public final shouldSkipCmasSMS(Ljava/lang/String;)Z
    .locals 4

    .line 955
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStrategyType:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    sget-object v2, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->ATT:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->isOneOf([Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;)Z

    move-result p0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    const-string p0, "#CMAS#"

    .line 957
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return v3

    :cond_1
    :goto_0
    return v0

    :cond_2
    return v3
.end method

.method public final shouldSkipMessage(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;)Z
    .locals 3

    .line 895
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStrategyType:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->ATT:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->isOneOf([Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 896
    iget-object p0, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TEXT_CONTENT:Ljava/lang/String;

    .line 897
    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->FROM:Ljava/lang/String;

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "[^0-9]+"

    const-string v1, ""

    .line 901
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 902
    invoke-static {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode;->isSmsZCode(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    return v2
.end method

.method public final shouldStopInitSyncUponLowMemory()Z
    .locals 3

    .line 999
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStrategyType:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->ATT:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->isOneOf([Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1000
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->isAmbsPhaseIV()Z

    move-result p0

    return p0

    :cond_0
    return v2
.end method

.method public final shouldStopSendingAPIwhenNetworklost()Z
    .locals 4

    .line 887
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStrategyType:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    sget-object v2, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->ATT:Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;->isOneOf([Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$CmStrategyType;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    return v3
.end method

.method public updateHTTPHeader()V
    .locals 0

    return-void
.end method
