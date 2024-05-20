.class public Lcom/sec/internal/ims/config/workflow/WorkflowInterop;
.super Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;
.source "WorkflowInterop.java"


# static fields
.field protected static final HTTPERR_RETRY_AFTER_TIME:I = 0xa

.field protected static final HTTPERR_TRY_MAX_COUNT:I = 0x2

.field protected static final LOG_TAG:Ljava/lang/String;

.field protected static final OTP_SMS_BINARY_TYPE:Ljava/lang/String; = "binary"

.field protected static final OTP_SMS_TEXT_TYPE:Ljava/lang/String; = "text"

.field protected static final OTP_SMS_TIME_OUT:I = 0x2bc


# instance fields
.field protected m503ErrCount:I

.field protected m511ErrCount:I

.field protected mAuthHiddenTryCount:I

.field protected mAuthTryCount:I

.field protected mHttpResponse:I

.field protected mIsMobileConfigCompleted:Z

.field protected mIsMobileConnected:Z

.field protected mIsMobileRequested:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const-class v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Lcom/sec/internal/constants/Mno;I)V
    .locals 12

    move-object v11, p0

    move-object v2, p2

    move-object v3, p3

    move/from16 v10, p5

    .line 66
    new-instance v5, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceUp;

    invoke-direct {v5, p2, p3, v10}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceUp;-><init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;I)V

    new-instance v6, Lcom/sec/internal/ims/config/adapters/StorageAdapter;

    invoke-direct {v6}, Lcom/sec/internal/ims/config/adapters/StorageAdapter;-><init>()V

    new-instance v7, Lcom/sec/internal/ims/config/adapters/HttpAdapterJibeAndSec;

    invoke-direct {v7, v10}, Lcom/sec/internal/ims/config/adapters/HttpAdapterJibeAndSec;-><init>(I)V

    new-instance v8, Lcom/sec/internal/ims/config/adapters/XmlParserAdapter;

    invoke-direct {v8}, Lcom/sec/internal/ims/config/adapters/XmlParserAdapter;-><init>()V

    new-instance v9, Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    invoke-direct {v9, p2, p3}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;-><init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;)V

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v4, p4

    invoke-direct/range {v0 .. v10}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Lcom/sec/internal/constants/Mno;Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;Lcom/sec/internal/interfaces/ims/config/IXmlParserAdapter;Lcom/sec/internal/interfaces/ims/config/IDialogAdapter;I)V

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mIsMobileRequested:Z

    .line 57
    iput-boolean v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mIsMobileConnected:Z

    .line 58
    iput-boolean v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mIsMobileConfigCompleted:Z

    .line 59
    iput v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mHttpResponse:I

    .line 60
    iput v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mAuthTryCount:I

    .line 61
    iput v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mAuthHiddenTryCount:I

    .line 62
    iput v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->m511ErrCount:I

    .line 63
    iput v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->m503ErrCount:I

    return-void
.end method


# virtual methods
.method protected endAutoConfig(Z)V
    .locals 0

    .line 171
    invoke-super {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->endAutoConfig(Z)V

    const/4 p1, 0x0

    .line 173
    iput-boolean p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mIsMobileRequested:Z

    .line 174
    iput-boolean p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mIsMobileConnected:Z

    return-void
.end method

.method protected getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;
    .locals 3

    .line 221
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v2, "getHttpResponse"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 222
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mHttp:Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;->close()Z

    .line 223
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mHttp:Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpHeaders()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;->setHeaders(Ljava/util/Map;)V

    .line 224
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mHttp:Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpParams()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;->setParams(Ljava/util/Map;)V

    .line 225
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mHttp:Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;->setContext(Landroid/content/Context;)V

    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsMobileRequested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mIsMobileRequested:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsMobileConnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mIsMobileConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mHttp:Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;->setNetwork(Landroid/net/Network;)V

    .line 229
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mHttp:Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;->open(Ljava/lang/String;)Z

    .line 230
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mHttp:Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;->request()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v0

    .line 231
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mHttp:Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;->close()Z

    return-object v0
.end method

.method protected getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 2

    packed-switch p1, :pswitch_data_0

    .line 484
    sget-object p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->LOG_TAG:Ljava/lang/String;

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

    .line 475
    :pswitch_0
    new-instance p1, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$8;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$8;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowInterop;)V

    return-object p1

    .line 452
    :pswitch_1
    new-instance p1, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$7;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$7;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowInterop;)V

    return-object p1

    .line 392
    :pswitch_2
    new-instance p1, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$4;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$4;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowInterop;)V

    return-object p1

    .line 437
    :pswitch_3
    new-instance p1, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$6;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$6;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowInterop;)V

    return-object p1

    .line 401
    :pswitch_4
    new-instance p1, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$5;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$5;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowInterop;)V

    return-object p1

    .line 330
    :pswitch_5
    new-instance p1, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$3;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$3;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowInterop;)V

    return-object p1

    .line 318
    :pswitch_6
    new-instance p1, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$2;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$2;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowInterop;)V

    return-object p1

    .line 296
    :pswitch_7
    new-instance p1, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$1;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop$1;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowInterop;)V

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
    .locals 4

    .line 72
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->LOG_TAG:Ljava/lang/String;

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

    .line 73
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v2, :cond_3

    const/4 v3, 0x5

    if-eq v1, v3, :cond_0

    .line 120
    invoke-super {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 103
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v3, "defaultmsgappinuse"

    invoke-static {p1, v3, v1}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v2, :cond_1

    .line 104
    iget p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string/jumbo v1, "sms default application is changed to samsung"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 105
    sget-object p1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setVersion(I)V

    .line 106
    invoke-virtual {p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->setRcsState(Ljava/lang/String;)V

    const-string v0, ""

    .line 107
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->setRcsDisabledState(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setValidity(I)V

    .line 109
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->cancelValidityTimer()V

    .line 110
    invoke-virtual {p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result p1

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setNextAutoconfigTime(J)V

    goto/16 :goto_0

    .line 112
    :cond_1
    iget p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string/jumbo v1, "sms default application is changed to non-samsung"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 113
    sget-object p1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_RCS_BY_USER:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->setOpMode(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;Ljava/util/Map;)V

    .line 114
    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 115
    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 75
    :cond_2
    iput-boolean v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStartForce:Z

    .line 78
    :cond_3
    iget-boolean p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mIsConfigOngoing:Z

    if-eqz p1, :cond_4

    const-string p0, "AutoConfig: ongoing"

    .line 79
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 82
    :cond_4
    iput-boolean v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mIsConfigOngoing:Z

    .line 83
    iget p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AutoConfig: start, mStartForce: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStartForce:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 84
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x3

    invoke-virtual {p1, v3, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 85
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {p1}, Lcom/sec/internal/ims/config/PowerController;->lock()V

    .line 86
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->initAutoConfig()V

    .line 87
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getVersion()I

    move-result p1

    iput p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mOldVersion:I

    .line 89
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->scheduleAutoconfigForInterop(I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 90
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->executeAutoConfig()V

    .line 92
    :cond_5
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getVersion()I

    move-result p1

    iput p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mNewVersion:I

    .line 93
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->endAutoConfig(Z)V

    .line 94
    iget p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "oldVersion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mOldVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " newVersion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mNewVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 95
    iget p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v1, "AutoConfig: finish"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 96
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mOldVersion:I

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mNewVersion:I

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    .line 97
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 96
    invoke-virtual {p0, v3, v0, v1, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 98
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/PowerController;->release()V

    :goto_0
    return-void
.end method

.method protected handleResponse(Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/config/exception/InvalidHeaderException;,
            Lcom/sec/internal/ims/config/exception/UnknownStatusException;
        }
    .end annotation

    .line 237
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleResponse: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->addEventLog(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setLastErrorCode(I)V

    .line 242
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getLastErrorCode()I

    move-result v1

    if-eqz v1, :cond_7

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_6

    const/16 v2, 0x193

    const/16 v3, 0x8

    if-eq v1, v2, :cond_5

    const/16 v2, 0x1f7

    const/4 v4, 0x2

    if-eq v1, v2, :cond_3

    const/16 v2, 0x1ff

    if-eq v1, v2, :cond_0

    goto/16 :goto_0

    .line 244
    :cond_0
    instance-of p1, p1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$FetchHttp;

    if-eqz p1, :cond_1

    const/4 p1, 0x3

    .line 245
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object p0

    goto/16 :goto_1

    .line 248
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "The token isn\'t valid: m511ErrCount: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->m511ErrCount:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    sget-object p1, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;->INVALID_TOKEN:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

    const-string p2, ""

    invoke-virtual {p0, p2, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setToken(Ljava/lang/String;Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;)V

    .line 250
    iget p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->m511ErrCount:I

    if-ge p1, v4, :cond_2

    add-int/lit8 p1, p1, 0x1

    .line 251
    iput p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->m511ErrCount:I

    const-string p1, "retry after 10 sec"

    .line 252
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0xa

    .line 253
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setValidityTimer(I)V

    .line 254
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setNextAutoconfigTimeAfter(I)V

    .line 256
    :cond_2
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object p0

    goto :goto_1

    .line 270
    :cond_3
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getretryAfterTime()J

    move-result-wide p1

    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "m503ErrCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->m503ErrCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " retryAfterTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->m503ErrCount:I

    if-ge v1, v4, :cond_4

    add-int/lit8 v1, v1, 0x1

    .line 273
    iput v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->m503ErrCount:I

    .line 274
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

    .line 275
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setValidityTimer(I)V

    .line 276
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setNextAutoconfigTimeAfter(I)V

    .line 278
    :cond_4
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object p0

    goto :goto_1

    :cond_5
    const-string p1, "set version to zero"

    .line 264
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    sget-object p1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->setOpMode(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;Ljava/util/Map;)V

    .line 266
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object p0

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    .line 282
    iput v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->m511ErrCount:I

    .line 283
    iput v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->m503ErrCount:I

    .line 287
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->handleResponse(Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object p0

    goto :goto_1

    .line 260
    :cond_7
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->handleResponse(Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method protected initAutoConfig()V
    .locals 3

    .line 161
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v2, "initAutoConfig"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x0

    .line 162
    iput-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mNetwork:Landroid/net/Network;

    const/4 v0, 0x0

    .line 163
    iput-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mIsMobileRequested:Z

    .line 164
    iput-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mIsMobileConnected:Z

    .line 165
    iput v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mAuthTryCount:I

    .line 166
    iput v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->mAuthHiddenTryCount:I

    return-void
.end method

.method protected scheduleAutoconfigForInterop(I)Z
    .locals 10

    .line 125
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v2, "scheduleAutoconfigForInterop"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 126
    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->needScheduleAutoconfig(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string p0, "needScheduleAutoconfig: false"

    .line 127
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 130
    :cond_0
    iget-boolean v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStartForce:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 131
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->cancelValidityTimer()V

    const-string p0, "force autoconfig"

    .line 132
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    const/4 v1, -0x1

    if-eq p1, v1, :cond_5

    const/4 v1, -0x2

    if-ne p1, v1, :cond_2

    goto/16 :goto_0

    .line 140
    :cond_2
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getNextAutoconfigTime()J

    move-result-wide v4

    .line 141
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nextAutoconfigTime: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 144
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long v6, v4, v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-int p1, v6

    .line 145
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

    .line 148
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_3
    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_4

    .line 152
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

    .line 153
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

    .line 154
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

    .line 155
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setValidityTimer(I)V

    :cond_4
    return v2

    .line 136
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

    .line 179
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v1

    .line 180
    sget v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->AUTO_CONFIG_MAX_FLOWCOUNT:I

    :goto_0
    if-eqz v1, :cond_2

    if-lez v2, :cond_2

    const/16 v3, 0x8

    .line 184
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

    .line 207
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 208
    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->LOG_TAG:Ljava/lang/String;

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

    .line 210
    :cond_0
    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "wait 1 sec and retry"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v3, 0x3e8

    .line 211
    invoke-virtual {p0, v3, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->sleep(J)V

    .line 212
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v3

    .line 213
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    :catch_1
    move-exception v1

    .line 203
    sget-object v4, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->LOG_TAG:Ljava/lang/String;

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

    .line 204
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v3

    .line 205
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteFullException;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception v1

    .line 192
    invoke-virtual {v1}, Lcom/sec/internal/ims/config/exception/UnknownStatusException;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 193
    sget-object v5, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UnknownStatusException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    instance-of v4, v1, Lcom/sec/internal/ims/config/exception/EmptyBodyAndCookieException;

    if-eqz v4, :cond_1

    .line 195
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v3

    goto :goto_1

    .line 197
    :cond_1
    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "wait 2 sec and retry"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v3, 0x7d0

    .line 198
    invoke-virtual {p0, v3, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->sleep(J)V

    .line 199
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v3

    .line 201
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catch_3
    move-exception v1

    .line 186
    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->LOG_TAG:Ljava/lang/String;

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

    .line 187
    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "wait 10 sec and retry"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v3, 0x2710

    .line 188
    invoke-virtual {p0, v3, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->sleep(J)V

    .line 189
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v3

    .line 190
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    move-object v1, v3

    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_0

    :cond_2
    return-void
.end method
