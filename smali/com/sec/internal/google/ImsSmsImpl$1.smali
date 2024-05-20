.class Lcom/sec/internal/google/ImsSmsImpl$1;
.super Landroid/os/Handler;
.source "ImsSmsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/google/ImsSmsImpl;-><init>(Landroid/content/Context;ILandroid/telephony/ims/aidl/IImsSmsListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/google/ImsSmsImpl;


# direct methods
.method constructor <init>(Lcom/sec/internal/google/ImsSmsImpl;Landroid/os/Looper;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/sec/internal/google/ImsSmsImpl$1;->this$0:Lcom/sec/internal/google/ImsSmsImpl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 206
    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl$1;->this$0:Lcom/sec/internal/google/ImsSmsImpl;

    invoke-static {v0}, Lcom/sec/internal/google/ImsSmsImpl;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/google/ImsSmsImpl;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 218
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/google/ImsSmsImpl$1;->this$0:Lcom/sec/internal/google/ImsSmsImpl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/google/ImsSmsImpl$LastSentDeliveryAck;

    invoke-virtual {p0, p1}, Lcom/sec/internal/google/ImsSmsImpl;->handleRetryDeliveryReportAck(Lcom/sec/internal/google/ImsSmsImpl$LastSentDeliveryAck;)V

    goto :goto_0

    .line 209
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/google/ImsSmsImpl$1;->this$0:Lcom/sec/internal/google/ImsSmsImpl;

    invoke-static {p0}, Lcom/sec/internal/google/ImsSmsImpl;->-$$Nest$mhandleSendDelayedMessage(Lcom/sec/internal/google/ImsSmsImpl;)V

    goto :goto_0

    .line 215
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/google/ImsSmsImpl$1;->this$0:Lcom/sec/internal/google/ImsSmsImpl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;

    invoke-static {p0, p1}, Lcom/sec/internal/google/ImsSmsImpl;->-$$Nest$mhandleNoResponseTimeout(Lcom/sec/internal/google/ImsSmsImpl;Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;)V

    goto :goto_0

    .line 212
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/google/ImsSmsImpl$1;->this$0:Lcom/sec/internal/google/ImsSmsImpl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;

    invoke-static {p0, p1}, Lcom/sec/internal/google/ImsSmsImpl;->-$$Nest$mhandleSmsRetry(Lcom/sec/internal/google/ImsSmsImpl;Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;)V

    :goto_0
    return-void
.end method
