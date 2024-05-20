.class Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$3;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "CapabilityProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;)V
    .locals 0

    .line 1004
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$3;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 1

    .line 1007
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$3;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->-$$Nest$fputmIsWifiConnected(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;Z)V

    .line 1008
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mWifiStateListener.onAvailable(): mIsWifiConnected ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$3;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->-$$Nest$fgetmIsWifiConnected(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;)Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CapabilityProvider"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 1

    .line 1013
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$3;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->-$$Nest$fputmIsWifiConnected(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;Z)V

    .line 1014
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mWifiStateListener.onAvailable(): mIsWifiConnected ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$3;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->-$$Nest$fgetmIsWifiConnected(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;)Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CapabilityProvider"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
