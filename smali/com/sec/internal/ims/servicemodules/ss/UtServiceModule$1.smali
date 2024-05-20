.class Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$1;
.super Lcom/sec/ims/IImsRegistrationListener$Stub;
.source "UtServiceModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-direct {p0}, Lcom/sec/ims/IImsRegistrationListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeregistered(Lcom/sec/ims/ImsRegistration;Lcom/sec/ims/ImsRegistrationError;)V
    .locals 0

    .line 207
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->isSoftphoneEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 208
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->unbindSoftPhoneService()V

    :cond_0
    return-void
.end method

.method public onRegistered(Lcom/sec/ims/ImsRegistration;)V
    .locals 4

    .line 187
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    .line 188
    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 189
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->hasVolteService()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 190
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getimpi(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 191
    sget-object v2, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_0

    .line 192
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getimpi(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-virtual {v3, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getImpuOfType(Lcom/sec/ims/ImsRegistration;)Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->setLastUri(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)V

    goto :goto_0

    .line 194
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getimpi(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPreferredImpu()Lcom/sec/ims/util/NameAddr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->setLastUri(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)V

    .line 198
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->isSoftphoneEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 199
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->bindSoftPhoneService()V

    .line 200
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->-$$Nest$fgetsmUtMap(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;)Ljava/util/HashMap;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->makeConfig(I)Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->makeFeature(I)Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->updateConfig(Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;)V

    .line 201
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->updateCapabilities(I)V

    :cond_2
    return-void
.end method
