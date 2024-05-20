.class Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession$2;
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

    .line 263
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession$2;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 266
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 267
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 269
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 271
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession$2;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mImsCallSessionEventHandler:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    iget-object p1, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->onUssdEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;)V

    :goto_0
    return-void
.end method
