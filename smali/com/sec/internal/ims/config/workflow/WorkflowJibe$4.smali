.class Lcom/sec/internal/ims/config/workflow/WorkflowJibe$4;
.super Lcom/sec/internal/ims/config/workflow/WorkflowBase$FetchHttps;
.source "WorkflowJibe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowJibe;)V
    .locals 0

    .line 623
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$FetchHttps;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowBase;)V

    return-void
.end method


# virtual methods
.method public run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 626
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v2, "FetchHttps:"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 627
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget-object v2, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-static {v2, v1}, Lcom/sec/internal/ims/util/ConfigUtil;->getGmsVersion(Landroid/content/Context;I)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/16 v2, 0x8

    if-nez v1, :cond_0

    .line 628
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v3, "GmsVersion is invalid."

    invoke-static {v0, v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 629
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    invoke-static {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->-$$Nest$mretryConfigAfterTime(Lcom/sec/internal/ims/config/workflow/WorkflowJibe;)V

    .line 630
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object p0

    return-object p0

    .line 632
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget-object v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    iget v3, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->getRcsState()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v3, v0}, Lcom/sec/internal/ims/util/ConfigUtil;->isIidTokenNeeded(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIidToken:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 633
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    invoke-static {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->-$$Nest$mgetIidToken(Lcom/sec/internal/ims/config/workflow/WorkflowJibe;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIidToken:Ljava/lang/String;

    .line 634
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget-object v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIidToken:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->-$$Nest$misIidTokenInvalid(Lcom/sec/internal/ims/config/workflow/WorkflowJibe;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 635
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIidToken:Ljava/lang/String;

    .line 636
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object p0

    return-object p0

    .line 638
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    const/4 v1, 0x0

    iput v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIidTokenRetryLimit:I

    .line 640
    :cond_3
    invoke-super {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$FetchHttps;->run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object p0

    return-object p0
.end method

.method protected setHttps()V
    .locals 7

    .line 646
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget-object v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    const/16 v3, 0x1ff

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v1, v2, :cond_0

    .line 647
    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->setHttpsSPR()V

    goto :goto_0

    .line 649
    :cond_0
    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->setHttpsDefault()V

    .line 651
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v0

    .line 652
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isOrange()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsPreConsent(I)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 653
    invoke-virtual {v0}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getStatusCode()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 654
    invoke-virtual {v0}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getHeader()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getHeader()Ljava/util/Map;

    move-result-object v1

    const-string v2, "Set-Cookie"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v4, v5

    :cond_1
    if-eqz v4, :cond_2

    .line 656
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mCookieHandler:Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;->handleCookie(Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;)V

    .line 660
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v0

    .line 662
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget-object v2, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mTelephonyAdapter:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v1, v0}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "IMSI"

    invoke-virtual {v2, v1, v0}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget-object v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v2, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mTelephonyAdapter:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    iget v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-interface {v2, v0}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getDeviceId(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "IMEI"

    invoke-virtual {v1, v2, v0}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget-object v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    .line 666
    iget-object v2, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    iget v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-static {v2, v0}, Lcom/sec/internal/ims/util/ConfigUtil;->isSecDmaPackageInuse(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "1"

    goto :goto_1

    :cond_3
    const-string v0, "2"

    :goto_1
    const-string v2, "default_sms_app"

    .line 665
    invoke-virtual {v1, v2, v0}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget-boolean v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mMobileNetwork:Z

    if-nez v1, :cond_4

    iget-boolean v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsMobileConfigNeeded:Z

    if-eqz v1, :cond_5

    :cond_4
    iget v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mHttpResponse:I

    if-ne v1, v3, :cond_8

    :cond_5
    if-nez v4, :cond_7

    .line 671
    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mTelephonyAdapter:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    .line 672
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "msisdn"

    if-nez v1, :cond_6

    invoke-static {v0}, Lcom/sec/internal/ims/util/ConfigUtil;->isValidMsisdn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 673
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "use msisdn from telephony"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget-object v3, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->encodeRFC3986(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    :cond_6
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getUserMsisdn()Ljava/lang/String;

    move-result-object v0

    .line 677
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 678
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "use msisdn from sharedInfo"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget-object v3, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->encodeRFC3986(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    :cond_7
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget-object v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/ims/util/ConfigUtil;->getSmsPort(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "SMS_port"

    invoke-virtual {v1, v2, v0}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x13020301

    .line 683
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",OSP:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/internal/ims/util/ConfigUtil;->getSmsPort(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 684
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget-object v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getToken()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "token"

    invoke-virtual {v1, v2, v0}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    :cond_8
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    const-string/jumbo v1, "terminal_vendor"

    const-string v2, "SEC"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    sget-object v1, Lcom/sec/internal/constants/ims/config/ConfigConstants$PVALUE;->TERMINAL_MODEL:Ljava/lang/String;

    const-string/jumbo v3, "terminal_model"

    invoke-virtual {v0, v3, v1}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget-object v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v3, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    iget v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    .line 690
    invoke-static {v0}, Lcom/sec/internal/ims/util/ConfigUtil;->getModelName(I)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/sec/internal/constants/ims/config/ConfigConstants$PVALUE;->TERMINAL_SW_VERSION:Ljava/lang/String;

    const/16 v6, 0x8

    .line 689
    invoke-virtual {v3, v0, v4, v6, v5}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->getModelInfoFromBuildVersion(Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "terminal_sw_version"

    invoke-virtual {v1, v3, v0}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    const-string v1, "client_vendor"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mClientPlatform:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mClientVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "client_version"

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget-object v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mRcsVersion:Ljava/lang/String;

    const-string v2, "rcs_version"

    invoke-virtual {v1, v2, v0}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isOrange()Z

    move-result v0

    const-string v1, "rcs_profile"

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget-object v2, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    iget v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-static {v2, v0}, Lcom/sec/internal/ims/util/ConfigUtil;->getGlobalGcEnabled(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 698
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rcsProfile read and used for Orange: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget-object v3, v3, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mRcsUPProfile:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget-object v2, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mRcsUPProfile:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 701
    :cond_9
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    const-string v2, "set rcs_profile to UP_T-b1 for A2P"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    const-string v2, "UP_T-b1"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    :goto_2
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget-object v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mRcsProvisioningVersion:Ljava/lang/String;

    const-string v2, "provisioning_version"

    invoke-virtual {v1, v2, v0}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->convertRcsStateWithSpecificParam()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->setRcsState(Ljava/lang/String;)V

    .line 707
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget-object v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->getRcsState()Ljava/lang/String;

    move-result-object v0

    const-string v2, "rcs_state"

    invoke-virtual {v1, v2, v0}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget-object v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getVersion()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "vers"

    invoke-virtual {v1, v2, v0}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget-boolean v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStartForce:Z

    if-eqz v0, :cond_a

    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_RCS_BY_USER:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->getRcsState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 710
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    const-string v1, "mStartForce: true, vers: 0"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    const-string v1, "0"

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    :cond_a
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getOpMode()Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DORMANT:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    if-ne v0, v1, :cond_b

    .line 714
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "use backup version in case of dormant, vers: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    invoke-virtual {v3}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getVersionBackup()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget-object v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getVersionBackup()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    :cond_b
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIidToken:Ljava/lang/String;

    if-eqz v0, :cond_c

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 719
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 720
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIidToken:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 721
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    const-string v2, "gmscore_instance_id_token"

    invoke-virtual {v1, v2, v0}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpHeader(Ljava/lang/String;Ljava/util/List;)V

    .line 722
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIidToken:Ljava/lang/String;

    :cond_c
    return-void
.end method
