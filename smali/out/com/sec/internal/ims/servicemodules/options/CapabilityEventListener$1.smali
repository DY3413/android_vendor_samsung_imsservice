.class Lcom/sec/internal/ims/servicemodules/options/CapabilityEventListener$1;
.super Ljava/lang/Object;
.source "CapabilityEventListener.java"

# interfaces
.implements Landroid/telephony/ims/stub/CapabilityExchangeEventListener$OptionsRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/servicemodules/options/CapabilityEventListener;->onCapabilityUpdate(Ljava/util/List;Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityEventListener;

.field final synthetic val$event:Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;

.field final synthetic val$uris:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityEventListener;Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 73
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityEventListener$1;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityEventListener;

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityEventListener$1;->val$event:Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;

    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityEventListener$1;->val$uris:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRespondToCapabilityRequest(Landroid/telephony/ims/RcsContactUceCapability;Z)V
    .registers 10

    .line 76
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityEventListener$1;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityEventListener;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityEventListener;->-$$Nest$fgetmCapabilityDiscovery(Lcom/sec/internal/ims/servicemodules/options/CapabilityEventListener;)Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getOptionsModule()Lcom/sec/internal/ims/servicemodules/options/OptionsModule;

    move-result-object v1

    new-instance v2, Lcom/sec/ims/util/ImsUri;

    .line 77
    invoke-virtual {p1}, Landroid/telephony/ims/RcsContactUceCapability;->getContactUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/sec/ims/util/ImsUri;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_1e

    .line 79
    invoke-virtual {p1}, Landroid/telephony/ims/RcsContactUceCapability;->getFeatureTags()Ljava/util/Set;

    move-result-object p1

    goto :goto_1f

    :cond_1e
    const/4 p1, 0x0

    :goto_1f
    move-object v3, p1

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityEventListener$1;->val$event:Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getTxId()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityEventListener$1;->val$event:Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getLastSeen()I

    move-result v5

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityEventListener$1;->val$event:Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;

    .line 80
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getPhoneId()I

    move-result v6

    .line 76
    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/servicemodules/options/OptionsModule;->sendCapexResponse(Lcom/sec/ims/util/ImsUri;Ljava/util/Set;Ljava/lang/String;II)Z

    return-void
.end method

.method public onRespondToCapabilityRequestWithError(ILjava/lang/String;)V
    .registers 10

    .line 85
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityEventListener$1;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityEventListener;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityEventListener;->-$$Nest$fgetmCapabilityDiscovery(Lcom/sec/internal/ims/servicemodules/options/CapabilityEventListener;)Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getOptionsModule()Lcom/sec/internal/ims/servicemodules/options/OptionsModule;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityEventListener$1;->val$uris:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/sec/ims/util/ImsUri;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityEventListener$1;->val$event:Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getTxId()Ljava/lang/String;

    move-result-object v3

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityEventListener$1;->val$event:Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getPhoneId()I

    move-result v4

    move v5, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/servicemodules/options/OptionsModule;->sendCapexErrorResponse(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;IILjava/lang/String;)Z

    return-void
.end method
