.class Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController$1;
.super Landroid/os/Handler;
.source "ImsMediaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/helper/SimpleEventLog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;Landroid/os/Looper;)V
    .registers 3

    .line 85
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController$1;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 88
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 89
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 91
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_d

    goto :goto_16

    .line 93
    :cond_d
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController$1;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;

    iget-object p1, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->-$$Nest$monImsMediaEvent(Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V

    :goto_16
    return-void
.end method
