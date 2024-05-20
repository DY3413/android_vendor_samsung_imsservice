.class public abstract Lcom/sec/internal/ims/core/handler/CmcHandler;
.super Lcom/sec/internal/ims/core/handler/BaseHandler;
.source "CmcHandler.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/handler/ICmcMediaServiceInterface;


# instance fields
.field protected final mCmcMediaEventRegistrants:Lcom/sec/internal/helper/RegistrantList;


# direct methods
.method protected constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/BaseHandler;-><init>(Landroid/os/Looper;)V

    .line 12
    new-instance p1, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {p1}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/CmcHandler;->mCmcMediaEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 30
    iget v0, p1, Landroid/os/Message;->what:I

    .line 32
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public registerForCmcMediaEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/CmcHandler;->mCmcMediaEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public startCmcRecord(IIIIJILjava/lang/String;IIIIIJLjava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public stopCmcRecord(II)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public unregisterForCmcMediaEvent(Landroid/os/Handler;)V
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/CmcHandler;->mCmcMediaEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method
