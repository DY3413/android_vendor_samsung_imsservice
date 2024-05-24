.class final Lcom/sec/internal/ims/core/iil/IpcDispatcherHidl$SecChannelProxyDeathRecipient;
.super Ljava/lang/Object;
.source "IpcDispatcherHidl.java"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/iil/IpcDispatcherHidl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SecChannelProxyDeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/iil/IpcDispatcherHidl;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/iil/IpcDispatcherHidl;)V
    .registers 2

    .line 65
    iput-object p1, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcherHidl$SecChannelProxyDeathRecipient;->this$0:Lcom/sec/internal/ims/core/iil/IpcDispatcherHidl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serviceDied(J)V
    .registers 3

    .line 68
    iget-object p0, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcherHidl$SecChannelProxyDeathRecipient;->this$0:Lcom/sec/internal/ims/core/iil/IpcDispatcherHidl;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->notifyChannelProxyDied(J)V

    return-void
.end method
