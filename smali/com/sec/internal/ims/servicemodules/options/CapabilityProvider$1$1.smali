.class Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1$1;
.super Lcom/sec/ims/options/ICapabilityServiceEventListener$Stub;
.source "CapabilityProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1$1;->this$1:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1;

    invoke-direct {p0}, Lcom/sec/ims/options/ICapabilityServiceEventListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCapabilitiesChanged(Ljava/util/List;Lcom/sec/ims/options/Capabilities;)V
    .locals 5
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 183
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/util/ImsUri;

    .line 184
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1$1;->this$1:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->-$$Nest$fgetmLastInCallUri(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/helper/UriUtil;->equals(Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/util/ImsUri;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 185
    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->-$$Nest$sfputready_ish(Z)V

    .line 186
    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->-$$Nest$sfputready_vsh(Z)V

    .line 187
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1$1;->this$1:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->-$$Nest$mnotifyInCallServicesChange(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;)V

    :cond_1
    const/4 v1, 0x0

    .line 191
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1$1;->this$1:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mAsyncResults:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/util/ImsUri;

    .line 192
    invoke-static {v3, v0}, Lcom/sec/internal/helper/UriUtil;->equals(Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/util/ImsUri;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v1, v3

    :cond_3
    if-eqz v1, :cond_4

    .line 199
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1$1;->this$1:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mAsyncResults:Ljava/util/Map;

    invoke-interface {v2, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1$1;->this$1:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->-$$Nest$mwakeup(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;)V

    .line 203
    :cond_4
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1$1;->this$1:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;

    invoke-static {v1, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->-$$Nest$mnotifyCapabilityChange(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;Lcom/sec/ims/util/ImsUri;)V

    goto :goto_0

    :cond_5
    return-void
.end method

.method public onCapabilityAndAvailabilityPublished(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onMultipleCapabilitiesChanged(Ljava/util/List;Ljava/util/List;)V
    .locals 0
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onOwnCapabilitiesChanged()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 215
    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->-$$Nest$sfputready_ish(Z)V

    .line 216
    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->-$$Nest$sfputready_vsh(Z)V

    .line 217
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1$1;->this$1:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->-$$Nest$mnotifyOwnServicesChange(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;)V

    .line 218
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1$1;->this$1:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->-$$Nest$mnotifyInCallServicesChange(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;)V

    return-void
.end method
