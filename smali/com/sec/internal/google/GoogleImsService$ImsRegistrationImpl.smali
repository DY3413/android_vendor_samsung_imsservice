.class Lcom/sec/internal/google/GoogleImsService$ImsRegistrationImpl;
.super Landroid/telephony/ims/aidl/IImsRegistration$Stub;
.source "GoogleImsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/google/GoogleImsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsRegistrationImpl"
.end annotation


# instance fields
.field private mPhoneId:I

.field final synthetic this$0:Lcom/sec/internal/google/GoogleImsService;


# direct methods
.method public constructor <init>(Lcom/sec/internal/google/GoogleImsService;I)V
    .locals 0

    .line 1409
    iput-object p1, p0, Lcom/sec/internal/google/GoogleImsService$ImsRegistrationImpl;->this$0:Lcom/sec/internal/google/GoogleImsService;

    invoke-direct {p0}, Landroid/telephony/ims/aidl/IImsRegistration$Stub;-><init>()V

    .line 1410
    iput p2, p0, Lcom/sec/internal/google/GoogleImsService$ImsRegistrationImpl;->mPhoneId:I

    return-void
.end method


# virtual methods
.method public addRegistrationCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .locals 1

    .line 1442
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService$ImsRegistrationImpl;->this$0:Lcom/sec/internal/google/GoogleImsService;

    iget-object v0, v0, Lcom/sec/internal/google/GoogleImsService;->mImsNotifier:Lcom/sec/internal/google/ImsNotifier;

    iget p0, p0, Lcom/sec/internal/google/GoogleImsService$ImsRegistrationImpl;->mPhoneId:I

    invoke-virtual {v0, p0, p1}, Lcom/sec/internal/google/ImsNotifier;->addCallback(ILandroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    return-void
.end method

.method public getRegistrationTechnology()I
    .locals 5

    .line 1418
    iget v0, p0, Lcom/sec/internal/google/GoogleImsService$ImsRegistrationImpl;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getImsRegistrations()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, -0x1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/ImsRegistration;

    if-nez v2, :cond_1

    goto :goto_0

    .line 1422
    :cond_1
    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v3

    iget v4, p0, Lcom/sec/internal/google/GoogleImsService$ImsRegistrationImpl;->mPhoneId:I

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->hasVolteService()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1423
    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v3

    .line 1425
    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 1429
    :cond_2
    invoke-virtual {v3}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getRegiRat()I

    move-result v1

    const/16 v3, 0x12

    if-eq v1, v3, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    .line 1432
    :cond_3
    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getCurrentRat()I

    move-result v1

    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->isEpdgOverCellularData()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/internal/google/GoogleImsService;->getRegistrationTech(IZ)I

    move-result v1

    goto :goto_0

    :cond_4
    return v1
.end method

.method public removeRegistrationCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .locals 1

    .line 1447
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService$ImsRegistrationImpl;->this$0:Lcom/sec/internal/google/GoogleImsService;

    iget-object v0, v0, Lcom/sec/internal/google/GoogleImsService;->mImsNotifier:Lcom/sec/internal/google/ImsNotifier;

    iget p0, p0, Lcom/sec/internal/google/GoogleImsService$ImsRegistrationImpl;->mPhoneId:I

    invoke-virtual {v0, p0, p1}, Lcom/sec/internal/google/ImsNotifier;->removeCallback(ILandroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    return-void
.end method

.method public triggerFullNetworkRegistration(ILjava/lang/String;)V
    .locals 1

    .line 1467
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService$ImsRegistrationImpl;->this$0:Lcom/sec/internal/google/GoogleImsService;

    iget-object v0, v0, Lcom/sec/internal/google/GoogleImsService;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget p0, p0, Lcom/sec/internal/google/GoogleImsService$ImsRegistrationImpl;->mPhoneId:I

    invoke-interface {v0, p0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->requestFullNetworkRegistration(IILjava/lang/String;)V

    return-void
.end method

.method public triggerSipDelegateDeregistration()V
    .locals 1

    .line 1457
    invoke-static {}, Lcom/sec/internal/google/GoogleImsService;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "triggerSipDelegateDeregistration: Postpone the request"

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public triggerUpdateSipDelegateRegistration()V
    .locals 1

    .line 1462
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService$ImsRegistrationImpl;->this$0:Lcom/sec/internal/google/GoogleImsService;

    iget-object v0, v0, Lcom/sec/internal/google/GoogleImsService;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget p0, p0, Lcom/sec/internal/google/GoogleImsService$ImsRegistrationImpl;->mPhoneId:I

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->requestUpdateSipDelegateRegistration(I)V

    return-void
.end method
