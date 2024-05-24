.class public Lcom/sec/internal/ims/servicemodules/base/ModuleChannel;
.super Ljava/lang/Object;
.source "ModuleChannel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/base/ModuleChannel$Listener;
    }
.end annotation


# static fields
.field public static final CAPDISCOVERY:Ljava/lang/String; = "CapabilityDiscoveryModule"

.field public static final EVT_CAPDISCOVERY_DISABLE_FEATURE:I = 0x1f42

.field public static final EVT_CAPDISCOVERY_ENABLE_FEATURE:I = 0x1f41

.field public static final EVT_MODULE_CHANNEL_BASE:I = 0x1f40

.field public static final EVT_MODULE_CHANNEL_RESPONSE:I = 0x2327


# instance fields
.field protected mDst:Landroid/os/Handler;

.field protected mSrc:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/os/Handler;Landroid/os/Handler;)V
    .registers 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/base/ModuleChannel;->mSrc:Landroid/os/Handler;

    .line 27
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/base/ModuleChannel;->mDst:Landroid/os/Handler;

    return-void
.end method

.method public static createChannel(Ljava/lang/String;Landroid/os/Handler;)Lcom/sec/internal/ims/servicemodules/base/ModuleChannel;
    .registers 4

    .line 22
    new-instance v0, Lcom/sec/internal/ims/servicemodules/base/ModuleChannel;

    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getServiceModuleHandler(Ljava/lang/String;)Landroid/os/Handler;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lcom/sec/internal/ims/servicemodules/base/ModuleChannel;-><init>(Landroid/os/Handler;Landroid/os/Handler;)V

    return-object v0
.end method


# virtual methods
.method public disableFeature(J)V
    .registers 4

    .line 46
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/base/ModuleChannel;->mDst:Landroid/os/Handler;

    const/16 v0, 0x1f42

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p0, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 47
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public sendEvent(ILjava/lang/Object;Lcom/sec/internal/ims/servicemodules/base/ModuleChannel$Listener;)V
    .registers 5

    .line 31
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/base/ModuleChannel;->mDst:Landroid/os/Handler;

    invoke-static {v0, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 32
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/base/ModuleChannel;->mSrc:Landroid/os/Handler;

    if-eqz p0, :cond_1f

    if-eqz p3, :cond_1f

    const/16 p2, 0x2327

    .line 33
    invoke-static {p0, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 35
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string p3, "callback_msg"

    .line 36
    invoke-virtual {p2, p3, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 37
    invoke-virtual {p1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 40
    :cond_1f
    invoke-virtual {p1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object p0

    if-eqz p0, :cond_28

    .line 41
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_28
    return-void
.end method
