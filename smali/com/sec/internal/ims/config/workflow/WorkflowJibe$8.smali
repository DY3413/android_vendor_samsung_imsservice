.class Lcom/sec/internal/ims/config/workflow/WorkflowJibe$8;
.super Lcom/sec/internal/ims/config/workflow/WorkflowBase$Store;
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

    .line 793
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$8;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Store;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowBase;)V

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

    .line 796
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$8;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v2, "Store:"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 797
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$8;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/SharedInfo;->getParsedXml()Ljava/util/Map;

    move-result-object v1

    .line 798
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$8;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    .line 799
    invoke-virtual {v4}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getVersion()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$8;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    invoke-virtual {v4, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getVersion(Ljava/util/Map;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-string v4, "Store: version [%d] => [%d]"

    .line 798
    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$8;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->getRcsDisabledState(Ljava/util/Map;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v0

    .line 802
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$8;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->isValidRcsDisabledState(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)Z

    move-result v2

    const/16 v3, 0x8

    if-eqz v2, :cond_0

    .line 803
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$8;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    invoke-virtual {v2, v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->setOpMode(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;Ljava/util/Map;)V

    .line 804
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$8;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object p0

    return-object p0

    .line 807
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler$UserAccept;->ACCEPT:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler$UserAccept;

    .line 808
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$8;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsPreConsent(I)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$8;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isEmeasewaoce()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 809
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$8;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->getUserAcceptDetailed(Ljava/util/Map;)Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler$UserAccept;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v0

    .line 811
    :goto_0
    sget-object v4, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler$UserAccept;->NON_DEFAULT_MSG_APP:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler$UserAccept;

    if-ne v2, v4, :cond_2

    .line 812
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$8;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    sget-object v4, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_RCS_BY_USER:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    const/4 v7, 0x0

    invoke-virtual {v1, v4, v7}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->setOpMode(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;Ljava/util/Map;)V

    goto :goto_2

    .line 814
    :cond_2
    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$8;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget-object v4, v4, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    if-ne v2, v0, :cond_3

    move v7, v6

    goto :goto_1

    :cond_3
    move v7, v5

    :goto_1
    sget-object v8, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v4, v7, v1, v8}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->setOpModeWithUserAccept(ZLjava/util/Map;Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)V

    .line 816
    :goto_2
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$8;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getOpMode()Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v1

    sget-object v4, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->ACTIVE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    if-eq v1, v4, :cond_4

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$8;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    .line 817
    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getOpMode()Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v1

    sget-object v4, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    if-ne v1, v4, :cond_5

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$8;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getValidity()I

    move-result v1

    if-lez v1, :cond_5

    .line 818
    :cond_4
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$8;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getValidity()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setValidityTimer(I)V

    .line 820
    :cond_5
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$8;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mMsisdnHandler:Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;

    invoke-virtual {v1, v5}, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->setMsisdnSkipCount(I)V

    .line 821
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$8;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    if-ne v2, v0, :cond_6

    move v5, v6

    :cond_6
    invoke-virtual {v1, v5}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setTcUserAccept(I)V

    .line 822
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$8;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object p0

    return-object p0
.end method
