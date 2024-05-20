.class Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;
.super Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;
.source "WorkflowTS43.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Finish;,
        Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Stop;,
        Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$StoreConfiguration;,
        Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$ParseConfiguration;,
        Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$ParseEapChallenge;,
        Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$ParseContent;,
        Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$WaitingEapChallengeResp;,
        Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$CalcEapChallenge;,
        Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$FetchToKen;,
        Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$FetchEapChallengeResp;,
        Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$FetchEapId;,
        Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Initialize;,
        Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Workflow;
    }
.end annotation


# instance fields
.field protected final MAX_TRY_COUNT:I

.field protected mTryCnt:I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Handler;Ljava/lang/String;)V

    const/4 p1, 0x3

    .line 26
    iput p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->MAX_TRY_COUNT:I

    .line 27
    iput p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->mTryCnt:I

    return-void
.end method


# virtual methods
.method protected doWorkflow()V
    .locals 7

    .line 82
    new-instance v0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Initialize;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Initialize;-><init>(Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;)V

    :goto_0
    if-eqz v0, :cond_3

    .line 83
    iget v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->mTryCnt:I

    if-ltz v1, :cond_3

    const-string v2, "doWorkflow: "

    if-nez v1, :cond_1

    .line 86
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    invoke-virtual {v1}, Lcom/sec/internal/ims/aec/util/HttpStore;->getHttpUrls()Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/aec/util/HttpStore;->setHttpUrl(Ljava/lang/String;)V

    .line 87
    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    invoke-virtual {v1}, Lcom/sec/internal/ims/aec/util/HttpStore;->getHttpUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    new-instance v0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Stop;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Stop;-><init>(Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;)V

    goto :goto_1

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->clearAkaToken()V

    const/4 v1, 0x3

    .line 91
    iput v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->mTryCnt:I

    .line 92
    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    const-string v3, ""

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/aec/util/HttpStore;->setEapChallengeResp(Ljava/lang/String;)V

    .line 93
    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPowerCtrl:Lcom/sec/internal/ims/aec/util/PowerController;

    const-wide/16 v3, 0x1770

    invoke-virtual {v1, v3, v4}, Lcom/sec/internal/ims/aec/util/PowerController;->sleep(J)V

    .line 96
    :cond_1
    :goto_1
    invoke-interface {v0}, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Workflow;->run()Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Workflow;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 104
    new-instance v1, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Stop;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Stop;-><init>(Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;)V

    .line 105
    iget-object v3, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-static {v3, v0, v2}, Lcom/sec/internal/log/AECLog;->e(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_2
    :goto_2
    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 98
    new-instance v1, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Initialize;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Initialize;-><init>(Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;)V

    .line 99
    iget-object v3, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-static {v3, v0, v2}, Lcom/sec/internal/log/AECLog;->e(Ljava/lang/String;Ljava/lang/String;I)V

    .line 100
    iget v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->mTryCnt:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->mTryCnt:I

    if-lez v0, :cond_2

    .line 101
    iget-object v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPowerCtrl:Lcom/sec/internal/ims/aec/util/PowerController;

    const-wide/16 v3, 0x7d0

    rsub-int/lit8 v0, v0, 0x3

    int-to-long v5, v0

    mul-long/2addr v5, v3

    invoke-virtual {v2, v5, v6}, Lcom/sec/internal/ims/aec/util/PowerController;->sleep(J)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method protected getHttpGetResponse(Ljava/lang/String;)Lcom/sec/internal/ims/aec/util/HttpClient$Response;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpClient:Lcom/sec/internal/ims/aec/util/HttpClient;

    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    invoke-virtual {v1}, Lcom/sec/internal/ims/aec/util/HttpStore;->getHttpHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/aec/util/HttpClient;->setHeaders(Ljava/util/Map;)V

    .line 63
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpClient:Lcom/sec/internal/ims/aec/util/HttpClient;

    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    invoke-virtual {v1}, Lcom/sec/internal/ims/aec/util/HttpStore;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/aec/util/HttpClient;->setHostName(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpClient:Lcom/sec/internal/ims/aec/util/HttpClient;

    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    invoke-virtual {v1}, Lcom/sec/internal/ims/aec/util/HttpStore;->getHttpParams()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/aec/util/HttpClient;->setParams(Ljava/util/Map;)V

    .line 65
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpClient:Lcom/sec/internal/ims/aec/util/HttpClient;

    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/internal/ims/aec/util/DataConnectivity;->isWifiConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPsDataOffExempt:Lcom/sec/internal/ims/aec/util/PsDataOffExempt;

    invoke-virtual {v1}, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->getNetwork()Landroid/net/Network;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/aec/util/HttpClient;->setNetwork(Landroid/net/Network;)V

    .line 66
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpClient:Lcom/sec/internal/ims/aec/util/HttpClient;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/aec/util/HttpClient;->getURLConnection(Ljava/lang/String;)Lcom/sec/internal/ims/aec/util/HttpClient$Response;

    move-result-object p1

    .line 67
    iget-object p0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpClient:Lcom/sec/internal/ims/aec/util/HttpClient;

    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/util/HttpClient;->closeURLConnection()V

    return-object p1
.end method

.method protected getHttpPostResponse(Ljava/lang/String;)Lcom/sec/internal/ims/aec/util/HttpClient$Response;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpClient:Lcom/sec/internal/ims/aec/util/HttpClient;

    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    invoke-virtual {v1}, Lcom/sec/internal/ims/aec/util/HttpStore;->getHttpHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/aec/util/HttpClient;->setHeaders(Ljava/util/Map;)V

    .line 73
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpClient:Lcom/sec/internal/ims/aec/util/HttpClient;

    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    invoke-virtual {v1}, Lcom/sec/internal/ims/aec/util/HttpStore;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/aec/util/HttpClient;->setHostName(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpClient:Lcom/sec/internal/ims/aec/util/HttpClient;

    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    invoke-virtual {v1}, Lcom/sec/internal/ims/aec/util/HttpStore;->getHttpPostData()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/aec/util/HttpClient;->setPostData(Lorg/json/JSONObject;)V

    .line 75
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpClient:Lcom/sec/internal/ims/aec/util/HttpClient;

    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/internal/ims/aec/util/DataConnectivity;->isWifiConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPsDataOffExempt:Lcom/sec/internal/ims/aec/util/PsDataOffExempt;

    invoke-virtual {v1}, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->getNetwork()Landroid/net/Network;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/aec/util/HttpClient;->setNetwork(Landroid/net/Network;)V

    .line 76
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpClient:Lcom/sec/internal/ims/aec/util/HttpClient;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/aec/util/HttpClient;->postURLConnection(Ljava/lang/String;)Lcom/sec/internal/ims/aec/util/HttpClient$Response;

    move-result-object p1

    .line 77
    iget-object p0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpClient:Lcom/sec/internal/ims/aec/util/HttpClient;

    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/util/HttpClient;->closeURLConnection()V

    return-object p1
.end method

.method protected handleNotOkResponse(I)Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Workflow;
    .locals 6

    .line 111
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleNotOkResponse: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 112
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleNotOkResponse["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->mTryCnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->add(Ljava/lang/String;)V

    .line 114
    new-instance v0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Initialize;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Initialize;-><init>(Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;)V

    const/4 v1, 0x0

    .line 115
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->setValidEntitlement(Z)V

    const/16 v2, 0x190

    if-eq p1, v2, :cond_4

    const/16 v2, 0x19f

    if-eq p1, v2, :cond_4

    const/16 v2, 0x1f4

    if-eq p1, v2, :cond_4

    const/16 v2, 0x1f7

    if-eq p1, v2, :cond_1

    const/16 v1, 0x1ff

    const/4 v2, 0x3

    if-eq p1, v1, :cond_0

    const/16 v1, 0x193

    if-eq p1, v1, :cond_4

    const/16 v1, 0x194

    if-eq p1, v1, :cond_4

    .line 165
    iget p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->mTryCnt:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->mTryCnt:I

    if-lez p1, :cond_5

    .line 166
    iget-object p0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPowerCtrl:Lcom/sec/internal/ims/aec/util/PowerController;

    const-wide/16 v3, 0x7d0

    sub-int/2addr v2, p1

    int-to-long v1, v2

    mul-long/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/aec/util/PowerController;->sleep(J)V

    goto/16 :goto_1

    .line 119
    :cond_0
    iput v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->mTryCnt:I

    .line 120
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->clearAkaToken()V

    .line 121
    new-instance v0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$FetchEapId;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$FetchEapId;-><init>(Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;)V

    goto/16 :goto_1

    .line 137
    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    invoke-virtual {p1}, Lcom/sec/internal/ims/aec/util/HttpStore;->getHttpResponse()Lcom/sec/internal/ims/aec/util/HttpClient$Response;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/aec/util/HttpClient$Response;->getHeader()Ljava/util/Map;

    move-result-object p1

    const-string v2, "Retry-After"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v2, "[0-9]+"

    .line 138
    invoke-virtual {p1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 139
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    int-to-long v1, p1

    goto :goto_0

    .line 142
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    invoke-virtual {v2}, Lcom/sec/internal/ims/aec/util/HttpStore;->getHttpResponse()Lcom/sec/internal/ims/aec/util/HttpClient$Response;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/aec/util/HttpClient$Response;->getHeader()Ljava/util/Map;

    move-result-object v2

    const-string v3, "Date"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 143
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "EEE, dd MMM yyyy HH:mm:ss ZZZZ"

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 144
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 145
    invoke-virtual {v2, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 146
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 147
    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 148
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    sub-long v1, v4, v1

    :goto_0
    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-gtz p1, :cond_3

    const-wide/16 v1, 0xa

    .line 153
    :cond_3
    iget p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->mTryCnt:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->mTryCnt:I

    if-lez p1, :cond_5

    .line 154
    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Retry-After: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " sec"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-static {p1, v3, v4}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 155
    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPowerCtrl:Lcom/sec/internal/ims/aec/util/PowerController;

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-virtual {p1, v1, v2}, Lcom/sec/internal/ims/aec/util/PowerController;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 158
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Retry-After Header: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/AECLog;->e(Ljava/lang/String;Ljava/lang/String;I)V

    .line 159
    new-instance v0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Finish;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Finish;-><init>(Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;)V

    goto :goto_1

    .line 129
    :cond_4
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->clearAkaToken()V

    .line 130
    new-instance v0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Finish;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Finish;-><init>(Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;)V

    :cond_5
    :goto_1
    return-object v0
.end method

.method protected requestEntitlement(I)V
    .locals 4

    .line 39
    iget v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getEntitlementDomain()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    .line 40
    invoke-virtual {v2}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getEntitlementPort()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v3}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getEntitlementPath()Ljava/lang/String;

    move-result-object v3

    .line 39
    invoke-static {v0, v1, v2, v3}, Lcom/sec/internal/ims/aec/util/URLExtractor;->getUrl(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-ltz p1, :cond_3

    .line 41
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {p1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getAppId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 42
    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPowerCtrl:Lcom/sec/internal/ims/aec/util/PowerController;

    const-wide/32 v1, 0x15f90

    invoke-virtual {p1, v1, v2}, Lcom/sec/internal/ims/aec/util/PowerController;->lock(J)V

    .line 43
    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    invoke-virtual {p1}, Lcom/sec/internal/ims/aec/util/HttpStore;->getHttpUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 44
    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getEntitlementVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/aec/util/HttpStore;->setUserAgent(Ljava/lang/String;)V

    .line 45
    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    invoke-static {v0}, Lcom/sec/internal/ims/aec/util/URLExtractor;->getHostName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/aec/util/HttpStore;->setHostName(Ljava/lang/String;)V

    .line 46
    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {p1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getSNIInHeader()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 47
    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/aec/util/HttpStore;->setHttpUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 49
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    iget v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    .line 50
    iget-object v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/internal/ims/aec/util/DataConnectivity;->isWifiConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPsDataOffExempt:Lcom/sec/internal/ims/aec/util/PsDataOffExempt;

    invoke-virtual {v2}, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->getNetwork()Landroid/net/Network;

    move-result-object v2

    .line 49
    :goto_0
    invoke-static {v1, v0, v2}, Lcom/sec/internal/ims/aec/util/URLExtractor;->getIpAddress(ILjava/lang/String;Landroid/net/Network;)Ljava/util/Queue;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/aec/util/HttpStore;->setHttpUrls(Ljava/util/Queue;)V

    .line 51
    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    invoke-virtual {p1}, Lcom/sec/internal/ims/aec/util/HttpStore;->getHttpUrls()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/aec/util/HttpStore;->setHttpUrl(Ljava/lang/String;)V

    .line 54
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->doWorkflow()V

    .line 55
    iget-object p0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPowerCtrl:Lcom/sec/internal/ims/aec/util/PowerController;

    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/util/PowerController;->release()V

    goto :goto_2

    :cond_3
    const/16 p1, 0x3ea

    .line 57
    iget v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getHttpResponse()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_2
    return-void
.end method
