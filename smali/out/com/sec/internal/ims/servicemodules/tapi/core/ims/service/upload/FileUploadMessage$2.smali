.class Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage$2;
.super Landroid/os/Handler;
.source "FileUploadMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;-><init>(ILandroid/content/Context;Lcom/sec/internal/ims/servicemodules/im/ImConfig;Landroid/os/Looper;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;Landroid/os/Looper;)V
    .registers 3

    .line 215
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage$2;->this$0:Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 219
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 221
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage$2;->this$0:Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->-$$Nest$misUploadCompleted(Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;)Z

    move-result v0

    if-eqz v0, :cond_c

    return-void

    .line 225
    :cond_c
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_7c

    goto :goto_7a

    .line 230
    :pswitch_12
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage$2;->this$0:Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->-$$Nest$fputbRetryEvent(Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;Z)V

    .line 231
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage$2;->this$0:Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->-$$Nest$fgetmRetryCnt(Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;)I

    move-result p1

    const/4 v1, 0x3

    if-ge p1, v1, :cond_32

    .line 232
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage$2;->this$0:Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->-$$Nest$fgetmRetryCnt(Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->-$$Nest$fputmRetryCnt(Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;I)V

    .line 233
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage$2;->this$0:Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->-$$Nest$mtryUpload(Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;)V

    goto :goto_7a

    .line 235
    :cond_32
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage$2;->this$0:Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;

    const/4 p1, -0x1

    invoke-static {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->-$$Nest$mhandleTransferCanceled(Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;II)V

    goto :goto_7a

    :pswitch_39
    const/4 v0, 0x6

    .line 256
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 257
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage$2;->this$0:Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->-$$Nest$mhandleTransferCanceled(Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;II)V

    goto :goto_7a

    .line 250
    :pswitch_47
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_7a

    .line 252
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage$2;->this$0:Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->-$$Nest$mhandleTransferCompleted(Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;Ljava/lang/String;)V

    goto :goto_7a

    .line 245
    :pswitch_53
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage$2;->this$0:Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->-$$Nest$misUploadStated(Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;)Z

    move-result p1

    if-nez p1, :cond_7a

    .line 246
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage$2;->this$0:Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->-$$Nest$mhandleTransferStarted(Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;)V

    goto :goto_7a

    .line 242
    :pswitch_61
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage$2;->this$0:Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->-$$Nest$mhandleProgressUpadate(Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;J)V

    goto :goto_7a

    .line 239
    :pswitch_6f
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage$2;->this$0:Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->-$$Nest$mtryAbort(Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;)V

    goto :goto_7a

    .line 227
    :pswitch_75
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage$2;->this$0:Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->-$$Nest$mtryUpload(Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;)V

    :cond_7a
    :goto_7a
    return-void

    nop

    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_75
        :pswitch_6f
        :pswitch_61
        :pswitch_53
        :pswitch_47
        :pswitch_39
        :pswitch_12
    .end packed-switch
.end method
