.class Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$PhoneStateListenerInternal;
.super Landroid/telephony/PhoneStateListener;
.source "TmoEcholocateIntentBroadcaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneStateListenerInternal"
.end annotation


# instance fields
.field mPhoneId:I

.field mState:I

.field mSubId:I

.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;II)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 119
    iput p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$PhoneStateListenerInternal;->mSubId:I

    .line 120
    iput p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$PhoneStateListenerInternal;->mPhoneId:I

    const/4 p1, 0x0

    .line 121
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$PhoneStateListenerInternal;->mState:I

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3

    .line 139
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$PhoneStateListenerInternal;->mState:I

    if-eq v0, p1, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->-$$Nest$fputmCallOffhook(Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;Z)V

    goto :goto_0

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->-$$Nest$fputmCallOffhook(Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;Z)V

    if-nez p1, :cond_1

    .line 144
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->-$$Nest$fgetmModule(Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;)Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    move-result-object v0

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$PhoneStateListenerInternal;->mPhoneId:I

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSessionCount(I)I

    move-result v0

    if-nez v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;

    invoke-static {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->-$$Nest$fputmCallState(Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;I)V

    .line 146
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->-$$Nest$fgetmEPSFBsuccess(Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;)[Z

    move-result-object v0

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$PhoneStateListenerInternal;->mPhoneId:I

    aput-boolean v1, v0, v2

    .line 147
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->-$$Nest$fgetmRetryINVITE(Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;)[Z

    move-result-object v0

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$PhoneStateListenerInternal;->mPhoneId:I

    aput-boolean v1, v0, v2

    .line 148
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->-$$Nest$fputmDiffTime(Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;J)V

    .line 149
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->-$$Nest$fgetmPendingQue(Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 153
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCallStateChanged["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$PhoneStateListenerInternal;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$PhoneStateListenerInternal;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCallOffhook:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->-$$Nest$fgetmCallOffhook(Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " Number ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EcholocateBroadcaster"

    .line 153
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$PhoneStateListenerInternal;->mState:I

    .line 156
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;

    const/4 v1, 0x4

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$PhoneStateListenerInternal;->mPhoneId:I

    invoke-virtual {v0, v1, p0, p1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    const-wide/16 p1, 0x3e8

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 0

    if-nez p1, :cond_0

    const/16 p1, 0x14

    if-ne p2, p1, :cond_0

    .line 163
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;

    const/4 p2, 0x6

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$PhoneStateListenerInternal;->mPhoneId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 127
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->-$$Nest$fgetmSignalStrength(Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;)[Lcom/sec/internal/helper/os/SignalStrengthWrapper;

    move-result-object v0

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$PhoneStateListenerInternal;->mPhoneId:I

    new-instance v1, Lcom/sec/internal/helper/os/SignalStrengthWrapper;

    invoke-direct {v1, p1}, Lcom/sec/internal/helper/os/SignalStrengthWrapper;-><init>(Landroid/telephony/SignalStrength;)V

    aput-object v1, v0, p0

    goto :goto_0

    :cond_0
    const-string p0, "EcholocateBroadcaster"

    const-string p1, "getLteSignalStrength is null"

    .line 129
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
