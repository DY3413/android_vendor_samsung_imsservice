.class public Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$AlertingCall;
.super Lcom/sec/internal/ims/servicemodules/volte2/ImsAlertingCall;
.source "ImsEmergencySession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AlertingCall"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V
    .locals 0

    .line 657
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$AlertingCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    .line 658
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsAlertingCall;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V

    return-void
.end method

.method private onLte911Fail(Landroid/os/Message;)Z
    .locals 2

    .line 705
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isCanada()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->VODAFONE_UK:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_1

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 706
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[AlertingCall] Ignore ON_LTE_911_FAIL"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsAlertingCall;->processMessage(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method private onSessionProgress(Landroid/os/Message;)Z
    .locals 2

    .line 698
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$AlertingCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->-$$Nest$mneedRemoveTimerOn18X(Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 699
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$AlertingCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->mThisEsm:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    const/16 v1, 0x12f

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 701
    :cond_0
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsAlertingCall;->processMessage(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public enter()V
    .locals 6

    .line 663
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[AlertingCall] enter "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$AlertingCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 665
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$AlertingCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->mThisEsm:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    const/16 v2, 0x133

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 666
    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x12f

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isTmobile()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$AlertingCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->mThisEsm:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    invoke-virtual {v0, v2}, Lcom/sec/internal/helper/StateMachine;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$AlertingCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    .line 667
    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->-$$Nest$mneedStartTimerOnAlerting(Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 668
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$AlertingCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->getLte911FailFromEmergencyProfile()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v3, 0x3e8

    mul-long/2addr v0, v3

    .line 669
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$AlertingCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->mThisEsm:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    invoke-virtual {v3, v2}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 670
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[AlertingCall] refresh Tlte_911fail timer : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " millis."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$AlertingCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->mThisEsm:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    invoke-virtual {v3, v2, v0, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(IJ)V

    .line 673
    :cond_2
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsAlertingCall;->enter()V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3

    .line 678
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AlertingCall] processMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x20

    if-eq v0, v1, :cond_2

    const/16 v1, 0x132

    if-eq v0, v1, :cond_1

    const/16 v1, 0x22

    if-eq v0, v1, :cond_2

    const/16 v1, 0x23

    if-eq v0, v1, :cond_2

    const/16 v1, 0x12f

    if-eq v0, v1, :cond_0

    const/16 v1, 0x130

    if-eq v0, v1, :cond_1

    .line 693
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsAlertingCall;->processMessage(Landroid/os/Message;)Z

    move-result p0

    return p0

    .line 686
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$AlertingCall;->onLte911Fail(Landroid/os/Message;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0

    .line 683
    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$AlertingCall;->onSessionProgress(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method
