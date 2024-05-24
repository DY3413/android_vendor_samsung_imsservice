.class Lcom/sec/internal/imsphone/ImsSmsImpl$1;
.super Landroid/os/Handler;
.source "ImsSmsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/imsphone/ImsSmsImpl;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/imsphone/ImsSmsImpl;


# direct methods
.method constructor <init>(Lcom/sec/internal/imsphone/ImsSmsImpl;Landroid/os/Looper;)V
    .registers 3

    .line 162
    iput-object p1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl$1;->this$0:Lcom/sec/internal/imsphone/ImsSmsImpl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 165
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl$1;->this$0:Lcom/sec/internal/imsphone/ImsSmsImpl;

    invoke-static {v0}, Lcom/sec/internal/imsphone/ImsSmsImpl;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/imsphone/ImsSmsImpl;)Ljava/lang/String;

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

    .line 166
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_45

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3b

    const/4 v1, 0x3

    if-eq v0, v1, :cond_35

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2b

    goto :goto_4e

    .line 177
    :cond_2b
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl$1;->this$0:Lcom/sec/internal/imsphone/ImsSmsImpl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/imsphone/ImsSmsImpl$LastSentDeliveryAck;

    invoke-virtual {p0, p1}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleRetryDeliveryReportAck(Lcom/sec/internal/imsphone/ImsSmsImpl$LastSentDeliveryAck;)V

    goto :goto_4e

    .line 168
    :cond_35
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl$1;->this$0:Lcom/sec/internal/imsphone/ImsSmsImpl;

    invoke-static {p0}, Lcom/sec/internal/imsphone/ImsSmsImpl;->-$$Nest$mhandleSendDelayedMessage(Lcom/sec/internal/imsphone/ImsSmsImpl;)V

    goto :goto_4e

    .line 174
    :cond_3b
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl$1;->this$0:Lcom/sec/internal/imsphone/ImsSmsImpl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;

    invoke-static {p0, p1}, Lcom/sec/internal/imsphone/ImsSmsImpl;->-$$Nest$mhandleNoResponseTimeout(Lcom/sec/internal/imsphone/ImsSmsImpl;Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;)V

    goto :goto_4e

    .line 171
    :cond_45
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl$1;->this$0:Lcom/sec/internal/imsphone/ImsSmsImpl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;

    invoke-static {p0, p1}, Lcom/sec/internal/imsphone/ImsSmsImpl;->-$$Nest$mhandleSmsRetry(Lcom/sec/internal/imsphone/ImsSmsImpl;Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;)V

    :goto_4e
    return-void
.end method
