.class public Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;
.super Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;
.source "ImsEmergencySession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReadyToCall"
.end annotation


# instance fields
.field emergencyProfile:Lcom/sec/ims/settings/ImsProfile;

.field final synthetic this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    .line 167
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V

    const/4 p1, 0x0

    .line 164
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->emergencyProfile:Lcom/sec/ims/settings/ImsProfile;

    return-void
.end method

.method private onEmergecyInvite()Z
    .locals 11

    .line 365
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v1

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    .line 366
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getAutomaticMode(I)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 367
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    iget v2, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    const/16 v2, 0x12

    .line 368
    iput v2, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    const/16 v2, 0x13

    .line 370
    iput v2, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    .line 372
    :cond_1
    :goto_0
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    invoke-virtual {v2, v0}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    .line 374
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object v0

    .line 376
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getUrn()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 377
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getUrn()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    goto :goto_1

    .line 379
    :cond_3
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    iget-object v4, v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v4}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v4

    invoke-virtual {v2, v0, v3, v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->buildUri(Ljava/lang/String;Ljava/lang/String;I)Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    .line 382
    :goto_1
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    iget-object v5, v5, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    iget v5, v5, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    sget-object v6, Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;->EMERGENCY:Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;

    invoke-interface {v4, v5, v6}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getImsProfile(ILcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->emergencyProfile:Lcom/sec/ims/settings/ImsProfile;

    const/4 v5, 0x0

    if-nez v4, :cond_4

    .line 384
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string v0, "[ReadyToCall] EmergencyProfile is null!"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    .line 388
    :cond_4
    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mMno:Lcom/sec/internal/constants/Mno;

    .line 389
    sget-object v6, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    const-string v7, "922"

    if-ne v4, v6, :cond_5

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    :cond_5
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    iget v4, v4, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-static {v4}, Lcom/sec/internal/helper/SimUtil;->isDSH(I)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "522"

    .line 390
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_6
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    iget v4, v4, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    .line 391
    invoke-static {v4}, Lcom/sec/internal/helper/SimUtil;->isNoSIM(I)Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    iget-object v6, v6, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    iget v6, v6, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-interface {v4, v6}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isRoaming(I)Z

    move-result v4

    if-nez v4, :cond_8

    .line 392
    :cond_7
    invoke-static {}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->getInstance()Lcom/sec/internal/ims/util/UriGeneratorFactory;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    .line 393
    invoke-virtual {v4}, Lcom/sec/ims/volte2/data/CallProfile;->getOriginatingUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    sget-object v6, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->VOLTE_URI:Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    .line 392
    invoke-virtual {v2, v4, v6}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->get(Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v2

    .line 394
    sget-object v4, Lcom/sec/ims/util/ImsUri$UriType;->SIP_URI:Lcom/sec/ims/util/ImsUri$UriType;

    invoke-virtual {v2, v4, v0}, Lcom/sec/internal/ims/util/UriGenerator;->getNetworkPreferredUri(Lcom/sec/ims/util/ImsUri$UriType;Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    .line 396
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[ReadyToCall] makecall target change to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :cond_8
    new-instance v4, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    iget v7, v6, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    iget-object v6, v6, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    iget-object v6, v6, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    .line 400
    invoke-virtual {v6}, Lcom/sec/ims/volte2/data/CallProfile;->getCLI()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v2, v0, v7, v6}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;-><init>(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;ILjava/lang/String;)V

    .line 401
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->getOriginatingUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->setOriginatingUri(Lcom/sec/ims/util/ImsUri;)V

    .line 402
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-interface {v0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getLteEpsOnlyAttached(I)Z

    move-result v0

    invoke-virtual {v4, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->setLteEpsOnlyAttached(Z)V

    .line 403
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcBoundSessionId()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->setCmcBoundSessionId(I)V

    .line 405
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->-$$Nest$mgetEmergencyRegistration(Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;)Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    const/4 v2, -0x1

    if-eqz v0, :cond_9

    .line 407
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v6

    .line 409
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bind network for MediaEngine "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getNetwork()Landroid/net/Network;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getNetwork()Landroid/net/Network;

    move-result-object v0

    invoke-interface {v7, v0}, Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;->bindToNetwork(Landroid/net/Network;)V

    goto :goto_2

    :cond_9
    move v6, v2

    .line 413
    :goto_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v7, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-eq v0, v7, :cond_a

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->isDSH(I)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->isCSpire(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 414
    :cond_a
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getPdnController()Lcom/sec/internal/interfaces/ims/core/IPdnController;

    move-result-object v0

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    iget-object v7, v7, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    iget v7, v7, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-interface {v0, v7}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEmergencyEpdgConnected(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 415
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    iget v7, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-virtual {v0, v7}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getImei(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v3, v7}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPEmergencyInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->setPEmergencyInfo(Ljava/lang/String;)V

    .line 416
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "e911Aid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->getPEmergencyInfo()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_b
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->-$$Nest$mgetEmergencyUa(Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 422
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IUserAgent;->getNetwork()Landroid/net/Network;

    move-result-object v7

    if-eqz v7, :cond_c

    .line 424
    iget-object v8, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bind network for Emergency VT or RTT "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iget-object v8, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    invoke-interface {v8, v7}, Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;->bindToNetwork(Landroid/net/Network;)V

    .line 428
    :cond_c
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->startEmergencyFailTimer()V

    .line 430
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v8, Lcom/sec/internal/constants/Mno;->YTL:Lcom/sec/internal/constants/Mno;

    const/4 v9, 0x4

    if-ne v7, v8, :cond_e

    if-eqz v0, :cond_e

    .line 431
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IUserAgent;->isRegistering()Z

    move-result v7

    if-nez v7, :cond_d

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IUserAgent;->isDeregistring()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 432
    :cond_d
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    invoke-static {v0, v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->-$$Nest$fputmEmergencyRegistered(Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;Z)V

    .line 433
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->mThisEsm:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    new-instance v0, Lcom/sec/ims/util/SipError;

    const/16 v3, 0x3eb

    const-string v4, "UA is de/registring status"

    invoke-direct {v0, v3, v4}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v9, v5, v2, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return v1

    .line 440
    :cond_e
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    iget-object v7, v7, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    iget v7, v7, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-interface {v0, v6, v4, v3, v7}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->makeCall(ILcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;Ljava/util/HashMap;I)I

    move-result v0

    .line 442
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ReadyToCall] makeCall() returned session id "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-gez v0, :cond_f

    .line 444
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->mThisEsm:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    new-instance v0, Lcom/sec/ims/util/SipError;

    const/16 v3, 0x3ea

    const-string/jumbo v4, "stack return -1."

    invoke-direct {v0, v3, v4}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v9, v5, v2, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return v1

    .line 449
    :cond_f
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcBoundSessionId()I

    move-result v2

    if-lez v2, :cond_10

    .line 451
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v3, v2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 453
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sec/ims/volte2/data/CallProfile;->setCmcBoundSessionId(I)V

    .line 454
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Emergency ReadyToCall] updated boundSessionId : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcBoundSessionId()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 454
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :cond_10
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->setSessionId(I)V

    .line 459
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0, v5}, Lcom/sec/ims/volte2/data/CallProfile;->setDirection(I)V

    .line 461
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mOutgoingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    return v1
.end method

.method private onEnded(Landroid/os/Message;)Z
    .locals 3

    .line 502
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_0

    .line 503
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ReadyToCall] mNextPcscfChangedWorking="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->-$$Nest$fgetmNextPcscfChangedWorking(Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->-$$Nest$fgetmNextPcscfChangedWorking(Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 507
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string p1, "[ReadyToCall] TMO_E911 ON_NEXT_PCSCF_CHANGED is running, so just return"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    .line 511
    :cond_0
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->processMessage(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method private onError(Landroid/os/Message;)Z
    .locals 4

    .line 482
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/ims/util/SipError;

    .line 483
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->YTL:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_0

    .line 484
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->-$$Nest$fgetmEmergencyRegistered(Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isClientError(Lcom/sec/ims/util/SipError;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    sget-object v2, Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;->EMERGENCY:Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;

    .line 486
    invoke-interface {v0, v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getImsProfile(ILcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    .line 487
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->-$$Nest$fgetmRequstedStopPDN(Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    const/16 v1, 0xd

    .line 488
    invoke-virtual {v0, v1}, Lcom/sec/ims/settings/ImsProfile;->getDeregTimeout(I)I

    move-result v0

    .line 489
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Disconnect Emergency PDN."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->stopEmergencyRegistration(I)V

    .line 491
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->-$$Nest$fputmRequstedStopPDN(Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;Z)V

    .line 492
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->mThisEsm:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    const/16 v3, 0x12f

    invoke-virtual {v1, v3}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 493
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->mThisEsm:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    add-int/lit16 v0, v0, 0x1f4

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    return v2

    .line 498
    :cond_0
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->processMessage(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method private onEventEmergencyRegistered(Landroid/os/Message;)Z
    .locals 5

    .line 329
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->-$$Nest$fputmEmergencyRegistered(Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;Z)V

    .line 330
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const v1, 0x3000001f

    invoke-static {v1, p1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 331
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->removeE911RegiTimer()V

    .line 332
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    sget-object v2, Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;->EMERGENCY:Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;

    invoke-interface {p1, v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getImsProfile(ILcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->emergencyProfile:Lcom/sec/ims/settings/ImsProfile;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 334
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string p1, "[ReadyToCall] EmergencyProfile is null!"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 338
    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result p1

    const/16 v2, 0xb

    if-ne p1, v2, :cond_1

    move v1, v0

    :cond_1
    const/16 p1, 0x12f

    if-nez v1, :cond_2

    .line 339
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->emergencyProfile:Lcom/sec/ims/settings/ImsProfile;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-interface {v1, v2, v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->isPdnConnected(Lcom/sec/ims/settings/ImsProfile;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 340
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[ReadyToCall] PDN disconnected. do CSFB"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->mThisEsm:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    invoke-virtual {v1, p1}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 342
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->mThisEsm:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return v0

    .line 346
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->emergencyProfile:Lcom/sec/ims/settings/ImsProfile;

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mMno:Lcom/sec/internal/constants/Mno;

    .line 347
    sget-object v2, Lcom/sec/internal/constants/Mno;->DOCOMO:Lcom/sec/internal/constants/Mno;

    if-eq v1, v2, :cond_3

    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->GCF:Lcom/sec/internal/constants/Mno;

    if-eq v1, v2, :cond_3

    sget-object v2, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-eq v1, v2, :cond_3

    sget-object v2, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-eq v1, v2, :cond_3

    .line 348
    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isTmobile()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-eq v1, v2, :cond_3

    sget-object v2, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_6

    .line 349
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->mThisEsm:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    invoke-virtual {v1, p1}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 350
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-eq p1, v1, :cond_5

    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isTmobile()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    .line 354
    :cond_4
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[ReadyToCall] remove ON_LTE_911_FAIL"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 351
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[ReadyToCall] Emergency E1 timer stopped"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    sget-object v3, Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER;->E1:Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER;

    sget-object v4, Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER_STATE;->CANCELLED:Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER_STATE;

    invoke-interface {p1, v1, v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->sendEmergencyCallTimerState(ILcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER;Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER_STATE;)V

    .line 358
    :cond_6
    :goto_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->mThisEsm:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    const/16 p1, 0xe

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return v0
.end method

.method private onStart(Landroid/os/Message;)V
    .locals 11

    .line 210
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cmcType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCmcType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCmcType:I

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcSecondaryType(I)Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-eqz v0, :cond_0

    .line 212
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string v0, "[ReadyToCall] start: E911 is not allowed on SD."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mThisSm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    sget-object p1, Lcom/sec/internal/constants/ims/SipErrorBase;->E911_NOT_ALLOWED_ON_SD:Lcom/sec/ims/util/SipError;

    invoke-virtual {p0, v3, v2, v1, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 218
    sget-object v4, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v4

    .line 219
    :goto_0
    sget-object v5, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    const/4 v6, 0x1

    const-wide/16 v7, 0x3e8

    if-ne v4, v5, :cond_2

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    invoke-static {v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->-$$Nest$fgetmStartDelayed(Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    iget-object v5, v5, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    invoke-static {v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->-$$Nest$mhasInProgressEmergencyTask(Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 220
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Deregistering is in progress. retry after 1sec"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->mThisEsm:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1, v7, v8}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 222
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    invoke-static {p0, v6}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->-$$Nest$fputmStartDelayed(Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;Z)V

    return-void

    :cond_2
    if-eqz v0, :cond_3

    .line 226
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasNoSim()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/internal/constants/Mno;->fromSalesCode(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/internal/constants/Mno;->isJpn()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 227
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string v0, "[ReadyToCall] Not allowed emergency call in JPN without sim"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    new-instance v0, Lcom/sec/ims/util/SipError;

    const/16 v4, 0xa8a

    const-string v5, "Tlte_911fail"

    invoke-direct {v0, v4, v5}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v3, v2, v1, v0}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 230
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->mThisEsm:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    return-void

    .line 234
    :cond_3
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v9, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    iget-object v9, v9, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    iget v9, v9, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    sget-object v10, Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;->EMERGENCY:Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;

    invoke-interface {v5, v9, v10}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getImsProfile(ILcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->emergencyProfile:Lcom/sec/ims/settings/ImsProfile;

    .line 235
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    iget-object v5, v5, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    iget v5, v5, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    const-string v9, "gsm.operator.numeric"

    const-string v10, "00101"

    invoke-static {v9, v5, v10}, Lcom/sec/internal/ims/util/ImsUtil;->getSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v9, 0x12f

    if-eqz v0, :cond_6

    .line 236
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getDevMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isAus()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->emergencyProfile:Lcom/sec/ims/settings/ImsProfile;

    if-eqz v0, :cond_4

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 240
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->-$$Nest$fgetmStartDelayed(Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 241
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "switching network is in progress. retry after 1sec"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->refreshAuEmergencyProfile(I)V

    .line 243
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->mThisEsm:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1, v7, v8}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 244
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    invoke-static {p0, v6}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->-$$Nest$fputmStartDelayed(Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;Z)V

    goto :goto_1

    .line 246
    :cond_5
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string v0, "no Emergency profile, should CSFB now..."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->mThisEsm:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    invoke-virtual {p1, v9}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 248
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->mThisEsm:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    invoke-virtual {p0, v9}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    :goto_1
    return-void

    .line 253
    :cond_6
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    invoke-virtual {p1, v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->isEmergencyAvailable(Lcom/sec/internal/constants/Mno;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 254
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string v0, "emergency service unavailable. do CSFB"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->mThisEsm:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    invoke-virtual {p1, v9}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 256
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->mThisEsm:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    invoke-virtual {p0, v9}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void

    .line 260
    :cond_7
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->emergencyProfile:Lcom/sec/ims/settings/ImsProfile;

    const-string v0, "VoWIFI"

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result p1

    const/16 v5, 0xb

    if-ne p1, v5, :cond_8

    .line 262
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getEmergencyRat()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    .line 263
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->-$$Nest$mgetEmergencyRegistration(Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;)Lcom/sec/ims/ImsRegistration;

    move-result-object p1

    if-nez p1, :cond_8

    .line 264
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string v0, "[ReadyToCall] No IMS Registration, Do Call End"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->mThisEsm:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    new-instance p1, Lcom/sec/ims/util/SipError;

    const/16 v0, 0x3eb

    const-string v4, "No VoWIFI Registration"

    invoke-direct {p1, v0, v4}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v3, v2, v1, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void

    .line 273
    :cond_8
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->setEmergencyRttCall()V

    .line 275
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    const/16 v1, 0x38f

    invoke-virtual {p1, v1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const v1, 0x3000001d

    .line 276
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 277
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getEmergencyRat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x12

    goto :goto_2

    :cond_9
    const/16 v0, 0xd

    .line 279
    :goto_2
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-interface {v1, v2, p1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->startEmergencyRegistration(ILandroid/os/Message;I)V

    .line 301
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    invoke-virtual {p1, v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->getDelayLte911Fail(Lcom/sec/internal/constants/Mno;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_c

    .line 303
    sget-object p1, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v4, p1, :cond_a

    .line 304
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[ReadyToCall] TMO_E911 start E1 Timer"

    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    sget-object v4, Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER;->E1:Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER;

    sget-object v5, Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER_STATE;->STARTED:Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER_STATE;

    invoke-interface {p1, v2, v3, v4, v5}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->sendEmergencyCallTimerState(ILcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER;Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER_STATE;)V

    goto :goto_3

    .line 306
    :cond_a
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isTmobile()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 307
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[ReadyToCall] TMO_EUR_E911 start E1 REG timer"

    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 309
    :cond_b
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ReadyToCall] start Tlte or TWlan-911fail"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " millis."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    const p1, 0x3000001e

    .line 311
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 312
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->mThisEsm:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    invoke-virtual {p0, v9, v0, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(IJ)V

    :cond_c
    return-void
.end method

.method private setEmergencyRttCall()V
    .locals 2

    .line 317
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v1

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    .line 318
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getAutomaticMode(I)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 319
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/16 v0, 0x12

    .line 320
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    const/16 v0, 0x13

    .line 322
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    .line 324
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    invoke-virtual {v0, p0}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    :cond_2
    return-void
.end method

.method private startEmergencyFailTimer()V
    .locals 8

    .line 466
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->getE911InviteTo18xTime()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    .line 467
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mMno:Lcom/sec/internal/constants/Mno;

    const/4 v5, 0x6

    new-array v5, v5, [Lcom/sec/internal/constants/Mno;

    sget-object v6, Lcom/sec/internal/constants/Mno;->BELL:Lcom/sec/internal/constants/Mno;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    sget-object v6, Lcom/sec/internal/constants/Mno;->ROGERS:Lcom/sec/internal/constants/Mno;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    sget-object v6, Lcom/sec/internal/constants/Mno;->TELUS:Lcom/sec/internal/constants/Mno;

    const/4 v7, 0x2

    aput-object v6, v5, v7

    sget-object v6, Lcom/sec/internal/constants/Mno;->KOODO:Lcom/sec/internal/constants/Mno;

    const/4 v7, 0x3

    aput-object v6, v5, v7

    sget-object v6, Lcom/sec/internal/constants/Mno;->VTR:Lcom/sec/internal/constants/Mno;

    const/4 v7, 0x4

    aput-object v6, v5, v7

    sget-object v6, Lcom/sec/internal/constants/Mno;->EASTLINK:Lcom/sec/internal/constants/Mno;

    const/4 v7, 0x5

    aput-object v6, v5, v7

    invoke-virtual {v4, v5}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v4

    const/16 v5, 0x133

    if-eqz v4, :cond_0

    .line 468
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getPdnController()Lcom/sec/internal/interfaces/ims/core/IPdnController;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-interface {v2, v3}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEmergencyEpdgConnected(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 469
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->mThisEsm:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    invoke-virtual {p0, v5, v0, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(IJ)V

    goto :goto_0

    :cond_0
    const-wide/16 v6, 0x0

    cmp-long v4, v0, v6

    const-string v6, "ms) for waiting SIP 18x"

    if-lez v4, :cond_1

    .line 471
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v7, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-eq v4, v7, :cond_1

    invoke-virtual {v4}, Lcom/sec/internal/constants/Mno;->isTmobile()Z

    move-result v4

    if-nez v4, :cond_1

    .line 472
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ReadyToCall] start t_e911_invite_to_18x timer ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->mThisEsm:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    invoke-virtual {p0, v5, v0, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(IJ)V

    goto :goto_0

    .line 474
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->-$$Nest$fgetmE911RegiTime(Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;)I

    move-result v0

    if-lez v0, :cond_2

    .line 475
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->-$$Nest$fgetmE911RegiTime(Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;)I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v2

    .line 476
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ReadyToCall] start Tlte-911fail timer ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->mThisEsm:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    invoke-virtual {p0, v5, v0, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(IJ)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 7

    .line 172
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ReadyToCall] processMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    const/16 v2, 0x38f

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v3, :cond_7

    const/16 v5, 0xb

    if-eq v0, v5, :cond_6

    const/16 v5, 0xe

    if-eq v0, v5, :cond_5

    const/16 v6, 0x132

    if-eq v0, v6, :cond_4

    const/16 v6, 0x192

    if-eq v0, v6, :cond_3

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/16 v1, 0x12f

    if-eq v0, v1, :cond_4

    const/16 v1, 0x130

    if-eq v0, v1, :cond_4

    .line 204
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;->processMessage(Landroid/os/Message;)Z

    move-result p0

    return p0

    .line 190
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->onError(Landroid/os/Message;)Z

    move-result p0

    return p0

    .line 201
    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->onEnded(Landroid/os/Message;)Z

    move-result p0

    return p0

    .line 179
    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->onEventEmergencyRegistered(Landroid/os/Message;)Z

    move-result p0

    return p0

    .line 182
    :cond_3
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    invoke-static {p1, v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->-$$Nest$fputmNextPcscfChangedWorking(Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;Z)V

    .line 183
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->mThisEsm:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    invoke-virtual {p0, v5}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    goto :goto_0

    :cond_4
    return v4

    .line 187
    :cond_5
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->onEmergecyInvite()Z

    move-result p0

    return p0

    .line 175
    :cond_6
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->onStart(Landroid/os/Message;)V

    :goto_0
    return v3

    .line 193
    :cond_7
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->mThisEsm:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    invoke-virtual {p0, v1, v4, v2}, Lcom/sec/internal/helper/StateMachine;->sendMessage(III)V

    return v4
.end method
