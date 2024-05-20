.class public Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRuleHandling;
.super Ljava/lang/Object;
.source "ErrorRuleHandling.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ErrorRuleHandling"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findErrorConfig(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;
    .locals 1

    .line 138
    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p3

    invoke-interface {p3}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getFailedCallFlowTranslator()Ljava/util/Map;

    move-result-object p3

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return-object v0

    .line 141
    :cond_0
    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getFailedCallFlowTranslator()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_2

    .line 143
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    .line 144
    iget-object p3, p1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;->mErrorCode:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    return-object p1

    :cond_2
    return-object v0
.end method

.method public static handleError(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;ILcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V
    .locals 5

    if-nez p2, :cond_0

    return-void

    .line 78
    :cond_0
    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getRetryStackAdapter()Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    move-result-object p5

    invoke-virtual {p5, p2}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->checkRequestRetried(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)Z

    move-result p5

    .line 79
    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getTotalRetryCounter()I

    move-result v0

    .line 82
    iget-object v1, p3, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;->mRetryAttr:Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;

    sget-object v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;->RETRY_FORBIDDEN:Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;

    if-ne v1, v2, :cond_1

    .line 83
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p4, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRuleHandling;->TAG:Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "retry forbidden"

    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget p0, p3, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;->mFailEvent:I

    invoke-interface {p1, p0}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->update(I)Z

    goto/16 :goto_1

    .line 85
    :cond_1
    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getRetryStackAdapter()Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    move-result-object v1

    invoke-virtual {v1, p6}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->isRetryTimesFinished(Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 86
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p5, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRuleHandling;->TAG:Ljava/lang/String;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result p6

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string p6, "retry time finished"

    invoke-static {p4, p6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget p4, p3, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;->mFailEvent:I

    sget-object p6, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->SYNC_ERR:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p6}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p6

    if-eq p4, p6, :cond_2

    iget p4, p3, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;->mFailEvent:I

    sget-object p6, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->ACCESS_ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 88
    invoke-virtual {p6}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result p6

    if-eq p4, p6, :cond_2

    .line 89
    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getRetryStackAdapter()Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->clearRetryHistory()V

    .line 90
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "clear retry stack and counter, total counter: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getTotalRetryCounter()I

    move-result p0

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 90
    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 93
    :cond_2
    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getRetryStackAdapter()Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    move-result-object p4

    invoke-virtual {p4, p2}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->searchAndPush(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)Z

    .line 94
    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p2

    const-string p4, "retry_total_counter"

    invoke-virtual {p2, p4}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->removeKey(Ljava/lang/String;)V

    .line 95
    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p2

    const-string p4, "last retry time"

    invoke-virtual {p2, p4}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->removeKey(Ljava/lang/String;)V

    .line 96
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p5, "steady state error screen should be displayed. saving retry instance, total counter: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getTotalRetryCounter()I

    move-result p0

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 96
    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :goto_0
    iget p0, p3, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;->mFailEvent:I

    invoke-interface {p1, p0}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->update(I)Z

    goto/16 :goto_1

    :cond_3
    const-wide/16 v1, 0x0

    if-eqz p5, :cond_4

    .line 106
    invoke-static {p0, p6}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRuleHandling;->increaseTotalRetryCounter(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    .line 107
    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p5

    invoke-virtual {p5}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getTotalRetryCounter()I

    move-result v0

    .line 108
    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p5

    invoke-virtual {p5}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p5

    invoke-interface {p5, v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getAdaptedRetrySchedule(I)I

    move-result p5

    int-to-long v1, p5

    .line 110
    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getRetryStackAdapter()Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    move-result-object p5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p5, v3, v4}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->saveRetryLastFailedTime(J)V

    .line 113
    :cond_4
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p6, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRuleHandling;->TAG:Ljava/lang/String;

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result p6

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RETRY LOGIC::delay from the schedule: "

    invoke-virtual {p6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "RETRY LOGIC::next retry Counter="

    invoke-virtual {p6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "RETRY LOGIC::retry event is "

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p3, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;->mRetryAttr:Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-static {p5, p6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getRetryStackAdapter()Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->searchAndPush(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)Z

    .line 120
    iget-object p0, p3, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;->mRetryAttr:Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;

    sget-object p2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;->RETRY_USE_HEADER_VALUE:Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;

    if-ne p0, p2, :cond_5

    if-lez p4, :cond_5

    int-to-long p4, p4

    const-wide/16 v3, 0x3e8

    mul-long/2addr p4, v3

    .line 122
    invoke-static {v1, v2, p4, p5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 125
    :cond_5
    iget p0, p3, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;->mRetryEvent:I

    invoke-interface {p1, p0, v1, v2}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->updateDelayRetry(IJ)Z

    :goto_1
    return-void
.end method

.method public static handleErrorCode(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V
    .locals 7

    const-string v3, "default_error_type"

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    .line 24
    invoke-static/range {v0 .. v6}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRuleHandling;->handleErrorCode(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;ILcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    return-void
.end method

.method private static handleErrorCode(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;ILcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V
    .locals 9

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRuleHandling;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "retryAfter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " errorCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 49
    invoke-static {p0, p2, p3, p6}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRuleHandling;->findErrorConfig(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    move-result-object p3

    if-nez p3, :cond_0

    const-string p3, "default_error_type"

    .line 51
    invoke-static {p0, p2, p3, p6}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRuleHandling;->findErrorConfig(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    move-result-object p3

    :cond_0
    move-object v5, p3

    .line 55
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed API name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", error code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v6, p4

    move-object v7, p5

    move-object v8, p6

    .line 57
    invoke-static/range {v2 .. v8}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRuleHandling;->handleError(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;ILcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    :cond_1
    return-void
.end method

.method public static handleErrorCode(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V
    .locals 7

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    .line 37
    invoke-static/range {v0 .. v6}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRuleHandling;->handleErrorCode(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;ILcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    return-void
.end method

.method public static handleErrorHeader(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;ILcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V
    .locals 0

    .line 31
    invoke-static/range {p0 .. p6}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRuleHandling;->handleErrorCode(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;ILcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    return-void
.end method

.method private static declared-synchronized increaseTotalRetryCounter(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V
    .locals 1

    const-class p1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRuleHandling;

    monitor-enter p1

    .line 131
    :try_start_0
    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getTotalRetryCounter()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 133
    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveTotalRetryCounter(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0
.end method
