.class Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$RegisteringState;
.super Lcom/sec/internal/helper/State;
.source "WorkflowMcs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RegisteringState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;)V
    .registers 2

    .line 348
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$RegisteringState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    invoke-direct {p0}, Lcom/sec/internal/helper/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$RegisteringState-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$RegisteringState;-><init>(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 2

    .line 350
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$RegisteringState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    const-string v0, "RegisteringState, enter"

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method public exit()V
    .registers 2

    .line 388
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$RegisteringState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    const-string v0, "RegisteringState, exit"

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 15

    .line 355
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$RegisteringState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->LOG_TAG:Ljava/lang/String;

    iget v0, v0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RegisteringState, processMessage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 357
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xa

    const/4 v2, 0x1

    if-eq v0, v1, :cond_113

    const/16 v1, 0x13

    if-eq v0, v1, :cond_dd

    const/4 v1, 0x0

    const/16 v3, 0x14

    if-eq v0, v3, :cond_d7

    packed-switch v0, :pswitch_data_114

    move v2, v1

    goto/16 :goto_113

    .line 375
    :pswitch_32
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$RegisteringState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->-$$Nest$fgetmStoreClient(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object p1

    new-instance v0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$RegisteringState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->-$$Nest$fgetmListener(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$RegisteringState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->-$$Nest$fgetmStoreClient(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$RegisteringState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    invoke-virtual {v4}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->isValidRefreshToken()Z

    move-result v4

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$RegisteringState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->-$$Nest$mbuildDeviceInfo(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-direct {v0, v1, v3, v4, p0}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;ZLorg/json/JSONObject;)V

    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    goto/16 :goto_113

    .line 364
    :pswitch_5e
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$RegisteringState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->-$$Nest$fgetmStoreClient(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserRegistration;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$RegisteringState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->-$$Nest$fgetmListener(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$RegisteringState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    invoke-static {v4}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->-$$Nest$fgetmStoreClient(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v4

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$RegisteringState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->-$$Nest$mgetE164Msisdn(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;)Ljava/lang/String;

    move-result-object p0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v1, v3, v4, p0, p1}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserRegistration;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    goto/16 :goto_113

    .line 359
    :pswitch_88
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$RegisteringState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->-$$Nest$fgetmStoreClient(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$RegisteringState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->-$$Nest$fgetmListener(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    move-result-object v4

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$RegisteringState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->-$$Nest$fgetmStoreClient(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v5

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$RegisteringState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    .line 360
    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->-$$Nest$mgetE164Msisdn(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;)Ljava/lang/String;

    move-result-object v6

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$RegisteringState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->-$$Nest$mbuildDeviceInfo(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;)Lorg/json/JSONObject;

    move-result-object v7

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$RegisteringState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->-$$Nest$fgetmOtp(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;)Ljava/lang/String;

    move-result-object v8

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$RegisteringState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->-$$Nest$fgetmRequestType(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;)Ljava/lang/String;

    move-result-object v9

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$RegisteringState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;

    move-result-object v3

    .line 361
    invoke-virtual {v3}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->getMobileIp()Ljava/lang/String;

    move-result-object v10

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$RegisteringState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    iget-boolean p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mNeedInternalRegistration:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, p0

    check-cast v12, Ljava/lang/String;

    move-object v3, v1

    invoke-direct/range {v3 .. v12}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    .line 359
    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    goto :goto_113

    .line 372
    :cond_d7
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$RegisteringState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    invoke-virtual {p0, v3, v1}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->handleFailedEvent(II)V

    goto :goto_113

    .line 367
    :cond_dd
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$RegisteringState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->-$$Nest$fgetmStoreClient(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object p1

    new-instance v0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestOtpSms;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$RegisteringState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->-$$Nest$fgetmListener(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$RegisteringState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->-$$Nest$fgetmStoreClient(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$RegisteringState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    invoke-static {v4}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->-$$Nest$mgetE164Msisdn(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$RegisteringState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    invoke-static {v5}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->-$$Nest$mbuildDeviceInfo(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestOtpSms;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    .line 368
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$RegisteringState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    invoke-static {p1, v2}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->-$$Nest$fputmWaitOtp(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;Z)V

    .line 369
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$RegisteringState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    const-wide/16 v0, 0x3c

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->startOtpTimer(J)V

    :cond_113
    :goto_113
    return v2

    :pswitch_data_114
    .packed-switch 0xc
        :pswitch_88
        :pswitch_5e
        :pswitch_32
    .end packed-switch
.end method
