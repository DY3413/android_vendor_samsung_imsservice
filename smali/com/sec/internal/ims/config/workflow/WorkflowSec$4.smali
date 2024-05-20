.class Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;
.super Lcom/sec/internal/ims/config/workflow/WorkflowBase$FetchHttps;
.source "WorkflowSec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/config/workflow/WorkflowSec;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowSec;)V
    .locals 0

    .line 434
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

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

    .line 437
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v2, "FetchHttps:"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 438
    invoke-super {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$FetchHttps;->run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object p0

    return-object p0
.end method

.method protected setHttps()V
    .locals 9

    .line 443
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->setHttpsDefault()V

    .line 444
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->isConfigProxy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->changeConfigProxyUriForHttp()V

    .line 446
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->setHttpProxyDefault()V

    .line 448
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FetchHttps: NetType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mTelephonyAdapter:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getNetType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Identity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget-object v3, v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mTelephonyAdapter:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    iget v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    .line 449
    invoke-interface {v3, v2}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getIdentityByPhoneId(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", SipUri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mTelephonyAdapter:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    .line 450
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getSipUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 448
    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget-object v2, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    .line 453
    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getVersion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "vers"

    .line 452
    invoke-virtual {v2, v3, v1}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget-object v2, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mTelephonyAdapter:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getImsi()Ljava/lang/String;

    move-result-object v1

    const-string v4, "IMSI"

    invoke-virtual {v2, v4, v1}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget-object v2, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mTelephonyAdapter:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getImei()Ljava/lang/String;

    move-result-object v1

    const-string v4, "IMEI"

    invoke-virtual {v2, v4, v1}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    sget-object v2, Lcom/sec/internal/constants/ims/config/ConfigConstants$BUILD;->TERMINAL_MODEL:Ljava/lang/String;

    const-string/jumbo v4, "terminal_model"

    invoke-virtual {v1, v4, v2}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget-object v2, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    .line 459
    iget-object v4, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-static {v4, v1}, Lcom/sec/internal/ims/util/ConfigUtil;->isSecDmaPackageInuse(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "1"

    goto :goto_0

    :cond_1
    const-string v1, "2"

    :goto_0
    const-string v4, "default_sms_app"

    .line 458
    invoke-virtual {v2, v4, v1}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget-boolean v2, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mMobileNetwork:Z

    if-eqz v2, :cond_2

    iget v2, v1, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->mHttpResponse:I

    const/16 v4, 0x1ff

    if-ne v2, v4, :cond_7

    .line 464
    :cond_2
    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mTelephonyAdapter:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getMsisdn()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    const-string v4, "IMSI_"

    const-string v5, "msisdn"

    if-nez v1, :cond_3

    .line 465
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget-object v6, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v7, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mTelephonyAdapter:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    .line 466
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getMsisdn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->encodeRFC3986(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 465
    invoke-virtual {v6, v5, v1}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    const-string v1, "FetchHttps: MSISDN is null, using the PAU"

    .line 468
    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget v6, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget v8, v8, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    .line 471
    invoke-static {v8}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getImsiFromPhoneId(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "msisdn_from_pau"

    .line 469
    invoke-static {v6, v1, v8, v7, v2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getString(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 472
    iget-object v6, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": pauFromSP"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->addEventLog(Ljava/lang/String;)V

    .line 473
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pauFromSP: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    const v6, 0x13020502

    .line 474
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget v8, v8, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "PAU_FROM_SP"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 475
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 476
    iget-object v6, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget-object v7, v6, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v6, v6, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    .line 477
    invoke-virtual {v6, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->encodeRFC3986(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 476
    invoke-virtual {v7, v5, v1}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/SharedInfo;->getUserMsisdn()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 482
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget-object v6, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    .line 483
    invoke-virtual {v6}, Lcom/sec/internal/ims/config/SharedInfo;->getUserMsisdn()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->encodeRFC3986(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 482
    invoke-virtual {v6, v5, v1}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    :cond_5
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget-object v5, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/internal/ims/util/ConfigUtil;->getSmsPort(I)Ljava/lang/String;

    move-result-object v1

    const-string v6, "SMS_port"

    invoke-virtual {v5, v6, v1}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getToken()Ljava/lang/String;

    move-result-object v1

    .line 488
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 491
    iget-object v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget v6, v5, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    iget-object v5, v5, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget v4, v4, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    .line 493
    invoke-static {v4}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getImsiFromPhoneId(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "validrcsconfig"

    .line 491
    invoke-static {v6, v5, v7, v4, v2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getString(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 494
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string/jumbo v1, "use last valid token"

    .line 495
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 499
    :cond_6
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    const-string/jumbo v4, "token"

    invoke-virtual {v2, v4, v1}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    :cond_7
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    const-string/jumbo v2, "terminal_vendor"

    const-string v4, "SEC"

    invoke-virtual {v1, v2, v4}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget-object v2, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v4, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    .line 505
    invoke-static {v1}, Lcom/sec/internal/ims/util/ConfigUtil;->getModelName(I)Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lcom/sec/internal/constants/ims/config/ConfigConstants$PVALUE;->TERMINAL_SW_VERSION:Ljava/lang/String;

    const/16 v6, 0x8

    const/4 v7, 0x1

    invoke-virtual {v4, v1, v5, v6, v7}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->getModelInfoFromBuildVersion(Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "terminal_sw_version"

    .line 504
    invoke-virtual {v2, v4, v1}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget-object v2, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mRcsVersion:Ljava/lang/String;

    const-string v4, "rcs_version"

    invoke-virtual {v2, v4, v1}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    const-string v2, "rcs_profile"

    const-string v4, "UP_1.0"

    invoke-virtual {v1, v2, v4}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    const-string v2, "provisioning_version"

    const-string v4, "2.0"

    invoke-virtual {v1, v2, v4}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->convertRcsStateWithSpecificParam()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->setRcsState(Ljava/lang/String;)V

    .line 512
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget-object v2, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->getRcsState()Ljava/lang/String;

    move-result-object v1

    const-string v4, "rcs_state"

    invoke-virtual {v2, v4, v1}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget-boolean v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStartForce:Z

    if-eqz v1, :cond_8

    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_RCS_BY_USER:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->getRcsState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "mStartForce: true, vers: 0"

    .line 515
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    const-string v2, "0"

    invoke-virtual {v1, v3, v2}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    :cond_8
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getOpMode()Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DORMANT:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    if-ne v1, v2, :cond_9

    .line 520
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "use backup version in case of dormant, vers: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getVersionBackup()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getVersionBackup()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v3, p0}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void
.end method
