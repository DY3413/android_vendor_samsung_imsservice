.class Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1;
.super Ljava/lang/Object;
.source "CapabilityProvider.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->initCapabilityService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;)V
    .registers 2

    .line 153
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    const-string p1, "Connected to CapabilityDiscoveryService."

    const-string v0, "CapabilityProvider"

    .line 157
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;

    invoke-static {p2}, Lcom/sec/ims/options/ICapabilityService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/options/ICapabilityService;

    move-result-object v1

    iput-object v1, p1, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mService:Lcom/sec/ims/options/ICapabilityService;

    .line 159
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mService:Lcom/sec/ims/options/ICapabilityService;

    if-nez p1, :cond_2a

    .line 160
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Failed to get ICapabilityService with "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 164
    :cond_2a
    :try_start_2a
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result p1

    const/4 p2, 0x0

    :goto_2f
    if-ge p2, p1, :cond_44

    .line 166
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mService:Lcom/sec/ims/options/ICapabilityService;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1$1;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1$1;-><init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1;)V

    invoke-interface {v0, v1, p2}, Lcom/sec/ims/options/ICapabilityService;->registerListener(Lcom/sec/ims/options/ICapabilityServiceEventListener;I)Ljava/lang/String;
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_3d} :catch_40
    .catch Ljava/lang/NullPointerException; {:try_start_2a .. :try_end_3d} :catch_40

    add-int/lit8 p2, p2, 0x1

    goto :goto_2f

    :catch_40
    move-exception p1

    .line 218
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 221
    :cond_44
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->-$$Nest$fgetmReceiver(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;)Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$ShareServiceBroadcastReceiver;

    move-result-object p0

    invoke-static {}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->-$$Nest$smcreateIntentFilter()Landroid/content/IntentFilter;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    const-string p1, "CapabilityProvider"

    const-string v0, "Disconnected."

    .line 226
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mService:Lcom/sec/ims/options/ICapabilityService;

    return-void
.end method
