.class Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$3;
.super Landroid/content/BroadcastReceiver;
.source "OMANetAPIHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->registerLowStorageReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;)V
    .locals 0

    .line 855
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$3;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 858
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$3;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    const/16 p1, 0xd

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
