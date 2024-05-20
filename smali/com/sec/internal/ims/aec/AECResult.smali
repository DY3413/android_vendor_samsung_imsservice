.class public Lcom/sec/internal/ims/aec/AECResult;
.super Ljava/lang/Object;
.source "AECResult.java"


# instance fields
.field private mAkaTokenReady:[Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/sec/internal/ims/aec/AECResult;->mAkaTokenReady:[Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 28
    iput-object p1, p0, Lcom/sec/internal/ims/aec/AECResult;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static handleUtSwitch(IZ)V
    .locals 1

    .line 52
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getUtServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    invoke-interface {v0, p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;->enableUt(IZ)V

    :cond_0
    return-void
.end method

.method public static sendDeRegister(Landroid/content/Context;I)V
    .locals 1

    .line 42
    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/sec/internal/helper/DmConfigHelper;->getImsUserSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_0

    .line 44
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->isReady()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 45
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p0

    const/16 v0, 0x90

    .line 46
    invoke-interface {p0, v0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->sendDeregister(II)V

    :cond_0
    return-void
.end method

.method public static sendTryRegister(Landroid/content/Context;I)V
    .locals 1

    .line 32
    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/sec/internal/helper/DmConfigHelper;->getImsUserSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_0

    .line 34
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->isReady()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 35
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p0

    .line 36
    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->requestTryRegister(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected getAkaTokenReady(I)Z
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/sec/internal/ims/aec/AECResult;->mAkaTokenReady:[Ljava/util/concurrent/atomic/AtomicBoolean;

    aget-object p0, p0, p1

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method protected handleCompletedEntitlementVoLTE(Landroid/os/Message;)V
    .locals 5

    .line 72
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    const-string/jumbo v1, "volteAutoOn"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 73
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    const-string/jumbo v3, "volteEntitlementstatus"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 74
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string/jumbo v4, "version"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ltz v3, :cond_0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 77
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/aec/AECResult;->handleVoiceCallType(II)V

    .line 78
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v3}, Lcom/sec/internal/ims/aec/AECResult;->handleUtSwitch(IZ)V

    .line 79
    iget-object p0, p0, Lcom/sec/internal/ims/aec/AECResult;->mContext:Landroid/content/Context;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/sec/internal/ims/aec/AECResult;->sendTryRegister(Landroid/content/Context;I)V

    goto :goto_0

    .line 81
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v2}, Lcom/sec/internal/ims/aec/AECResult;->handleUtSwitch(IZ)V

    .line 82
    iget-object p0, p0, Lcom/sec/internal/ims/aec/AECResult;->mContext:Landroid/content/Context;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/sec/internal/ims/aec/AECResult;->sendDeRegister(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method

.method protected handleCompletedEntitlementVoWIFI(Landroid/os/Message;)V
    .locals 3

    .line 87
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    if-eqz p1, :cond_0

    .line 89
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.imsservice.aec.action.COMPLETED_ENTITLEMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "phoneId"

    .line 91
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 90
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "version"

    .line 93
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 92
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "http_response"

    .line 95
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 94
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "vowifiAutoOn"

    .line 97
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 96
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "vowifiActivationMode"

    .line 99
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 98
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "serviceflow_url"

    .line 101
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 100
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "serviceflow_userdata"

    .line 103
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 102
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "vowifiMessageForIncompatible"

    .line 105
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 104
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    iget-object p0, p0, Lcom/sec/internal/ims/aec/AECResult;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/sec/internal/helper/os/IntentUtil;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method protected handleVoiceCallType(II)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 60
    iget-object p0, p0, Lcom/sec/internal/ims/aec/AECResult;->mContext:Landroid/content/Context;

    invoke-static {p0, v0, p2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setVoiceCallType(Landroid/content/Context;II)V

    goto :goto_0

    .line 62
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/aec/AECResult;->mContext:Landroid/content/Context;

    const/4 v1, -0x1

    invoke-static {p1, v1, p2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getVoiceCallType(Landroid/content/Context;II)I

    move-result p1

    if-ne p1, v1, :cond_1

    .line 64
    iget-object p0, p0, Lcom/sec/internal/ims/aec/AECResult;->mContext:Landroid/content/Context;

    invoke-static {p0, v0, p2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setVoiceCallType(Landroid/content/Context;II)V

    goto :goto_0

    .line 66
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/aec/AECResult;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setVoiceCallType(Landroid/content/Context;II)V

    :goto_0
    return-void
.end method

.method protected setAkaTokenReady(IZ)V
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/sec/internal/ims/aec/AECResult;->mAkaTokenReady:[Ljava/util/concurrent/atomic/AtomicBoolean;

    aget-object p0, p0, p1

    invoke-virtual {p0, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method protected updateAkaToken(II)V
    .locals 2

    .line 119
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/aec/AECResult;->getAkaTokenReady(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 120
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/aec/AECResult;->setAkaTokenReady(IZ)V

    .line 121
    new-instance p1, Landroid/content/Intent;

    const-string v1, "com.samsung.nsds.action.AKA_TOKEN_RETRIEVED"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0xc8

    if-ne p2, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    const-string p2, "request_status"

    .line 122
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "com.samsung.android.geargplugin"

    .line 123
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    iget-object p0, p0, Lcom/sec/internal/ims/aec/AECResult;->mContext:Landroid/content/Context;

    const-string p2, "com.sec.imsservice.permission.RECEIVE_AKA_TOKEN"

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
