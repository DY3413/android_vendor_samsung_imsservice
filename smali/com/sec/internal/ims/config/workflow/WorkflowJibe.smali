.class public Lcom/sec/internal/ims/config/workflow/WorkflowJibe;
.super Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;
.source "WorkflowJibe.java"


# static fields
.field protected static final BADREQERR_RETRY_AFTER_TIME:I = 0xa8c0

.field protected static final HTTPERR_RETRY_AFTER_TIME:I = 0xa

.field protected static final HTTPERR_TRY_MAX_COUNT:I = 0x2

.field protected static final IIDTOKENERR_RETRY_AFTER_TIME:I = 0x3c

.field protected static final IIDTOKENERR_RETRY_LIMIT:I = 0x3

.field protected static final LOG_TAG:Ljava/lang/String;

.field protected static final MSISDN_TRY_MAX_COUNT:I = 0x1

.field protected static final MSISDN_TRY_MAX_COUNT_NON_GC:I = 0x3

.field protected static final OTP_SMS_BINARY_TYPE:Ljava/lang/String; = "binary"

.field protected static final OTP_SMS_TEXT_TYPE:Ljava/lang/String; = "text"

.field protected static final OTP_SMS_TIME_OUT:I = 0x2bc


# instance fields
.field protected m503ErrCount:I

.field protected m511ErrCount:I

.field protected mAuthHiddenTryCount:I

.field protected mAuthTryCount:I

.field protected mHttpResponse:I

.field protected mIidToken:Ljava/lang/String;

.field protected mIidTokenRetryLimit:I

.field protected mIsEnrichedHeaderFailed:Z

.field protected mIsMobileConfigCompleted:Z

.field protected mIsMobileConfigNeeded:Z

.field protected mIsMobileConnected:Z

.field protected mIsMobileRequested:Z

.field protected mIsWifiConnected:Z

.field final mMobileStateCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field protected mMsisdnTryCount:I


# direct methods
.method static bridge synthetic -$$Nest$mgetIidToken(Lcom/sec/internal/ims/config/workflow/WorkflowJibe;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->getIidToken()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misIidTokenInvalid(Lcom/sec/internal/ims/config/workflow/WorkflowJibe;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->isIidTokenInvalid(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mretryConfigAfterTime(Lcom/sec/internal/ims/config/workflow/WorkflowJibe;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->retryConfigAfterTime()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 59
    const-class v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Lcom/sec/internal/constants/Mno;I)V
    .locals 12

    move-object v11, p0

    move-object v2, p2

    move-object v3, p3

    move/from16 v10, p5

    .line 87
    new-instance v5, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;

    invoke-direct {v5, p2, p3, v10}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceJibe;-><init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;I)V

    new-instance v6, Lcom/sec/internal/ims/config/adapters/StorageAdapter;

    invoke-direct {v6}, Lcom/sec/internal/ims/config/adapters/StorageAdapter;-><init>()V

    new-instance v7, Lcom/sec/internal/ims/config/adapters/HttpAdapterJibeAndSec;

    invoke-direct {v7, v10}, Lcom/sec/internal/ims/config/adapters/HttpAdapterJibeAndSec;-><init>(I)V

    new-instance v8, Lcom/sec/internal/ims/config/adapters/XmlParserAdapter;

    invoke-direct {v8}, Lcom/sec/internal/ims/config/adapters/XmlParserAdapter;-><init>()V

    new-instance v9, Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    invoke-direct {v9, p2, p3, v10}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;-><init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;I)V

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v4, p4

    invoke-direct/range {v0 .. v10}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Lcom/sec/internal/constants/Mno;Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;Lcom/sec/internal/interfaces/ims/config/IXmlParserAdapter;Lcom/sec/internal/interfaces/ims/config/IDialogAdapter;I)V

    const/4 v0, 0x0

    .line 71
    iput-boolean v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsMobileRequested:Z

    .line 72
    iput-boolean v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsMobileConnected:Z

    .line 73
    iput-boolean v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsWifiConnected:Z

    .line 74
    iput-boolean v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsMobileConfigNeeded:Z

    .line 75
    iput-boolean v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsMobileConfigCompleted:Z

    .line 76
    iput-boolean v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsEnrichedHeaderFailed:Z

    const/4 v1, 0x0

    .line 77
    iput-object v1, v11, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIidToken:Ljava/lang/String;

    .line 78
    iput v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIidTokenRetryLimit:I

    .line 79
    iput v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mHttpResponse:I

    .line 80
    iput v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mAuthTryCount:I

    .line 81
    iput v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mAuthHiddenTryCount:I

    .line 82
    iput v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mMsisdnTryCount:I

    .line 83
    iput v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->m511ErrCount:I

    .line 84
    iput v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->m503ErrCount:I

    .line 202
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$1;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowJibe;)V

    iput-object v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mMobileStateCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    return-void
.end method

.method private getIidToken()Ljava/lang/String;
    .locals 4

    .line 527
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    const-string v1, "need iid token from telephony/application"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/PowerController;->release()V

    .line 529
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mTelephonyAdapter:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getIidToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "receive iid token from telephony/application"

    .line 530
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "iidToken: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/PowerController;->lock()V

    return-object v1
.end method

.method private getMsisdnForGc()Ljava/lang/String;
    .locals 4

    .line 539
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mMsisdnHandler:Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->getMsisdnSkipCount()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 540
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mMsisdnHandler:Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->setMsisdnSkipCount(I)V

    .line 542
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/PowerController;->release()V

    .line 543
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mMsisdnHandler:Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->getLastMsisdnValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 544
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mDialog:Lcom/sec/internal/interfaces/ims/config/IDialogAdapter;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mTelephonyAdapter:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getSimCountryCode()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mMsisdnHandler:Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->getLastMsisdnValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/interfaces/ims/config/IDialogAdapter;->getMsisdn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 546
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mDialog:Lcom/sec/internal/interfaces/ims/config/IDialogAdapter;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mTelephonyAdapter:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getSimCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/config/IDialogAdapter;->getMsisdn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 548
    :goto_0
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "msisdn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/PowerController;->lock()V

    return-object v0
.end method

.method private getMsisdnForJibe()Ljava/lang/String;
    .locals 4

    .line 484
    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mMsisdnTryCount:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    add-int/2addr v0, v1

    .line 485
    iput v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mMsisdnTryCount:I

    .line 486
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    const-string v1, "need msisdn from telephony/application"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/PowerController;->release()V

    .line 488
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mTelephonyAdapter:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getMsisdnNumber()Ljava/lang/String;

    move-result-object v1

    const-string v2, "receive msisdn from telephony/application"

    .line 489
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "msisdn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/PowerController;->lock()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method private isIidTokenInvalid(Ljava/lang/String;)Z
    .locals 2

    if-eqz p1, :cond_1

    const-string v0, ""

    .line 502
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 503
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "iidToken is null or empty"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->addEventLog(Ljava/lang/String;)V

    .line 504
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "retry after 60 sec, IIDTOKENERR_RETRY_LIMIT is "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIidTokenRetryLimit:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    iget p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIidTokenRetryLimit:I

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-ge p1, v0, :cond_2

    add-int/2addr p1, v1

    .line 506
    iput p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIidTokenRetryLimit:I

    const/16 p1, 0x3c

    .line 507
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setValidityTimer(I)V

    .line 508
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setNextAutoconfigTimeAfter(I)V

    :cond_2
    return v1
.end method

.method private isMsisdnForGcNeeded()Z
    .locals 2

    .line 497
    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mMsisdnTryCount:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsPreConsent(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mMno:Lcom/sec/internal/constants/Mno;

    .line 498
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isEmeasewaoce()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v0, Lcom/sec/internal/constants/Mno;->CLARO_DOMINICAN:Lcom/sec/internal/constants/Mno;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private retryConfigAfterTime()V
    .locals 3

    .line 516
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "retry after 60 sec, IIDTOKENERR_RETRY_LIMIT is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIidTokenRetryLimit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIidTokenRetryLimit:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 518
    iput v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIidTokenRetryLimit:I

    const/16 v0, 0x3c

    .line 519
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setValidityTimer(I)V

    .line 520
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setNextAutoconfigTimeAfter(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected endAutoConfig(Z)V
    .locals 0

    .line 288
    invoke-super {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->endAutoConfig(Z)V

    const/4 p1, 0x0

    .line 290
    iput-boolean p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsMobileRequested:Z

    .line 291
    iput-boolean p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsMobileConnected:Z

    .line 292
    iput-boolean p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsMobileConfigNeeded:Z

    return-void
.end method

.method protected getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;
    .locals 3

    .line 339
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v2, "getHttpResponse"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 340
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mHttp:Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;->close()Z

    .line 341
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mHttp:Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpHeaders()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;->setHeaders(Ljava/util/Map;)V

    .line 342
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mHttp:Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpParams()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;->setParams(Ljava/util/Map;)V

    .line 343
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mHttp:Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;->setContext(Landroid/content/Context;)V

    .line 345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsMobileConfigNeeded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsMobileConfigNeeded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsMobileRequested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsMobileRequested:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsMobileConnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsMobileConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-boolean v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsMobileConfigNeeded:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsMobileRequested:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsMobileConnected:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 349
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->checkMobileConnection(Landroid/net/ConnectivityManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "set network to mobile network"

    .line 350
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mHttp:Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mNetwork:Landroid/net/Network;

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;->setNetwork(Landroid/net/Network;)V

    goto :goto_0

    :cond_0
    const-string v1, "set network to default network"

    .line 353
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mHttp:Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;->setNetwork(Landroid/net/Network;)V

    .line 356
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mHttp:Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;->open(Ljava/lang/String;)Z

    .line 357
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mHttp:Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;->request()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v0

    .line 358
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mHttp:Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;->close()Z

    return-object v0
.end method

.method protected getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 2

    packed-switch p1, :pswitch_data_0

    .line 836
    sget-object p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNextWorkflow: Unexpected type ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] !!!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 827
    :pswitch_0
    new-instance p1, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$9;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$9;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowJibe;)V

    return-object p1

    .line 793
    :pswitch_1
    new-instance p1, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$8;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$8;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowJibe;)V

    return-object p1

    .line 728
    :pswitch_2
    new-instance p1, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$5;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$5;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowJibe;)V

    return-object p1

    .line 773
    :pswitch_3
    new-instance p1, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$7;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$7;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowJibe;)V

    return-object p1

    .line 737
    :pswitch_4
    new-instance p1, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$6;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$6;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowJibe;)V

    return-object p1

    .line 623
    :pswitch_5
    new-instance p1, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$4;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$4;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowJibe;)V

    return-object p1

    .line 580
    :pswitch_6
    new-instance p1, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$3;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$3;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowJibe;)V

    return-object p1

    .line 557
    :pswitch_7
    new-instance p1, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$2;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$2;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowJibe;)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    .line 93
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 94
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    const-string v3, "AutoConfig: finish"

    const-string v4, " newVersion: "

    const-string v5, "oldVersion: "

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x1

    if-eqz v1, :cond_7

    if-eq v1, v8, :cond_8

    const-string v9, "mIsMobileConfigCompleted: "

    if-eq v1, v7, :cond_5

    if-eq v1, v6, :cond_3

    const/4 v3, 0x5

    if-eq v1, v3, :cond_0

    .line 198
    invoke-super {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 176
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v3, "defaultmsgappinuse"

    invoke-static {p1, v3, v1}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v8, :cond_1

    .line 177
    iget p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string/jumbo v1, "sms default application is changed to samsung"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 178
    sget-object p1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setVersion(I)V

    .line 179
    invoke-virtual {p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->setRcsState(Ljava/lang/String;)V

    const-string v0, ""

    .line 180
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->setRcsDisabledState(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setValidity(I)V

    .line 182
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->cancelValidityTimer()V

    .line 183
    invoke-virtual {p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result p1

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setNextAutoconfigTime(J)V

    .line 184
    iput-boolean v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mIsConfigOngoing:Z

    goto/16 :goto_0

    .line 186
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-interface {p1, v1}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->isValidConfigDb(I)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 187
    iget p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string/jumbo v1, "sms default application is changed to non-samsung"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 188
    sget-object p1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_RCS_BY_USER:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->setOpMode(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;Ljava/util/Map;)V

    .line 189
    invoke-virtual {p0, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 190
    invoke-virtual {p0, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 192
    :cond_2
    iget p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string p1, "not to trigger a config because of invalid config"

    invoke-static {v0, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 158
    :cond_3
    iget-boolean p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsMobileConfigCompleted:Z

    if-eqz p1, :cond_4

    .line 159
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsMobileConfigCompleted:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 162
    :cond_4
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {p1}, Lcom/sec/internal/ims/config/PowerController;->lock()V

    .line 163
    invoke-virtual {p0, v8}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->changeOpMode(Z)V

    .line 164
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mMobileStateCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {p0, p1, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->unregisterMobileNetwork(Landroid/net/ConnectivityManager;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 165
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getVersion()I

    move-result p1

    iput p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mNewVersion:I

    .line 166
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->endAutoConfig(Z)V

    .line 167
    iget p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mOldVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mNewVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 168
    iget p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-static {v0, p1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 169
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mOldVersion:I

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mNewVersion:I

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    .line 170
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 169
    invoke-virtual {p0, v7, v0, v1, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 171
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/PowerController;->release()V

    goto/16 :goto_0

    .line 138
    :cond_5
    invoke-virtual {p0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 139
    iget-boolean p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsMobileConfigCompleted:Z

    if-eqz p1, :cond_6

    .line 140
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsMobileConfigCompleted:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 143
    :cond_6
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {p1}, Lcom/sec/internal/ims/config/PowerController;->lock()V

    .line 144
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->executeAutoConfig()V

    .line 145
    iput-boolean v8, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsMobileConfigCompleted:Z

    .line 146
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mMobileStateCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {p0, p1, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->unregisterMobileNetwork(Landroid/net/ConnectivityManager;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 147
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getVersion()I

    move-result p1

    iput p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mNewVersion:I

    .line 148
    invoke-virtual {p0, v8}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->endAutoConfig(Z)V

    .line 149
    iget p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mOldVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mNewVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 150
    iget p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-static {v0, p1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 151
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mOldVersion:I

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mNewVersion:I

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    .line 152
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 151
    invoke-virtual {p0, v7, v0, v1, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 153
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/PowerController;->release()V

    goto/16 :goto_0

    .line 96
    :cond_7
    iput-boolean v8, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStartForce:Z

    .line 99
    :cond_8
    iget-boolean p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mIsConfigOngoing:Z

    if-eqz p1, :cond_9

    const-string p0, "AutoConfig: ongoing"

    .line 100
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 103
    :cond_9
    iput-boolean v8, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mIsConfigOngoing:Z

    .line 104
    iget p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AutoConfig: start, mStartForce: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStartForce:Z

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 105
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v7, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 106
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {p1}, Lcom/sec/internal/ims/config/PowerController;->lock()V

    .line 107
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->initAutoConfig()V

    .line 108
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getVersion()I

    move-result p1

    iput p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mOldVersion:I

    .line 110
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->scheduleAutoconfigForJibe(I)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 111
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsWifiConnected: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsWifiConnected:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mIsMobileConfigNeeded: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsMobileConfigNeeded:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-boolean p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsWifiConnected:Z

    if-eqz p1, :cond_a

    iget-boolean p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsMobileConfigNeeded:Z

    if-eqz p1, :cond_a

    const-string/jumbo p1, "use mobile network"

    .line 113
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iput-boolean v8, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsMobileRequested:Z

    .line 115
    new-instance p1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {p1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 116
    invoke-virtual {p1, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object p1

    const/16 v0, 0xc

    .line 117
    invoke-virtual {p1, v0}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object p1

    .line 118
    invoke-virtual {p1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mNetworkRequest:Landroid/net/NetworkRequest;

    .line 119
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mMobileStateCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->registerMobileNetwork(Landroid/net/ConnectivityManager;Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 120
    invoke-virtual {p0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 121
    invoke-virtual {p0, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/32 v0, 0xea60

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 122
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/PowerController;->release()V

    goto :goto_0

    .line 125
    :cond_a
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->executeAutoConfig()V

    .line 127
    :cond_b
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getVersion()I

    move-result p1

    iput p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mNewVersion:I

    .line 128
    invoke-virtual {p0, v8}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->endAutoConfig(Z)V

    .line 129
    iget p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mOldVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mNewVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 130
    iget p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-static {v0, p1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 131
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mOldVersion:I

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mNewVersion:I

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    .line 132
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 131
    invoke-virtual {p0, v7, v0, v1, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 133
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/PowerController;->release()V

    :goto_0
    return-void
.end method

.method protected handleResponse(Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/config/exception/InvalidHeaderException;,
            Lcom/sec/internal/ims/config/exception/UnknownStatusException;
        }
    .end annotation

    .line 364
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleResponse: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 365
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": handleResponse: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->addEventLog(Ljava/lang/String;)V

    .line 368
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setLastErrorCode(I)V

    .line 369
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getLastErrorCode()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_f

    const/16 v4, 0xc8

    if-eq v1, v4, :cond_e

    const/16 v4, 0x193

    const/4 v5, 0x3

    const/16 v6, 0x8

    if-eq v1, v4, :cond_7

    const/16 v4, 0x1f7

    if-eq v1, v4, :cond_5

    const/16 v4, 0x1ff

    const-string v7, ""

    if-eq v1, v4, :cond_2

    const/16 v4, 0x190

    if-eq v1, v4, :cond_1

    const/16 v4, 0x191

    if-eq v1, v4, :cond_0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 458
    :cond_0
    sget-object p1, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;->INVALID_IIDTOKEN:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

    invoke-virtual {p0, v7, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setToken(Ljava/lang/String;Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;)V

    const-string p1, "retry after 43200 sec"

    .line 459
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0xa8c0

    .line 460
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setValidityTimer(I)V

    .line 461
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setNextAutoconfigTimeAfter(I)V

    .line 462
    invoke-virtual {p0, v6}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object p0

    goto/16 :goto_1

    :cond_1
    const-string p1, "bad request received, set version to zero"

    .line 466
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    sget-object p1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->setOpMode(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;Ljava/util/Map;)V

    .line 468
    invoke-virtual {p0, v6}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object p0

    goto/16 :goto_1

    .line 371
    :cond_2
    instance-of p1, p1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$FetchHttp;

    if-eqz p1, :cond_3

    .line 372
    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object p0

    goto/16 :goto_1

    .line 375
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "The token isn\'t valid: m511ErrCount: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->m511ErrCount:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    sget-object p1, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;->INVALID_TOKEN:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

    invoke-virtual {p0, v7, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setToken(Ljava/lang/String;Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;)V

    .line 377
    iget p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->m511ErrCount:I

    if-ge p1, v2, :cond_4

    add-int/2addr p1, v3

    .line 378
    iput p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->m511ErrCount:I

    const-string p1, "retry after 10 sec"

    .line 379
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0xa

    .line 380
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setValidityTimer(I)V

    .line 381
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setNextAutoconfigTimeAfter(I)V

    .line 383
    :cond_4
    invoke-virtual {p0, v6}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object p0

    goto/16 :goto_1

    .line 446
    :cond_5
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getretryAfterTime()J

    move-result-wide p1

    .line 447
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "m503ErrCount: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->m503ErrCount:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " retryAfterTime: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->m503ErrCount:I

    if-ge v1, v2, :cond_6

    add-int/2addr v1, v3

    .line 449
    iput v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->m503ErrCount:I

    .line 450
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "retry after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " sec"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    long-to-int p1, p1

    .line 451
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setValidityTimer(I)V

    .line 452
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setNextAutoconfigTimeAfter(I)V

    .line 454
    :cond_6
    invoke-virtual {p0, v6}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object p0

    goto/16 :goto_1

    .line 404
    :cond_7
    instance-of p1, p1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$FetchHttps;

    if-nez p1, :cond_8

    .line 405
    invoke-virtual {p0, v6}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object p0

    goto/16 :goto_1

    .line 408
    :cond_8
    sget-object p1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_RCS_BY_USER:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->getRcsState()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 409
    invoke-virtual {p0, v6}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object p0

    goto/16 :goto_1

    .line 412
    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "403 is received, mMsisdnTryCount:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mMsisdnTryCount:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    invoke-direct {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->isMsisdnForGcNeeded()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 415
    iget p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mMsisdnTryCount:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mMsisdnTryCount:I

    .line 416
    iget-boolean p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mMobileNetwork:Z

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mMsisdnHandler:Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;

    invoke-virtual {p1}, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->getMsisdnSkipCount()I

    move-result p1

    if-ne p1, v5, :cond_a

    const-string p1, "Retry counter for msisdn reached. Abort."

    .line 417
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-virtual {p0, v6}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object p0

    return-object p0

    .line 420
    :cond_a
    invoke-direct {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->getMsisdnForGc()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "skip"

    .line 421
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 422
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mMsisdnHandler:Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;

    invoke-virtual {p1}, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->getMsisdnSkipCount()I

    move-result p2

    add-int/2addr p2, v3

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->setMsisdnSkipCount(I)V

    const-string/jumbo p1, "user enter skip msisdn."

    .line 423
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mMsisdnHandler:Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;

    const-string/jumbo p2, "true"

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->setMsisdnMsguiDisplay(Ljava/lang/String;)V

    .line 425
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "com.sec.rcs.config.action.SET_SHOW_MSISDN_DIALOG"

    .line 426
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 427
    iget-object p2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mMsisdnHandler:Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;

    invoke-virtual {p2}, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->getIsNeeded()Z

    move-result p2

    const-string v0, "isNeeded"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 428
    iget-object p2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/sec/ims/extensions/ContextExt;->ALL:Landroid/os/UserHandle;

    invoke-static {p2, p1, v0}, Lcom/sec/ims/extensions/ContextExt;->sendBroadcastAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 429
    invoke-virtual {p0, v6}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object p0

    return-object p0

    .line 432
    :cond_b
    invoke-direct {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->getMsisdnForJibe()Ljava/lang/String;

    move-result-object p1

    .line 435
    :cond_c
    iget-object p2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/config/SharedInfo;->setUserMsisdn(Ljava/lang/String;)V

    .line 436
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_d

    const-string p1, "msisdn doesn\'t exist"

    .line 437
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    invoke-virtual {p0, v6}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object p0

    goto :goto_1

    :cond_d
    const-string p1, "msisdn exists"

    .line 440
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object p0

    goto :goto_1

    :cond_e
    const/4 v0, 0x0

    .line 472
    iput v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->m511ErrCount:I

    .line 473
    iput v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->m503ErrCount:I

    .line 477
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->handleResponse(Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object p0

    goto :goto_1

    .line 394
    :cond_f
    :pswitch_0
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v4, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-ne v1, v4, :cond_10

    instance-of v1, p1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$FetchHttp;

    if-eqz v1, :cond_10

    iget-boolean v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsEnrichedHeaderFailed:Z

    if-nez v1, :cond_10

    const-string p1, "http enriched header is failed, retry it with default header"

    .line 395
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iput-boolean v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsEnrichedHeaderFailed:Z

    .line 397
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object p0

    goto :goto_1

    .line 400
    :cond_10
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->handleResponse(Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object p0

    :goto_1
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x320
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected initAutoConfig()V
    .locals 3

    .line 270
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v2, "initAutoConfig"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x0

    .line 271
    iput-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mNetwork:Landroid/net/Network;

    const/4 v0, 0x0

    .line 272
    iput-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsMobileRequested:Z

    .line 273
    iput-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsMobileConnected:Z

    .line 274
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->checkWifiConnection(Landroid/net/ConnectivityManager;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsWifiConnected:Z

    .line 276
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    .line 277
    iput-boolean v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsMobileConfigNeeded:Z

    .line 279
    :cond_0
    iput-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsMobileConfigCompleted:Z

    .line 281
    iput v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mAuthTryCount:I

    .line 282
    iput v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mAuthHiddenTryCount:I

    .line 283
    iput v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mMsisdnTryCount:I

    return-void
.end method

.method onMobileConnectionChanged(Landroid/net/Network;Z)V
    .locals 1

    if-eqz p2, :cond_1

    .line 216
    iget-boolean p2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsMobileRequested:Z

    if-eqz p2, :cond_2

    iget-boolean p2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsMobileConnected:Z

    if-nez p2, :cond_2

    .line 217
    sget-object p2, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    const-string v0, "onMobileConnectionChanged: onAvailable"

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const-string v0, "mobile connection is successful"

    .line 219
    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mNetwork:Landroid/net/Network;

    const/4 p1, 0x1

    .line 221
    iput-boolean p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsMobileConnected:Z

    const/4 p1, 0x3

    .line 222
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_0
    const-string p0, "mobile connection info is empty"

    .line 224
    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 227
    :cond_1
    iget-boolean p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsMobileRequested:Z

    if-eqz p1, :cond_2

    .line 228
    sget-object p1, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    const-string p2, "onMobileConnectionChanged: onLost"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 229
    iput-boolean p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsMobileConnected:Z

    :cond_2
    :goto_0
    return-void
.end method

.method protected scheduleAutoconfigForJibe(I)Z
    .locals 10

    .line 234
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v2, "scheduleAutoconfigForJibe"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 235
    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->needScheduleAutoconfig(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string p0, "needScheduleAutoconfig: false"

    .line 236
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 239
    :cond_0
    iget-boolean v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStartForce:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 240
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->cancelValidityTimer()V

    const-string p0, "force autoconfig"

    .line 241
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    const/4 v1, -0x1

    if-eq p1, v1, :cond_5

    const/4 v1, -0x2

    if-ne p1, v1, :cond_2

    goto/16 :goto_0

    .line 249
    :cond_2
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getNextAutoconfigTime()J

    move-result-wide v4

    .line 250
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nextAutoconfigTime: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 253
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long v6, v4, v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-int p1, v6

    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remainValidity: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-gtz p1, :cond_3

    const-string p0, "need autoconfig"

    .line 257
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_3
    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_4

    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "autoconfig schedule: after "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " seconds"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x13020300

    .line 262
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",VNE:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 263
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": autoconfig schedule: after "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->addEventLog(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setValidityTimer(I)V

    :cond_4
    return v2

    .line 245
    :cond_5
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "currentVersion: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " skip autoconfig"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method work()V
    .locals 8

    const/4 v0, 0x1

    .line 297
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v1

    .line 298
    sget v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->AUTO_CONFIG_MAX_FLOWCOUNT:I

    :goto_0
    if-eqz v1, :cond_2

    if-lez v2, :cond_2

    const/16 v3, 0x8

    .line 302
    :try_start_0
    invoke-interface {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;->run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v1
    :try_end_0
    .catch Lcom/sec/internal/ims/config/exception/NoInitialDataException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/sec/internal/ims/config/exception/UnknownStatusException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v1

    .line 325
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 326
    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unknown exception occur: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_0
    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "wait 1 sec and retry"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v3, 0x3e8

    .line 329
    invoke-virtual {p0, v3, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->sleep(J)V

    .line 330
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v3

    .line 331
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    :catch_1
    move-exception v1

    .line 321
    sget-object v4, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SQLiteFullException occur: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteFullException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v3

    .line 323
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteFullException;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception v1

    .line 310
    invoke-virtual {v1}, Lcom/sec/internal/ims/config/exception/UnknownStatusException;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 311
    sget-object v5, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UnknownStatusException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    instance-of v4, v1, Lcom/sec/internal/ims/config/exception/EmptyBodyAndCookieException;

    if-eqz v4, :cond_1

    .line 313
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v3

    goto :goto_1

    .line 315
    :cond_1
    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "wait 2 sec and retry"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v3, 0x7d0

    .line 316
    invoke-virtual {p0, v3, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->sleep(J)V

    .line 317
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v3

    .line 319
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catch_3
    move-exception v1

    .line 304
    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NoInitialDataException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/exception/NoInitialDataException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "wait 10 sec and retry"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v3, 0x2710

    .line 306
    invoke-virtual {p0, v3, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->sleep(J)V

    .line 307
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v3

    .line 308
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    move-object v1, v3

    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_0

    :cond_2
    return-void
.end method
