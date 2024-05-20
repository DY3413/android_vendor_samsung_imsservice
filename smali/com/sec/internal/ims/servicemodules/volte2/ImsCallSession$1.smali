.class Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession$1;
.super Landroid/os/Handler;
.source "ImsCallSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;-><init>(Landroid/content/Context;Lcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/ImsRegistration;Landroid/os/Looper;Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Landroid/os/Looper;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession$1;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 226
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 230
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 241
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession$1;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mImsCallSessionEventHandler:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->onReferStatus(Lcom/sec/internal/helper/AsyncResult;)V

    goto :goto_0

    .line 245
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 246
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent;

    .line 247
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession$1;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rrcEvent.getEvent() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent;->getEvent()Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent$RrcEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession$1;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/sec/internal/constants/Mno;->DOCOMO:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/sec/internal/constants/Mno;->SWISSCOM:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_6

    .line 249
    :cond_2
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent;->getEvent()Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent$RrcEvent;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent$RrcEvent;->REJECTED:Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent$RrcEvent;

    if-eq v0, v1, :cond_3

    .line 250
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent;->getEvent()Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent$RrcEvent;

    move-result-object p1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent$RrcEvent;->TIMER_EXPIRED:Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent$RrcEvent;

    if-ne p1, v0, :cond_6

    .line 251
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession$1;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 p1, 0x191

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 237
    :cond_4
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession$1;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mImsCallSessionEventHandler:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->onImsMediaEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V

    goto :goto_0

    .line 232
    :cond_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 233
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession$1;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->onImsCallEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;)V

    :cond_6
    :goto_0
    return-void
.end method
