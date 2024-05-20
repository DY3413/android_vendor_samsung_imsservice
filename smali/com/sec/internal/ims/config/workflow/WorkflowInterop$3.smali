.class Lcom/sec/internal/ims/config/workflow/WorkflowInterop$3;
.super Lcom/sec/internal/ims/config/workflow/WorkflowBase$FetchHttps;
.source "WorkflowInterop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowInterop;)V
    .locals 0

    .line 330
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$FetchHttps;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowBase;)V

    return-void
.end method


# virtual methods
.method public run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 333
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v2, "FetchHttps:"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 334
    invoke-super {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$FetchHttps;->run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object p0

    return-object p0
.end method

.method protected setHttps()V
    .locals 7

    .line 339
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->setHttpsDefault()V

    .line 340
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    iget v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v0

    .line 342
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    iget-object v2, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mTelephonyAdapter:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v1, v0}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "IMSI"

    invoke-virtual {v2, v1, v0}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    iget-object v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v2, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mTelephonyAdapter:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    iget v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-interface {v2, v0}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getDeviceId(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "IMEI"

    invoke-virtual {v1, v2, v0}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    iget-object v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    .line 346
    iget-object v2, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    iget v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-static {v2, v0}, Lcom/sec/internal/ims/util/ConfigUtil;->isSecDmaPackageInuse(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    goto :goto_0

    :cond_0
    const-string v0, "2"

    :goto_0
    const-string v2, "default_sms_app"

    .line 345
    invoke-virtual {v1, v2, v0}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    iget-boolean v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mMobileNetwork:Z

    if-eqz v1, :cond_1

    iget v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mHttpResponse:I

    const/16 v2, 0x1ff

    if-ne v1, v2, :cond_4

    .line 350
    :cond_1
    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mTelephonyAdapter:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    .line 351
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "msisdn"

    if-nez v1, :cond_2

    .line 352
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "use msisdn from telephony"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    iget-object v3, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->encodeRFC3986(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getUserMsisdn()Ljava/lang/String;

    move-result-object v0

    .line 356
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 357
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "use msisdn from sharedInfo"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    iget-object v3, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->encodeRFC3986(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    iget-object v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/ims/util/ConfigUtil;->getSmsPort(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "SMS_port"

    invoke-virtual {v1, v2, v0}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x13020301

    .line 362
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    iget v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",OSP:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    iget v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/internal/ims/util/ConfigUtil;->getSmsPort(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 363
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    iget-object v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getToken()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "token"

    invoke-virtual {v1, v2, v0}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    const-string/jumbo v1, "terminal_vendor"

    const-string v2, "SEC"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    sget-object v1, Lcom/sec/internal/constants/ims/config/ConfigConstants$PVALUE;->TERMINAL_MODEL:Ljava/lang/String;

    const-string/jumbo v3, "terminal_model"

    invoke-virtual {v0, v3, v1}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    iget-object v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v3, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    iget v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    .line 369
    invoke-static {v0}, Lcom/sec/internal/ims/util/ConfigUtil;->getModelName(I)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/sec/internal/constants/ims/config/ConfigConstants$PVALUE;->TERMINAL_SW_VERSION:Ljava/lang/String;

    const/16 v5, 0x8

    const/4 v6, 0x1

    .line 368
    invoke-virtual {v3, v0, v4, v5, v6}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->getModelInfoFromBuildVersion(Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "terminal_sw_version"

    invoke-virtual {v1, v3, v0}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    const-string v1, "client_vendor"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mClientPlatform:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mClientVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "client_version"

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    const-string v1, "rcs_version"

    const-string v2, "7.0"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    const-string v1, "rcs_profile"

    const-string v2, "UP_2.0-b1"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    const-string v1, "provisioning_version"

    const-string v2, "4.0"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->convertRcsStateWithSpecificParam()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->setRcsState(Ljava/lang/String;)V

    .line 379
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    iget-object v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->getRcsState()Ljava/lang/String;

    move-result-object v0

    const-string v2, "rcs_state"

    invoke-virtual {v1, v2, v0}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    iget-boolean v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStartForce:Z

    const-string/jumbo v1, "vers"

    if-eqz v0, :cond_5

    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_RCS_BY_USER:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->getRcsState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 381
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->LOG_TAG:Ljava/lang/String;

    const-string v2, "mStartForce: true, vers: 0"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getOpMode()Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v0

    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DORMANT:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    if-ne v0, v2, :cond_6

    .line 385
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "use backup version in case of dormant, vers: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    invoke-virtual {v3}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getVersionBackup()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getVersionBackup()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-void
.end method
