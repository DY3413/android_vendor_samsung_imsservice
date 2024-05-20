.class public Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;
.super Ljava/lang/Object;
.source "WorkflowBell.java"

# interfaces
.implements Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/workflow/WorkflowBell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "FetchHttps"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;


# direct methods
.method protected constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowBell;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 135
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBell;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v2, "FetchHttps:"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 136
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/SharedInfo;->setHttpsDefault()V

    .line 137
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    iget-object v2, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getVersion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "vers"

    invoke-virtual {v2, v3, v1}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    iget-object v2, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mTelephonyAdapter:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getImsi()Ljava/lang/String;

    move-result-object v1

    const-string v4, "IMSI"

    invoke-virtual {v2, v4, v1}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    iget-object v2, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mTelephonyAdapter:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getImei()Ljava/lang/String;

    move-result-object v1

    const-string v4, "IMEI"

    invoke-virtual {v2, v4, v1}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    sget-object v2, Lcom/sec/internal/constants/ims/config/ConfigConstants$BUILD;->TERMINAL_MODEL:Ljava/lang/String;

    const-string/jumbo v4, "terminal_model"

    invoke-virtual {v1, v4, v2}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    iget-object v2, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    .line 142
    iget-object v4, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-static {v4, v1}, Lcom/sec/internal/ims/util/ConfigUtil;->isSecDmaPackageInuse(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "1"

    goto :goto_0

    :cond_0
    const-string v1, "2"

    :goto_0
    const-string v4, "default_sms_app"

    .line 141
    invoke-virtual {v2, v4, v1}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    iget-boolean v2, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mMobileNetwork:Z

    const-string v4, "msisdn"

    if-eqz v2, :cond_1

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getStatusCode()I

    move-result v1

    const/16 v2, 0x1ff

    if-ne v1, v2, :cond_4

    .line 145
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mTelephonyAdapter:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getMsisdn()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 146
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    iget-object v2, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v5, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mTelephonyAdapter:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getMsisdn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->encodeRFC3986(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v4, v1}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/SharedInfo;->getUserMsisdn()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 149
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    iget-object v2, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/SharedInfo;->getUserMsisdn()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->encodeRFC3986(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v4, v1}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    iget-object v2, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mTelephonyAdapter:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getSmsDestPort()Ljava/lang/String;

    move-result-object v1

    const-string v5, "SMS_port"

    invoke-virtual {v2, v5, v1}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    iget-object v2, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getToken()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "token"

    invoke-virtual {v2, v5, v1}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :cond_4
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    const-string/jumbo v2, "terminal_vendor"

    const-string v5, "SEC"

    invoke-virtual {v1, v2, v5}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    iget-object v2, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v5, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    .line 157
    invoke-static {v1}, Lcom/sec/internal/ims/util/ConfigUtil;->getModelName(I)Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lcom/sec/internal/constants/ims/config/ConfigConstants$PVALUE;->TERMINAL_SW_VERSION:Ljava/lang/String;

    const/16 v7, 0x8

    const/4 v8, 0x1

    invoke-virtual {v5, v1, v6, v7, v8}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->getModelInfoFromBuildVersion(Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "terminal_sw_version"

    .line 156
    invoke-virtual {v2, v5, v1}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    iget-boolean v2, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStartForce:Z

    if-eqz v2, :cond_5

    .line 161
    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    const-string v2, "0"

    invoke-virtual {v1, v3, v2}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :cond_5
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getOpMode()Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DORMANT:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    if-ne v1, v2, :cond_6

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DORMANT mode. use backup version :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    invoke-virtual {v5}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getVersionBackup()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getVersionBackup()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->addEventLog(Ljava/lang/String;)V

    .line 167
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    iget-object v2, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getVersionBackup()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :cond_6
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    iget-object v2, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/config/SharedInfo;->setHttpResponse(Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;)V

    .line 172
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_7

    const-string v1, "200 OK received. try parsing"

    .line 173
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Parse;

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Parse;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowBell;)V

    return-object v0

    .line 175
    :cond_7
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getStatusCode()I

    move-result v1

    const/16 v2, 0x193

    if-ne v1, v2, :cond_a

    .line 176
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpParams()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "no msisdn. try to get user"

    .line 177
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->addEventLog(Ljava/lang/String;)V

    .line 179
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/PowerController;->release()V

    .line 180
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    iget-object v2, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mDialog:Lcom/sec/internal/interfaces/ims/config/IDialogAdapter;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mTelephonyAdapter:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getSimCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/sec/internal/interfaces/ims/config/IDialogAdapter;->getMsisdn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 181
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/PowerController;->lock()V

    .line 182
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string/jumbo v1, "user didn\'t enter msisdn finish process"

    .line 183
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Finish;

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowBell;)V

    return-object v0

    .line 186
    :cond_8
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/SharedInfo;->setUserMsisdn(Ljava/lang/String;)V

    .line 189
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Initialize;

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Initialize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowBell;)V

    return-object v0

    .line 191
    :cond_9
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/SharedInfo;->getUserMsisdn()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string/jumbo v1, "wrong MSISDN from USER. try again after AUTO_CONFIG_RETRY_INTERVAL."

    .line 192
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setValidityTimer(I)V

    .line 194
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Finish;

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowBell;)V

    return-object v0

    .line 198
    :cond_a
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    new-instance v1, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Initialize;

    invoke-direct {v1, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Initialize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowBell;)V

    new-instance v2, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    invoke-direct {v2, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowBell;)V

    new-instance v3, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Finish;

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    invoke-direct {v3, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowBell;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->handleResponse2(Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object p0

    return-object p0
.end method
