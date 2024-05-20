.class Lcom/sec/internal/ims/core/handler/secims/UserAgent$EmergencyState;
.super Lcom/sec/internal/helper/State;
.source "UserAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/handler/secims/UserAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmergencyState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V
    .locals 0

    .line 2017
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EmergencyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-direct {p0}, Lcom/sec/internal/helper/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$EmergencyState-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EmergencyState;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .line 2020
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EmergencyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/internal/helper/State;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " enter."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "UserAgent"

    invoke-static {v1, v0, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2028
    iget v2, v1, Landroid/os/Message;->what:I

    const/4 v3, 0x6

    const-string v4, "UserAgent"

    if-eq v2, v3, :cond_a

    const/16 v3, 0xa

    if-eq v2, v3, :cond_9

    const/16 v3, 0x17

    const-string v4, "result"

    const-string v5, "sessionId"

    if-eq v2, v3, :cond_8

    const/16 v3, 0x25

    if-eq v2, v3, :cond_7

    const/16 v3, 0x33

    if-eq v2, v3, :cond_6

    const/16 v3, 0x66

    if-eq v2, v3, :cond_5

    const/16 v3, 0x3e9

    if-eq v2, v3, :cond_4

    const/16 v3, 0xe

    if-eq v2, v3, :cond_3

    const/16 v3, 0xf

    if-eq v2, v3, :cond_2

    const/16 v3, 0x6d

    if-eq v2, v3, :cond_1

    const/16 v3, 0x6e

    if-eq v2, v3, :cond_0

    packed-switch v2, :pswitch_data_0

    const/4 v0, 0x0

    goto/16 :goto_1

    .line 2110
    :pswitch_0
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 2111
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EmergencyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmStackIf(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v0

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "reason"

    .line 2112
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 2111
    invoke-interface {v0, v2, v1}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->rejectModifyCallType(II)V

    goto/16 :goto_0

    .line 2103
    :pswitch_1
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 2104
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EmergencyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmStackIf(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v6

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string v0, "reqType"

    .line 2105
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string v0, "curType"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    const-string v0, "repType"

    .line 2106
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    const-string v0, "cmcCallTime"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2104
    invoke-interface/range {v6 .. v11}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->replyModifyCallType(IIIILjava/lang/String;)V

    goto/16 :goto_0

    .line 2097
    :pswitch_2
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 2098
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EmergencyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmStackIf(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v0

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "oldType"

    .line 2099
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "newType"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 2098
    invoke-interface {v0, v2, v3, v1}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->modifyCallType(III)V

    goto/16 :goto_0

    .line 2087
    :cond_0
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EmergencyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmStackIf(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v1

    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EmergencyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmHandle(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v0

    invoke-interface {v1, v0}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->stopLocalRingBackTone(I)V

    goto/16 :goto_0

    .line 2081
    :cond_1
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 2082
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EmergencyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmStackIf(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v5

    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EmergencyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmHandle(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v6

    const-string/jumbo v0, "streamType"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string/jumbo v0, "volume"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string/jumbo v0, "toneType"

    .line 2083
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/os/Message;

    .line 2082
    invoke-interface/range {v5 .. v10}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->startLocalRingBackTone(IIIILandroid/os/Message;)V

    goto/16 :goto_0

    .line 2057
    :cond_2
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EmergencyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmStackIf(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v2

    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EmergencyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmHandle(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v0

    iget v3, v1, Landroid/os/Message;->arg1:I

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/constants/ims/SipReason;

    const/4 v4, 0x0

    invoke-interface {v2, v0, v3, v1, v4}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->endCall(IILcom/sec/internal/constants/ims/SipReason;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2039
    :cond_3
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 2040
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EmergencyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmStackIf(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v5

    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EmergencyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmHandle(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v6

    const-string v2, "destUri"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v2, "origUri"

    .line 2041
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v2, "type"

    .line 2042
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    const-string v2, "dispName"

    .line 2043
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v2, "dialedNumber"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EmergencyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmUaProfile(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    move-result-object v2

    .line 2044
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getPcscfIp()Ljava/lang/String;

    move-result-object v12

    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EmergencyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmUaProfile(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getPcscfPort()I

    move-result v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v0, "PEmergencyInfo"

    .line 2045
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const-string v0, "alertInfo"

    .line 2046
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v0, "isLteEpsOnlyAttached"

    .line 2047
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v19

    const-string v0, "p2p"

    .line 2048
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v20

    const-string v0, "cmcBoundSessionId"

    .line 2049
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v21

    const-string v0, "composer_data"

    .line 2050
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v22

    const-string v0, "replaceCallId"

    .line 2051
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string v0, "cmcEdCallSlot"

    .line 2052
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v24

    .line 2053
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object/from16 v25, v0

    check-cast v25, Landroid/os/Message;

    .line 2040
    invoke-interface/range {v5 .. v25}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->makeCall(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;ZLjava/util/List;ILandroid/os/Bundle;Ljava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 2075
    :cond_4
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 2076
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EmergencyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmStackIf(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v2

    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EmergencyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmHandle(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v0

    const-string/jumbo v3, "target"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "event"

    .line 2077
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "eventType"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 2076
    invoke-interface {v2, v0, v3, v4, v1}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->sendMediaEvent(IIII)V

    goto/16 :goto_0

    .line 2061
    :cond_5
    iget v2, v1, Landroid/os/Message;->arg1:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_b

    .line 2062
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 2063
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EmergencyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0, v2, v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$mupdateRouteTable(Lcom/sec/internal/ims/core/handler/secims/UserAgent;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 2091
    :cond_6
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 2092
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EmergencyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmStackIf(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v2

    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EmergencyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmHandle(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v0

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "text"

    .line 2093
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "len"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 2092
    invoke-interface {v2, v0, v3, v4, v1}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->sendText(IILjava/lang/String;I)V

    goto/16 :goto_0

    .line 2116
    :cond_7
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 2117
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EmergencyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmStackIf(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v6

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string v0, "action"

    .line 2118
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string v0, "codecType"

    .line 2119
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    const-string v0, "cause"

    .line 2120
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    const-string v0, "reasonText"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2117
    invoke-interface/range {v6 .. v11}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->updateCall(IIIILjava/lang/String;)V

    goto :goto_0

    .line 2068
    :cond_8
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 2069
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EmergencyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmStackIf(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v6

    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EmergencyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmHandle(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v7

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string v0, "code"

    .line 2070
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    const-string v0, "mode"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    const-string v0, "operation"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 2071
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/os/Message;

    .line 2069
    invoke-interface/range {v6 .. v12}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->handleDtmf(IIIIILandroid/os/Message;)V

    goto :goto_0

    .line 2034
    :cond_9
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EmergencyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v1

    const-string v2, "deregister is not required for emergency call. delete UA."

    invoke-static {v4, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 2035
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EmergencyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 2030
    :cond_a
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EmergencyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v0

    const-string v1, "register is not required for emergency call."

    invoke-static {v4, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :cond_b
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :pswitch_data_0
    .packed-switch 0x68
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
