.class Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState$1;
.super Ljava/lang/Object;
.source "FtHttpIncomingMessage.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->downloadThumbnail(Ljava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;

.field final synthetic val$size:J


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;J)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 524
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState$1;->this$2:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;

    iput-wide p2, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState$1;->val$size:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCanceled(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;II)V
    .registers 5

    .line 550
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState$1;->this$2:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    const/16 v0, 0x69

    invoke-virtual {p0, v0, p2, p3, p1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public onCompleted(J)V
    .registers 11

    .line 534
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState$1;->val$size:J

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState$1;->this$2:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v3, v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    iget-wide v4, v3, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->FT_SIZE_MARGIN:J

    sub-long v6, v0, v4

    cmp-long v6, p1, v6

    if-ltz v6, :cond_3e

    add-long/2addr v0, v4

    cmp-long v0, p1, v0

    if-gtz v0, :cond_3e

    .line 536
    iget-object v0, v3, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mThumbnailPath:Ljava/lang/String;

    iget-object v1, v3, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mThumbnailContentType:Ljava/lang/String;

    iget-object v2, v3, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFileName:Ljava/lang/String;

    const/16 v3, 0x80

    invoke-static {v0, v1, v2, v3}, Lcom/sec/internal/helper/FilePathGenerator;->renameThumbnail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 539
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState$1;->this$2:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    iput-object v0, v1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mThumbnailPath:Ljava/lang/String;

    .line 540
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    .line 542
    :cond_30
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState$1;->this$2:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    const/16 v0, 0x68

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_47

    :cond_3e
    const/16 p0, 0x6a

    .line 544
    invoke-virtual {v2, p0}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    :goto_47
    return-void
.end method

.method public onProgressUpdate(J)V
    .registers 7

    .line 527
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState$1;->val$size:J

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState$1;->this$2:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;->this$1:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    iget-wide v2, v2, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->FT_SIZE_MARGIN:J

    add-long/2addr v0, v2

    cmp-long p1, p1, v0

    if-lez p1, :cond_18

    const/16 p1, 0x6a

    .line 528
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    :cond_18
    return-void
.end method
