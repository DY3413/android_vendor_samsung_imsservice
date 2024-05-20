.class Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;
.super Lcom/sec/internal/helper/State;
.source "SoftphoneStateHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReadyState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;)V
    .locals 0

    .line 291
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    invoke-direct {p0}, Lcom/sec/internal/helper/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .line 294
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    invoke-virtual {p0}, Lcom/sec/internal/helper/StateMachine;->getCurrentState()Lcom/sec/internal/helper/IState;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/helper/IState;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " enter."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 299
    const-class v2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse;

    const-class v3, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;

    .line 300
    iget-object v4, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v4, v4, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    invoke-virtual {v6}, Lcom/sec/internal/helper/StateMachine;->getCurrentState()Lcom/sec/internal/helper/IState;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/internal/helper/IState;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", msg: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 301
    iget v4, v1, Landroid/os/Message;->what:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v4, v5, :cond_16

    const/4 v7, 0x2

    if-eq v4, v7, :cond_15

    const/4 v7, 0x3

    if-eq v4, v7, :cond_14

    const/4 v8, 0x4

    if-eq v4, v8, :cond_13

    const/4 v8, 0x6

    if-eq v4, v8, :cond_12

    const/4 v9, 0x7

    if-eq v4, v9, :cond_11

    const/16 v9, 0x12

    if-eq v4, v9, :cond_10

    const/16 v9, 0x13

    const/16 v10, 0x40a

    if-eq v4, v9, :cond_f

    const/16 v9, 0x3f2

    const/16 v11, 0xc8

    if-eq v4, v9, :cond_e

    const/16 v12, 0x3f3

    if-eq v4, v12, :cond_d

    const/16 v13, 0x3f9

    if-eq v4, v13, :cond_c

    const/16 v13, 0x3fa

    if-eq v4, v13, :cond_b

    const/16 v13, 0x400

    if-eq v4, v13, :cond_a

    const/16 v13, 0x401

    if-eq v4, v13, :cond_9

    const/16 v13, 0x406

    if-eq v4, v13, :cond_8

    const/16 v13, 0x407

    if-eq v4, v13, :cond_7

    const/16 v13, 0x409

    if-eq v4, v13, :cond_6

    if-eq v4, v10, :cond_5

    const-string v10, "attempt"

    sparse-switch v4, :sswitch_data_0

    packed-switch v4, :pswitch_data_0

    packed-switch v4, :pswitch_data_1

    .line 532
    iget-object v1, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v1, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected event : current status is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->getAccountStatus()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    goto/16 :goto_2

    .line 449
    :pswitch_0
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    if-eqz v2, :cond_1

    .line 456
    invoke-virtual {v2}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, "<cp:conditions></cp:conditions>"

    const-string v7, "<cp:conditions><ss:unconditional/></cp:conditions>"

    .line 458
    invoke-virtual {v3, v4, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 460
    :cond_0
    invoke-virtual {v2, v3}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->setDataString(Ljava/lang/String;)V

    .line 462
    :cond_1
    const-class v3, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse;

    .line 463
    invoke-static {v2, v3, v11, v6}, Lcom/sec/internal/helper/entitlement/softphone/SoftphoneResponseUtils;->parseXmlResponse(Lcom/sec/internal/helper/httpclient/HttpResponseParams;Ljava/lang/Class;IZ)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse;

    .line 464
    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mClient:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    iget v1, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->processGetCallForwardingInfoResponse(Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse;I)V

    goto/16 :goto_2

    .line 442
    :pswitch_1
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    .line 443
    const-class v3, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallWaitingResponse;

    .line 444
    invoke-static {v2, v3, v11, v6}, Lcom/sec/internal/helper/entitlement/softphone/SoftphoneResponseUtils;->parseXmlResponse(Lcom/sec/internal/helper/httpclient/HttpResponseParams;Ljava/lang/Class;IZ)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallWaitingResponse;

    .line 445
    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mClient:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    iget v1, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->processGetCallWaitingInfoResponse(Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallWaitingResponse;I)V

    goto/16 :goto_2

    .line 424
    :pswitch_2
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    .line 425
    const-class v3, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AddAddressResponse;

    .line 426
    invoke-static {v2, v3, v11}, Lcom/sec/internal/helper/entitlement/softphone/SoftphoneResponseUtils;->parseJsonResponse(Lcom/sec/internal/helper/httpclient/HttpResponseParams;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AddAddressResponse;

    .line 427
    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mClient:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    iget v3, v1, Landroid/os/Message;->arg1:I

    iget v1, v1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v2, v3, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->processAddE911AddressResponse(Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AddAddressResponse;II)V

    goto/16 :goto_2

    .line 413
    :pswitch_3
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    .line 414
    const-class v3, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AddressValidationResponse;

    const/16 v4, 0xc9

    invoke-static {v2, v3, v4}, Lcom/sec/internal/helper/entitlement/softphone/SoftphoneResponseUtils;->parseJsonResponse(Lcom/sec/internal/helper/httpclient/HttpResponseParams;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AddressValidationResponse;

    .line 416
    iget v3, v1, Landroid/os/Message;->arg1:I

    iput v3, v2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AddressValidationResponse;->mTransactionId:I

    .line 417
    iget v3, v1, Landroid/os/Message;->arg2:I

    iput v3, v2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AddressValidationResponse;->mAddressId:I

    .line 418
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "confirmed"

    .line 419
    invoke-virtual {v1, v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AddressValidationResponse;->mConfirmed:Z

    .line 420
    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mClient:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    const-string v3, "retry_count"

    invoke-virtual {v1, v3, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->processValidateE911AddressResponse(Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AddressValidationResponse;I)V

    goto/16 :goto_2

    .line 390
    :pswitch_4
    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    .line 391
    invoke-static {v3, v2, v11}, Lcom/sec/internal/helper/entitlement/softphone/SoftphoneResponseUtils;->parseJsonResponse(Lcom/sec/internal/helper/httpclient/HttpResponseParams;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse;

    .line 393
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 394
    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v11, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mClient:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    const/4 v13, 0x1

    iget v14, v1, Landroid/os/Message;->arg1:I

    iget v0, v1, Landroid/os/Message;->arg2:I

    if-ne v0, v5, :cond_2

    move v15, v5

    goto :goto_0

    :cond_2
    move v15, v6

    .line 395
    :goto_0
    invoke-virtual {v2, v10, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v16

    .line 394
    invoke-virtual/range {v11 .. v16}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->processImsNetworkIdentifiersResponse(Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse;ZIZI)V

    goto/16 :goto_2

    .line 406
    :pswitch_5
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    const/16 v4, 0xcc

    .line 407
    invoke-static {v2, v3, v4}, Lcom/sec/internal/helper/entitlement/softphone/SoftphoneResponseUtils;->parseJsonResponse(Lcom/sec/internal/helper/httpclient/HttpResponseParams;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;

    .line 409
    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mClient:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    iget v1, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->processProvisionAccountResponse(Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;I)V

    goto/16 :goto_2

    .line 399
    :pswitch_6
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    .line 400
    const-class v3, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/TermsAndConditionsResponse;

    invoke-static {v2, v3, v11}, Lcom/sec/internal/helper/entitlement/softphone/SoftphoneResponseUtils;->parseJsonResponse(Lcom/sec/internal/helper/httpclient/HttpResponseParams;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/TermsAndConditionsResponse;

    .line 402
    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mClient:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    iget v1, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->processTermsAndConditionsResponse(Lcom/sec/internal/constants/ims/entitilement/softphone/responses/TermsAndConditionsResponse;I)V

    goto/16 :goto_2

    .line 381
    :pswitch_7
    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    .line 382
    invoke-static {v3, v2, v11}, Lcom/sec/internal/helper/entitlement/softphone/SoftphoneResponseUtils;->parseJsonResponse(Lcom/sec/internal/helper/httpclient/HttpResponseParams;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse;

    .line 384
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 385
    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v11, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mClient:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    const/4 v13, 0x0

    iget v14, v1, Landroid/os/Message;->arg1:I

    iget v0, v1, Landroid/os/Message;->arg2:I

    if-ne v0, v5, :cond_3

    move v15, v5

    goto :goto_1

    :cond_3
    move v15, v6

    .line 386
    :goto_1
    invoke-virtual {v2, v10, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v16

    .line 385
    invoke-virtual/range {v11 .. v16}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->processImsNetworkIdentifiersResponse(Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse;ZIZI)V

    goto/16 :goto_2

    .line 526
    :sswitch_0
    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v1, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mActivatedState:Lcom/sec/internal/helper/State;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto/16 :goto_2

    .line 529
    :sswitch_1
    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->-$$Nest$fgetmRefreshState(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;)Lcom/sec/internal/helper/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto/16 :goto_2

    .line 368
    :sswitch_2
    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->deferMessage(Landroid/os/Message;)V

    goto/16 :goto_2

    .line 365
    :sswitch_3
    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->deferMessage(Landroid/os/Message;)V

    goto/16 :goto_2

    .line 431
    :sswitch_4
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    const/4 v3, -0x1

    if-eqz v2, :cond_4

    .line 434
    invoke-virtual {v2}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v3

    .line 436
    :cond_4
    const-class v4, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AccessTokenResponse;

    .line 437
    invoke-static {v2, v4, v11}, Lcom/sec/internal/helper/entitlement/softphone/SoftphoneResponseUtils;->parseJsonResponse(Lcom/sec/internal/helper/httpclient/HttpResponseParams;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AccessTokenResponse;

    .line 438
    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mClient:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    iget v4, v1, Landroid/os/Message;->arg1:I

    iget v1, v1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->processRefreshTokenResponse(Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AccessTokenResponse;III)V

    goto/16 :goto_2

    .line 336
    :sswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 337
    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mClient:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    iget v3, v1, Landroid/os/Message;->arg1:I

    iget v1, v1, Landroid/os/Message;->arg2:I

    int-to-long v8, v1

    invoke-virtual {v2, v10, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v3, v8, v9, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->refreshToken(IJI)V

    goto/16 :goto_2

    .line 358
    :sswitch_6
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    .line 359
    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget v3, v1, Landroid/os/Message;->arg1:I

    iget v4, v1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v12, v3, v4}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 360
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 361
    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->commit(Landroid/os/Message;)V

    goto/16 :goto_2

    .line 351
    :sswitch_7
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    .line 352
    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget v3, v1, Landroid/os/Message;->arg1:I

    iget v4, v1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v9, v3, v4}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 353
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 354
    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->commit(Landroid/os/Message;)V

    goto/16 :goto_2

    .line 346
    :sswitch_8
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    .line 347
    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v3, 0x6d

    iget v4, v1, Landroid/os/Message;->arg1:I

    iget v1, v1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v3, v4, v1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->commit(Landroid/os/Message;)V

    goto/16 :goto_2

    .line 341
    :sswitch_9
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    .line 342
    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v3, 0x6c

    iget v4, v1, Landroid/os/Message;->arg1:I

    iget v1, v1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v3, v4, v1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->commit(Landroid/os/Message;)V

    goto/16 :goto_2

    .line 485
    :cond_5
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    .line 486
    const-class v3, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AkaAuthenticationResponse;

    .line 487
    invoke-static {v2, v3, v11}, Lcom/sec/internal/helper/entitlement/softphone/SoftphoneResponseUtils;->parseJsonResponse(Lcom/sec/internal/helper/httpclient/HttpResponseParams;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AkaAuthenticationResponse;

    .line 488
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "nonce"

    .line 489
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 490
    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mClient:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    iget v1, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2, v1, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->processAkaChallengeResponse(Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AkaAuthenticationResponse;ILjava/lang/String;)V

    goto/16 :goto_2

    .line 506
    :cond_6
    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->-$$Nest$fgetmServiceOutState(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;)Lcom/sec/internal/helper/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto/16 :goto_2

    .line 516
    :cond_7
    iget-object v1, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    invoke-static {v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->-$$Nest$fgetmAirplaneState(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;)Lcom/sec/internal/helper/State;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 517
    iget-object v1, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v1, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mClient:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    sget-object v2, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType1:[J

    aget-wide v2, v2, v6

    invoke-virtual {v1, v6, v2, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->releaseImsNetworkIdentities(IJ)V

    .line 518
    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mClient:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    invoke-virtual {v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->resetCurrentAddresses()V

    goto/16 :goto_2

    .line 502
    :cond_8
    iget-object v1, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    invoke-static {v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->-$$Nest$fgetmReloginState(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;)Lcom/sec/internal/helper/State;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 503
    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mClient:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    sget-object v1, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType1:[J

    aget-wide v1, v1, v6

    invoke-virtual {v0, v6, v1, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->releaseImsNetworkIdentities(IJ)V

    goto/16 :goto_2

    .line 521
    :cond_9
    iget-object v1, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v2, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mUserSwitchState:Lcom/sec/internal/helper/State;

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 522
    iget-object v1, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v1, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mClient:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    sget-object v2, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType1:[J

    aget-wide v2, v2, v6

    invoke-virtual {v1, v6, v2, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->releaseImsNetworkIdentities(IJ)V

    .line 523
    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mClient:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    invoke-virtual {v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->resetCurrentAddresses()V

    goto/16 :goto_2

    .line 511
    :cond_a
    iget-object v1, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v2, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mReleasingState:Lcom/sec/internal/helper/State;

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 512
    iget-object v1, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v1, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mClient:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    sget-object v2, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType1:[J

    aget-wide v2, v2, v6

    invoke-virtual {v1, v6, v2, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->releaseImsNetworkIdentities(IJ)V

    .line 513
    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mClient:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    invoke-virtual {v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->resetCurrentAddresses()V

    goto/16 :goto_2

    .line 498
    :cond_b
    iget-object v1, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v2, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mDeactivatingState:Lcom/sec/internal/helper/State;

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 499
    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mClient:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    sget-object v1, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType1:[J

    aget-wide v1, v1, v6

    invoke-virtual {v0, v6, v1, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->releaseImsNetworkIdentities(IJ)V

    goto/16 :goto_2

    .line 494
    :cond_c
    iget-object v2, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v2, v2, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mClient:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    sget-object v3, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType1:[J

    aget-wide v3, v3, v6

    invoke-virtual {v2, v6, v3, v4}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->releaseImsNetworkIdentities(IJ)V

    .line 495
    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mClient:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "com.samsung.softphone.action.ACCOUNT_DEREGISTERED"

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->broadcastIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 476
    :cond_d
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    .line 478
    invoke-static {v2, v3, v11}, Lcom/sec/internal/helper/entitlement/softphone/SoftphoneResponseUtils;->parseJsonResponse(Lcom/sec/internal/helper/httpclient/HttpResponseParams;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;

    .line 479
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    .line 480
    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mClient:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    iget v1, v1, Landroid/os/Message;->arg1:I

    const-string v4, "communication-diversion"

    .line 481
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;

    .line 480
    invoke-virtual {v0, v2, v1, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->processSetCallForwardingInfoResponse(Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;ILcom/sec/vsim/attsoftphone/data/CallForwardingInfo;)V

    goto/16 :goto_2

    .line 468
    :cond_e
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    .line 470
    invoke-static {v2, v3, v11}, Lcom/sec/internal/helper/entitlement/softphone/SoftphoneResponseUtils;->parseJsonResponse(Lcom/sec/internal/helper/httpclient/HttpResponseParams;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;

    .line 471
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    .line 472
    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mClient:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    iget v1, v1, Landroid/os/Message;->arg1:I

    const-string v4, "communication-waiting"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/sec/vsim/attsoftphone/data/CallWaitingInfo;

    invoke-virtual {v0, v2, v1, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->processSetCallWaitingInfoResponse(Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;ILcom/sec/vsim/attsoftphone/data/CallWaitingInfo;)V

    goto/16 :goto_2

    .line 374
    :cond_f
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    .line 375
    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget v3, v1, Landroid/os/Message;->arg1:I

    iget v4, v1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v10, v3, v4}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 376
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 377
    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->commit(Landroid/os/Message;)V

    goto/16 :goto_2

    .line 371
    :cond_10
    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mClient:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    const/4 v1, 0x0

    const-string v2, "com.samsung.softphone.action.ACCOUNT_IDENTITY_RELEASED"

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->broadcastIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 331
    :cond_11
    :sswitch_a
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    .line 332
    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v3, 0x6b

    iget v4, v1, Landroid/os/Message;->arg1:I

    iget v1, v1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v3, v4, v1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->commit(Landroid/os/Message;)V

    goto :goto_2

    .line 324
    :cond_12
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    .line 325
    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v3, 0x6a

    iget v4, v1, Landroid/os/Message;->arg1:I

    iget v6, v1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v3, v4, v6}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 326
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 327
    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->commit(Landroid/os/Message;)V

    goto :goto_2

    .line 311
    :cond_13
    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v7, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mClient:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType1:[J

    aget-wide v11, v0, v6

    iget v13, v1, Landroid/os/Message;->arg1:I

    invoke-virtual/range {v7 .. v13}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getImsNetworkIdentifiers(ZZIJI)V

    goto :goto_2

    .line 319
    :cond_14
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    .line 320
    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v3, 0x67

    iget v4, v1, Landroid/os/Message;->arg1:I

    iget v1, v1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v3, v4, v1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->commit(Landroid/os/Message;)V

    goto :goto_2

    .line 314
    :cond_15
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    .line 315
    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v3, 0x66

    iget v4, v1, Landroid/os/Message;->arg1:I

    iget v1, v1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v3, v4, v1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->commit(Landroid/os/Message;)V

    goto :goto_2

    .line 304
    :cond_16
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    .line 305
    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v3, 0x65

    iget v4, v1, Landroid/os/Message;->arg1:I

    iget v6, v1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v3, v4, v6}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 306
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 307
    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->commit(Landroid/os/Message;)V

    :goto_2
    return v5

    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_a
        0x8 -> :sswitch_9
        0x9 -> :sswitch_8
        0xa -> :sswitch_7
        0xb -> :sswitch_6
        0xf -> :sswitch_5
        0x3f7 -> :sswitch_4
        0x3fc -> :sswitch_3
        0x3fe -> :sswitch_2
        0x40d -> :sswitch_1
        0x40e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6a
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
