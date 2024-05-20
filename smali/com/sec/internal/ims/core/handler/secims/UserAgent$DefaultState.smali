.class Lcom/sec/internal/ims/core/handler/secims/UserAgent$DefaultState;
.super Lcom/sec/internal/helper/State;
.source "UserAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/handler/secims/UserAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V
    .locals 0

    .line 910
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$DefaultState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-direct {p0}, Lcom/sec/internal/helper/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$DefaultState-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$DefaultState;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 1

    .line 913
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$DefaultState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {p0}, Lcom/sec/internal/helper/StateMachine;->getCurrentState()Lcom/sec/internal/helper/IState;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/helper/IState;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " enter."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UserAgent"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 12

    .line 920
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xd

    const/4 v2, 0x0

    const-string v3, "]"

    const-string v4, "UserAgent["

    const/4 v5, 0x1

    if-eq v0, v1, :cond_1

    const/16 v1, 0x29

    if-eq v0, v1, :cond_0

    .line 942
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$DefaultState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected event "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". current state is "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$DefaultState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 943
    invoke-virtual {p0}, Lcom/sec/internal/helper/StateMachine;->getCurrentState()Lcom/sec/internal/helper/IState;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/helper/IState;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 942
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 922
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "result"

    .line 923
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Message;

    .line 924
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    invoke-direct {v0, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 925
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;->startGeneralResponse(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 926
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$DefaultState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmHandle(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result p0

    int-to-long v1, p0

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 927
    invoke-static {v0, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;->addResult(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 928
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;->endGeneralResponse(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->finish(I)V

    .line 929
    invoke-virtual {v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->dataBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;->getRootAsGeneralResponse(Ljava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;

    move-result-object p0

    const/4 v0, 0x0

    .line 930
    invoke-static {p1, p0, v0}, Lcom/sec/internal/helper/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Lcom/sec/internal/helper/AsyncResult;

    .line 931
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 935
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$DefaultState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/internal/helper/State;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " EVENT_DEREGISTERED_TIMEOUT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$DefaultState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmListener(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 937
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$DefaultState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmListener(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$DefaultState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    sget-object v8, Lcom/sec/internal/constants/ims/SipErrorBase;->OK:Lcom/sec/ims/util/SipError;

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-interface/range {v6 .. v11}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;->onDeregistered(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/ims/util/SipError;IZZ)V

    :cond_2
    :goto_0
    move v2, v5

    :goto_1
    return v2
.end method
