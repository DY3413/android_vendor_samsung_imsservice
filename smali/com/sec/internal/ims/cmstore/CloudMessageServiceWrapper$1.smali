.class Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$1;
.super Ljava/lang/Object;
.source "CloudMessageServiceWrapper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)V
    .locals 0

    .line 523
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$1;->this$0:Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .line 527
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$1;->this$0:Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "service connect :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$1;->this$0:Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    invoke-static {p2}, Lcom/sec/ims/ICentralMsgStoreService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/ICentralMsgStoreService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->-$$Nest$fputmCloudMessageService(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;Lcom/sec/ims/ICentralMsgStoreService;)V

    .line 537
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$1;->this$0:Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .line 542
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$1;->this$0:Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "service disconnect :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$1;->this$0:Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->-$$Nest$fputmCloudMessageService(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;Lcom/sec/ims/ICentralMsgStoreService;)V

    return-void
.end method
