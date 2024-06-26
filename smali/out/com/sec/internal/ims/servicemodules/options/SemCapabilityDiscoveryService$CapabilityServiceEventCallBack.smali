.class Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService$CapabilityServiceEventCallBack;
.super Lcom/sec/ims/options/ICapabilityServiceEventListener$Stub;
.source "SemCapabilityDiscoveryService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CapabilityServiceEventCallBack"
.end annotation


# instance fields
.field mListener:Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener;

.field mPhoneId:I

.field mToken:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener;I)V
    .registers 4

    .line 198
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService$CapabilityServiceEventCallBack;->this$0:Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;

    invoke-direct {p0}, Lcom/sec/ims/options/ICapabilityServiceEventListener$Stub;-><init>()V

    const/4 p1, 0x0

    .line 197
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService$CapabilityServiceEventCallBack;->mToken:Ljava/lang/String;

    .line 199
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService$CapabilityServiceEventCallBack;->mListener:Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener;

    .line 200
    iput p3, p0, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService$CapabilityServiceEventCallBack;->mPhoneId:I

    .line 202
    :try_start_c
    invoke-interface {p2}, Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p0, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_14} :catch_14

    :catch_14
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 251
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService$CapabilityServiceEventCallBack;->this$0:Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService$CapabilityServiceEventCallBack;->mToken:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService$CapabilityServiceEventCallBack;->mPhoneId:I

    invoke-virtual {v0, v1, p0}, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;->unregisterListener(Ljava/lang/String;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_9

    :catch_9
    return-void
.end method

.method public onCapabilitiesChanged(Ljava/util/List;Lcom/sec/ims/options/Capabilities;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/ims/options/Capabilities;",
            ")V"
        }
    .end annotation

    .line 221
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService$CapabilityServiceEventCallBack;->this$0:Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/ims/util/ImsUri;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;->-$$Nest$mbuildSemImsUri(Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;Lcom/sec/ims/util/ImsUri;)Lcom/samsung/android/ims/util/SemImsUri;

    move-result-object p1

    .line 222
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService$CapabilityServiceEventCallBack;->this$0:Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;

    invoke-static {v0, p2}, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;->-$$Nest$mbuildSemCapabilities(Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;Lcom/sec/ims/options/Capabilities;)Lcom/samsung/android/ims/options/SemCapabilities;

    move-result-object p2

    .line 224
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService$CapabilityServiceEventCallBack;->mListener:Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener;

    if-eqz p0, :cond_1f

    .line 226
    :try_start_17
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener;->onCapabilitiesChanged(Lcom/samsung/android/ims/util/SemImsUri;Lcom/samsung/android/ims/options/SemCapabilities;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1a} :catch_1b

    goto :goto_1f

    :catch_1b
    move-exception p0

    .line 228
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1f
    :goto_1f
    return-void
.end method

.method public onCapabilityAndAvailabilityPublished(I)V
    .registers 2

    .line 239
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService$CapabilityServiceEventCallBack;->mListener:Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener;

    if-eqz p0, :cond_c

    .line 241
    :try_start_4
    invoke-interface {p0, p1}, Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener;->onCapabilityAndAvailabilityPublished(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception p0

    .line 243
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_c
    :goto_c
    return-void
.end method

.method public onMultipleCapabilitiesChanged(Ljava/util/List;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sec/ims/options/Capabilities;",
            ">;)V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public onOwnCapabilitiesChanged()V
    .registers 1

    .line 210
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService$CapabilityServiceEventCallBack;->mListener:Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener;

    if-eqz p0, :cond_c

    .line 212
    :try_start_4
    invoke-interface {p0}, Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener;->onOwnCapabilitiesChanged()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception p0

    .line 214
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_c
    :goto_c
    return-void
.end method

.method protected reset()V
    .registers 3

    .line 259
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService$CapabilityServiceEventCallBack;->mListener:Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener;

    invoke-interface {v0}, Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_a
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_a} :catch_a

    :catch_a
    return-void
.end method
