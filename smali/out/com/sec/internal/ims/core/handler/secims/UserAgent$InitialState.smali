.class Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState;
.super Lcom/sec/internal/helper/State;
.source "UserAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/handler/secims/UserAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InitialState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V
    .registers 2

    .line 1057
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-direct {p0}, Lcom/sec/internal/helper/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 3

    .line 1060
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v1}, Lcom/sec/internal/helper/StateMachine;->getCurrentState()Lcom/sec/internal/helper/IState;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/helper/IState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " enter."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UserAgent"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fputmHandle(Lcom/sec/internal/ims/core/handler/secims/UserAgent;I)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 9

    .line 1067
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1d4

    const/4 v3, 0x3

    const-string v4, "]"

    const-string v5, "UserAgent["

    const-string v6, "UserAgent"

    if-eq v0, v1, :cond_e2

    if-eq v0, v3, :cond_cf

    const/4 v1, 0x4

    if-eq v0, v1, :cond_c8

    const/4 v1, 0x5

    if-eq v0, v1, :cond_aa

    const/16 v1, 0xa

    if-eq v0, v1, :cond_5e

    .line 1129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". current state is "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 1130
    invoke-virtual {p0}, Lcom/sec/internal/helper/StateMachine;->getCurrentState()Lcom/sec/internal/helper/IState;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/helper/IState;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1129
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto/16 :goto_1e9

    .line 1123
    :cond_5e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Event "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " received in  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 1124
    invoke-virtual {v3}, Lcom/sec/internal/helper/StateMachine;->getCurrentState()Lcom/sec/internal/helper/IState;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/helper/IState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " This shouldn\'t be handled here - defer"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1123
    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->deferMessage(Landroid/os/Message;)V

    goto/16 :goto_1e9

    .line 1118
    :cond_aa
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmStackIf(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmHandle(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v0

    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v3, v1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->deleteUA(ILandroid/os/Message;)V

    .line 1119
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    sget-object p1, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->TERMINATING:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$msetDestState(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;)V

    goto/16 :goto_1e9

    .line 1114
    :cond_c8
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->deferMessage(Landroid/os/Message;)V

    goto/16 :goto_1e9

    .line 1109
    :cond_cf
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result p1

    const-string/jumbo v0, "retry UA creation..."

    invoke-static {v6, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1110
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->create()I

    goto/16 :goto_1e9

    .line 1073
    :cond_e2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 1074
    iget-object v0, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;

    .line 1075
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p1, :cond_1c1

    if-eqz v0, :cond_1c1

    .line 1076
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UA created. handle "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;->handle()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " result "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1077
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;->result()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " reason "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;->reason()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1076
    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;->result()I

    move-result p1

    if-nez p1, :cond_19c

    .line 1079
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;->handle()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fputmHandle(Lcom/sec/internal/ims/core/handler/secims/UserAgent;I)V

    .line 1081
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmImsProfile(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->isUicclessEmergency()Z

    move-result p1

    if-eqz p1, :cond_169

    .line 1082
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result p1

    const-string v0, "No need for emergency registration. Move to EmergencyState."

    invoke-static {v6, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1085
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmEmergencyState(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/helper/State;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_172

    .line 1087
    :cond_169
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmReadyState(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/helper/State;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 1090
    :goto_172
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmStackIf(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmHandle(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v0

    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;

    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-direct {v1, v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    invoke-interface {p1, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->registerUaListener(ILcom/sec/internal/ims/core/handler/secims/StackEventListener;)V

    .line 1092
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmListener(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;

    move-result-object p1

    if-eqz p1, :cond_19b

    .line 1093
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmListener(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-interface {p1, p0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;->onCreated(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    :cond_19b
    return v2

    .line 1096
    :cond_19c
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;->reason()I

    move-result p1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_1c1

    .line 1097
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result p1

    const-string v0, "create() failed. notify with null agent"

    invoke-static {v6, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1098
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmListener(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;

    move-result-object p1

    if-eqz p1, :cond_1c0

    .line 1099
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmListener(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;->onCreated(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    :cond_1c0
    return v2

    .line 1104
    :cond_1c1
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result p1

    const-string v0, "create() failed. retry 3 seconds later "

    invoke-static {v6, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1105
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, v3, v0, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(IJ)V

    goto :goto_1e9

    .line 1069
    :cond_1d4
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmStackIf(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmUaProfile(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {p0, v1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->createUA(Lcom/sec/internal/ims/core/handler/secims/UaProfile;Landroid/os/Message;)V

    :goto_1e9
    return v2
.end method
