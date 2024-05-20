.class public Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;
.super Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;
.source "ImSessionStartingState.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "StartingState"


# direct methods
.method constructor <init>(ILcom/sec/internal/ims/servicemodules/im/ImSession;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;-><init>(ILcom/sec/internal/ims/servicemodules/im/ImSession;)V

    return-void
.end method

.method private checkIconUpdateRequired()V
    .locals 3

    .line 633
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 634
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isRejoinable()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 633
    :goto_0
    invoke-virtual {v0, p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->setIconUpdatedRequiredOnSessionEstablished(Z)V

    return-void
.end method

.method private createFirstMessageParams(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;
    .locals 17

    move-object/from16 v0, p0

    .line 779
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initializing SendMessageParams: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isFirstMsgInvite()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 780
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDispositionNotification()Ljava/util/Set;

    move-result-object v10

    .line 783
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getRcsProfile()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/ims/settings/ImsProfile;->isRcsUpProfile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    .line 784
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getImMsgTech()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;->SIMPLE_IM:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    if-eq v1, v2, :cond_1

    :cond_0
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isMsgFallbackSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 785
    :cond_1
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->INTERWORKING_SMS:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-interface {v10, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 787
    :cond_2
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;

    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getBody()Ljava/lang/String;

    move-result-object v5

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getUserAlias()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getContentType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    const/4 v11, 0x0

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const/16 v2, 0xbba

    move-object/from16 v3, p1

    .line 789
    invoke-virtual {v0, v2, v3}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getMaapTrafficType()Ljava/lang/String;

    move-result-object v13

    .line 790
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getReferenceImdnId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getReferenceType()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getReferenceValue()Ljava/lang/String;

    move-result-object v16

    move-object v3, v1

    invoke-direct/range {v3 .. v16}, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Set;Ljava/util/Set;Landroid/os/Message;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private dumpOnStartSession(ILcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;Z)V
    .locals 3

    .line 514
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 515
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 516
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result p1

    const-string v1, "1"

    const-string v2, "0"

    if-eqz p1, :cond_0

    move-object p1, v1

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 517
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v2

    .line 518
    :goto_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const p1, 0x40000018    # 2.0000057f

    .line 519
    iget p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mPhoneId:I

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2, p0, v0}, Lcom/sec/internal/ims/util/ImsUtil;->listToDumpFormat(IILjava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private generateReceivers(Ljava/util/Set;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation

    .line 608
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 610
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isRejoinable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 611
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getSessionUri()Lcom/sec/ims/util/ImsUri;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 613
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->getParticipantsNetworkPreferredUri(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    .line 614
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 621
    :goto_0
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-boolean v1, p1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mSwapUriType:Z

    if-eqz v1, :cond_1

    .line 622
    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/util/UriGenerator;->swapUriType(Ljava/util/List;)Ljava/util/Set;

    move-result-object p1

    .line 623
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 624
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 625
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mSwapUriType:Z

    :cond_1
    return-object v0
.end method

.method private generateSessionIds()V
    .locals 2

    .line 580
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getImMsgTech()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;->CPM:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    if-ne v0, v1, :cond_4

    .line 585
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne v0, v1, :cond_0

    .line 586
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContributionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setInReplyToContributionId(Ljava/lang/String;)V

    .line 589
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setDirection(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)V

    .line 591
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v0

    if-nez v0, :cond_1

    .line 592
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateContributionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setContributionId(Ljava/lang/String;)V

    .line 595
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 596
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateConversationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setConversationId(Ljava/lang/String;)V

    .line 598
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContributionId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 599
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateContributionId()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setContributionId(Ljava/lang/String;)V

    goto :goto_1

    .line 601
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContributionId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 603
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateContributionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setContributionId(Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private getParticipantsNetworkPreferredUri(Ljava/util/Set;)Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation

    .line 290
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getCapabilityDiscoveryModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    move-result-object v0

    .line 292
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 294
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/util/ImsUri;

    if-eqz v0, :cond_4

    .line 295
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->getCapabilitiesCache()Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 300
    :cond_0
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->getCapabilitiesCache()Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->get(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/options/Capabilities;

    move-result-object v3

    if-nez v3, :cond_1

    .line 302
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    sget-object v4, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->RCS_URI:Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    invoke-virtual {v3, v4, v2}, Lcom/sec/internal/ims/util/UriGenerator;->getNetworkPreferredUri(Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 304
    :cond_1
    invoke-virtual {v3}, Lcom/sec/ims/options/Capabilities;->getPAssertedId()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    .line 307
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/ims/util/ImsUri;

    .line 308
    invoke-virtual {v5}, Lcom/sec/ims/util/ImsUri;->getUriType()Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object v6

    sget-object v7, Lcom/sec/ims/util/ImsUri$UriType;->SIP_URI:Lcom/sec/ims/util/ImsUri$UriType;

    if-ne v6, v7, :cond_2

    .line 309
    invoke-virtual {v5}, Lcom/sec/ims/util/ImsUri;->getHost()Ljava/lang/String;

    move-result-object v4

    .line 314
    :cond_3
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    sget-object v5, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->RCS_URI:Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    invoke-virtual {v3, v5, v2, v4}, Lcom/sec/internal/ims/util/UriGenerator;->getNetworkPreferredUri(Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 296
    :cond_4
    :goto_1
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    sget-object v4, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->RCS_URI:Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    invoke-virtual {v3, v4, v2}, Lcom/sec/internal/ims/util/UriGenerator;->getNetworkPreferredUri(Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    return-object v1
.end method

.method private handleStartSessionFailure(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;)V
    .locals 2

    .line 558
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;->getStatusCode()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_SLM:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    if-ne v0, v1, :cond_2

    if-eqz p1, :cond_1

    .line 560
    instance-of p2, p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    if-eqz p2, :cond_0

    .line 561
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->handleUploadedFileFallback(Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;)V

    goto :goto_0

    .line 563
    :cond_0
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const-string v0, "onStartSession, sendMessage SLM"

    invoke-virtual {p2, v0}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 564
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const/16 p2, 0xbbf

    invoke-virtual {p0, p2, p1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 567
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->transitionToProperState()V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 571
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const-string v0, "onStartSession, display error or sendMessage error"

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 572
    new-instance p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->REMOTE_TEMPORARILY_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;)V

    invoke-virtual {p1, p0, p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->onSendMessageDone(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;)V

    goto :goto_0

    .line 574
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->transitionToProperState()V

    :goto_0
    return-void
.end method

.method private onCloseAllSession(Landroid/os/Message;)Z
    .locals 2

    .line 482
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isVoluntaryDeparture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const-string v1, "Voluntary departure in StartingState. DeferMessage."

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 484
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->deferMessage(Landroid/os/Message;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private onProcessIncomingSession(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;)V
    .locals 7

    .line 453
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "race-condition : mRawHandle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " race : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x40000100    # 2.000061f

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 455
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isVoluntaryDeparture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const-string v1, "Explicit departure is in progress. Reject the incoming invite"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 457
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->leaveSessionWithReject(Ljava/lang/Object;)V

    return-void

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 462
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v0

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne v0, v2, :cond_1

    .line 463
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mImsService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    new-instance v3, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;

    .line 464
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mRawHandle:Ljava/lang/Object;

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->BUSY_HERE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    const/4 v6, 0x0

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;Landroid/os/Message;)V

    .line 463
    invoke-interface {v2, v3}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->rejectImSession(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;)V

    .line 465
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mReceivedMessage:Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;

    invoke-virtual {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->onIncomingSessionProcessed(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;Z)V

    return-void

    .line 468
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosedState:Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRawHandle()Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;->INVOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    invoke-virtual {v2, v0, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->handleCloseSession(Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;)V

    .line 471
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;->ACCEPTING:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    invoke-virtual {v0, p1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->addImSessionInfo(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;)Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;

    move-result-object v0

    .line 472
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->updateSessionInfo(Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;)V

    .line 473
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->handleAcceptSession(Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;)V

    .line 475
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mReceivedMessage:Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->onIncomingSessionProcessed(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;Z)V

    .line 476
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->transitionToProperState()V

    .line 478
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->releaseWakeLock(Ljava/lang/Object;)V

    return-void
.end method

.method private onSendCanceledNotification(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            ">;)V"
        }
    .end annotation

    .line 437
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const-string v1, "Starting Session, send canceled notification after session establishment"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 438
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mCurrentCanceledMessages:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private onSendDeliveredNotification(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 9

    .line 442
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getImSessionInfoByMessageId(I)Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 444
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->isSnFSession()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mState:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;->ESTABLISHED:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    if-ne v1, v2, :cond_0

    .line 445
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mRawHandle:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v2, v0

    .line 447
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContributionId()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const/16 v1, 0xbc3

    .line 448
    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnIMSI()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 449
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v7

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isBotSessionAnonymized()Z

    move-result v8

    move-object v1, p1

    .line 447
    invoke-virtual/range {v1 .. v8}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->sendDeliveredNotification(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;Ljava/lang/String;ZZ)V

    return-void
.end method

.method private onSendMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 3

    .line 414
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getLatestActiveImSessionInfo()Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;

    move-result-object v0

    .line 416
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isFirstMessageInStart(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mCurrentMessages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mState:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;->STARTING:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    if-ne v1, v2, :cond_4

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mLastProvisionalResponse:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-eqz v1, :cond_4

    .line 418
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mPhoneId:I

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v1

    const-string/jumbo v2, "trigger_invite_after_18x"

    invoke-interface {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    .line 419
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mLastProvisionalResponse:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->RINGING:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->CALL_IS_BEING_FORWARDED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SESSION_PROGRESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-ne v0, v1, :cond_2

    .line 423
    :cond_1
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;->NORMAL:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;

    invoke-virtual {p0, p1, v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->onStartSession(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;Z)V

    goto :goto_0

    .line 425
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mCurrentMessages:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 428
    :cond_3
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;->NORMAL:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;

    invoke-virtual {p0, p1, v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->onStartSession(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;Z)V

    goto :goto_0

    .line 431
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const-string v1, "Starting Session, send message after session establishment"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 432
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mCurrentMessages:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private onStartSessionDoneFailure(Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 3

    .line 674
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/helper/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p2, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mRawHandle:Ljava/lang/Object;

    const/16 v2, 0x3ec

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 675
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->removeImSessionInfo(Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;)Z

    .line 677
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->hasActiveImSessionInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 678
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const-string p1, "onStartSessionDone : race condition, waiting events of another session"

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 679
    :cond_0
    iget-object v0, p2, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mStartingReason:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;->AUTOMATIC_REJOINING:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    .line 680
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const-string p4, "onStartSessionDone : automatic rejoining was unsuccessful. Ignore the startResult"

    invoke-virtual {p1, p4}, Lcom/sec/internal/helper/StateMachine;->loge(Ljava/lang/String;)V

    .line 681
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget p4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mPhoneId:I

    invoke-virtual {p1, p4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object p1

    invoke-interface {p1, p3}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->needStopAutoRejoin(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 682
    iget-boolean p1, p2, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mIsTryToLeave:Z

    if-eqz p1, :cond_1

    .line 683
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setSessionUri(Lcom/sec/ims/util/ImsUri;)V

    goto :goto_0

    .line 685
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object p1

    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->CLOSED_BY_USER:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    invoke-virtual {p1, p2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->updateState(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;)V

    .line 688
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->transitionToProperState()V

    goto/16 :goto_3

    .line 689
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isRejoinable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    invoke-interface {v0, p3}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->shouldRestartSession(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 690
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const-string p3, "onStartSessionDone : Rejoining groupchat was unsuccessful. Restart groupchat"

    invoke-virtual {p1, p3}, Lcom/sec/internal/helper/StateMachine;->loge(Ljava/lang/String;)V

    .line 691
    iget-boolean p1, p2, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mIsTryToLeave:Z

    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->restartSession(ZZ)V

    goto/16 :goto_3

    .line 692
    :cond_4
    invoke-direct {p0, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->shouldRestartSessionWithNewID(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p2, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mIsTryToLeave:Z

    if-nez v0, :cond_5

    .line 693
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const-string p2, "onStartSessionDone : User is not authorized to rejoin the group. start new chat"

    invoke-virtual {p1, p2}, Lcom/sec/internal/helper/StateMachine;->loge(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 694
    invoke-direct {p0, v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->restartSession(ZZ)V

    goto/16 :goto_3

    .line 696
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mCurrentCanceledMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 697
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->failCurrentCanceledMessages()V

    .line 699
    :cond_6
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mCurrentMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    if-eqz p4, :cond_8

    .line 700
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getBody()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isFirstMessageInStart(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_8

    sget-object p4, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->BUSY_HERE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-ne p3, p4, :cond_8

    .line 701
    iget-object p4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const-string v0, "onStartSessionDone : handle 486 response as SUCCESS for the message in INVITE."

    invoke-virtual {p4, v0}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 703
    iget-object p4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, p4, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mCurrentMessages:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getBody()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isFirstMessageInStart(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_7

    .line 704
    iget-object p4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object p4, p4, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mCurrentMessages:Ljava/util/List;

    invoke-interface {p4, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p4

    move-object v2, p4

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 706
    :cond_7
    sget-object p4, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;->NORMAL:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;

    invoke-virtual {p0, v2, p4, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->onStartSession(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;Z)V

    goto :goto_1

    .line 708
    :cond_8
    iget-object p4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;->mRawHandle:Ljava/lang/Object;

    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;->mResult:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;->mAllowedMethods:Ljava/lang/String;

    invoke-virtual {p4, v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->failCurrentMessages(Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Ljava/lang/String;)V

    .line 711
    :cond_9
    :goto_1
    sget-object p4, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_MAX_GROUP_NUMBER:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-ne p3, p4, :cond_a

    .line 712
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    sget-object p4, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;->MAX_GROUP_NUMBER_REACHED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    iput-object p4, p2, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosedReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    goto :goto_2

    .line 713
    :cond_a
    sget-object p4, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->GONE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-ne p3, p4, :cond_b

    iget-object p4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mPhoneId:I

    invoke-virtual {p4, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object p4

    const-string v0, "gone_should_endsession"

    invoke-interface {p4, v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_b

    .line 714
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    sget-object p4, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;->GROUP_CHAT_DISMISSED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    iput-object p4, p2, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosedReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    goto :goto_2

    .line 715
    :cond_b
    sget-object p4, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_RESTART_GC_CLOSED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-ne p3, p4, :cond_d

    iget-object p4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mPhoneId:I

    invoke-virtual {p4, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object p4

    const-string/jumbo v0, "support_chat_close_by_server"

    invoke-interface {p4, v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_d

    .line 717
    iget-object p4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const-string v0, "onStartSessionDone : Chat Close by Server "

    invoke-virtual {p4, v0}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 718
    iget-boolean p2, p2, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mIsTryToLeave:Z

    if-eqz p2, :cond_c

    .line 719
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    sget-object p4, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;->CLOSED_BY_LOCAL:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    iput-object p4, p2, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosedReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    .line 720
    iget-object p4, p2, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    invoke-interface {p4, p2}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onChatDeparted(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    goto :goto_2

    .line 722
    :cond_c
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    sget-object p4, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;->LEFT_BY_SERVER:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    iput-object p4, p2, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosedReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    goto :goto_2

    .line 725
    :cond_d
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget p4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mPhoneId:I

    invoke-static {p4}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object p4

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v0

    invoke-interface {p4, p3, v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->handleSessionFailure(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Z)Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    move-result-object p4

    iput-object p4, p2, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosedReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    .line 728
    :goto_2
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget p4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mPhoneId:I

    invoke-virtual {p2, p4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object p2

    invoke-interface {p2, p3}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->isNeedToReportToRegiGvn(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)Z

    move-result p2

    if-eqz p2, :cond_e

    .line 729
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object p2, p2, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    iget p4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mPhoneId:I

    invoke-interface {p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onImErrorReport(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;I)V

    .line 732
    :cond_e
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;

    iget-object p4, p1, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;->mResult:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    invoke-direct {p3, p4, v0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    iput-object p3, p2, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosedEvent:Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;

    .line 734
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->transitionToProperState()V

    :goto_3
    return-void
.end method

.method private onStartSessionDoneSuccess(Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;)V
    .locals 6

    .line 638
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;->STARTED:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    iput-object v0, p2, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mState:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    .line 639
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;->mSessionUri:Lcom/sec/ims/util/ImsUri;

    iput-object v0, p2, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mSessionUri:Lcom/sec/ims/util/ImsUri;

    .line 640
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mEstablishedImSessionInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 641
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->updateSessionInfo(Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;)V

    .line 643
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-boolean v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;->mIsMsgFallbackSupported:Z

    iget-boolean v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;->mIsMsgRevokeSupported:Z

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setNetworkFallbackMech(ZZ)V

    .line 645
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isMsgRevocationSupported()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getNeedToRevokeMessages()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 647
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getNeedToRevokeMessages()Ljava/util/Map;

    move-result-object v0

    .line 648
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 649
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mGetter:Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    const/4 v5, 0x0

    invoke-interface {v3, v2, v4, v5}, Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;->getMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 651
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->updateRevocationStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;)V

    goto :goto_0

    .line 653
    :cond_1
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "message from mGetter is null. imdnId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/sec/internal/helper/StateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 656
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->removeMsgFromListForRevoke(Ljava/util/Collection;)V

    .line 659
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-boolean v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;->mIsChatbotRole:Z

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->updateIsChatbotRole(Z)V

    .line 660
    iget-object p2, p2, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->startSessionEstablishmentTimer(Ljava/lang/Object;)V

    .line 666
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object p2, p2, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getUserAliasEnabled()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object p2, p2, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getRealtimeUserAliasAuth()Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result p2

    if-nez p2, :cond_4

    .line 667
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipants()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    .line 669
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;->mRemoteUserDisplayName:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->updateParticipantAlias(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;)V

    :cond_4
    return-void
.end method

.method private onStartSessionProvisionalResponse(Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;)V
    .locals 4

    .line 492
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getImSessionInfo(Ljava/lang/Object;)Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;

    move-result-object v0

    .line 493
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "START_SESSION_PROVISIONAL_RESPONSE : response="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 494
    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;->mResult:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object p1

    if-eqz v0, :cond_4

    .line 496
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mCurrentMessages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mCurrentMessages:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isFirstMessageInStart(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 497
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getLatestActiveImSessionInfo()Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mLastProvisionalResponse:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-eqz v1, :cond_0

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->TRYING:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-ne v1, v2, :cond_3

    .line 499
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mPhoneId:I

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v1

    const-string/jumbo v2, "trigger_invite_after_18x"

    invoke-interface {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 500
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->RINGING:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-eq p1, v1, :cond_1

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->CALL_IS_BEING_FORWARDED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-eq p1, v1, :cond_1

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SESSION_PROGRESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-ne p1, v1, :cond_3

    .line 501
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mCurrentMessages:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 502
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;->NORMAL:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->onStartSession(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;Z)V

    goto :goto_0

    .line 504
    :cond_2
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mLastProvisionalResponse:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-nez v1, :cond_3

    .line 505
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mCurrentMessages:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 506
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;->NORMAL:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->onStartSession(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;Z)V

    .line 509
    :cond_3
    :goto_0
    iput-object p1, v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mLastProvisionalResponse:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    :cond_4
    return-void
.end method

.method private preCheckToStartSession(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Ljava/util/Set;Ljava/util/List;)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)",
            "Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;"
        }
    .end annotation

    .line 524
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getGroupChatEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 525
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mPhoneId:I

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object p2

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->GROUPCHAT_DISABLED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatType()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->handleImFailure(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    move-result-object p2

    goto :goto_0

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatType()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->PARTICIPANT_BASED_GROUP_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mPhoneId:I

    .line 527
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    const-string v1, "allow_only_opengroupchat"

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 528
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object p2, p2, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getSlmAuth()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;

    move-result-object p2

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;->ENABLED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;

    if-ne p2, v0, :cond_1

    .line 529
    new-instance p2, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_SLM:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {p2, v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    goto :goto_0

    .line 531
    :cond_1
    new-instance p2, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_LEGACY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {p2, v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    goto :goto_0

    .line 534
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v2

    sget-wide v4, Lcom/sec/ims/options/Capabilities;->FEATURE_IM_SERVICE:J

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 535
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatType()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    move-result-object v6

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isBroadcastMsg(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Z

    move-result v7

    move-object v3, p2

    .line 534
    invoke-interface/range {v2 .. v7}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->checkCapability(Ljava/util/Set;JLcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Z)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    move-result-object p2

    :goto_0
    if-eqz p1, :cond_3

    .line 538
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object p1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->LOCATION:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    if-ne p1, v0, :cond_3

    .line 539
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;->getStatusCode()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    move-result-object p1

    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_SLM:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    if-ne p1, v0, :cond_3

    .line 540
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const-string p2, "onStartSession : GLS fallback to legacy"

    invoke-virtual {p1, p2}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 541
    new-instance p2, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_LEGACY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {p2, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    .line 543
    :cond_3
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 544
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const-string p2, "onStartSession : Invalid receiver"

    invoke-virtual {p1, p2}, Lcom/sec/internal/helper/StateMachine;->loge(Ljava/lang/String;)V

    .line 545
    new-instance p2, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->DISPLAY_ERROR:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {p2, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    .line 547
    :cond_4
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsUri()Ljava/util/Set;

    move-result-object p1

    iget p3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mPhoneId:I

    invoke-static {p1, p3}, Lcom/sec/internal/ims/util/ChatbotUriUtil;->hasChatbotUri(Ljava/util/Collection;I)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 548
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;->getStatusCode()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    move-result-object p1

    sget-object p3, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_SLM:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    if-eq p1, p3, :cond_5

    .line 549
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;->getStatusCode()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    move-result-object p1

    sget-object p3, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_LEGACY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    if-ne p1, p3, :cond_6

    .line 550
    :cond_5
    new-instance p2, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->NO_RETRY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {p2, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    .line 552
    :cond_6
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onStartSession: statusCode="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;->getStatusCode()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    return-object p2
.end method

.method private restartSession(ZZ)V
    .locals 5

    .line 382
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setSessionUri(Lcom/sec/ims/util/ImsUri;)V

    .line 384
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;->RESTARTING:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;

    if-eqz p2, :cond_2

    .line 386
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object p2, p2, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getImMsgTech()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    move-result-object p2

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;->SIMPLE_IM:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    if-ne p2, v0, :cond_0

    .line 387
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateContributionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setContributionId(Ljava/lang/String;)V

    goto :goto_1

    .line 389
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateConversationId()Ljava/lang/String;

    move-result-object p2

    .line 390
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setConversationId(Ljava/lang/String;)V

    .line 391
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateContributionId()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setContributionId(Ljava/lang/String;)V

    .line 393
    :goto_1
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;->RESTARTING_WITH_NEW_ID:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;

    .line 397
    :cond_2
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 398
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mGetter:Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getSimSlotPriority()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;->getOwnUris(I)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/util/ImsUri;

    .line 399
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v4, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipant(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 401
    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->DECLINED:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    invoke-virtual {v3, v4}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->setStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;)V

    .line 402
    invoke-interface {p2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 405
    :cond_4
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "StartingState"

    const-string v3, "restartSession: remove own uris from participants list"

    .line 406
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v3, v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    invoke-interface {v3, v2, p2}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onParticipantsDeleted(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Collection;)V

    .line 410
    :cond_5
    invoke-virtual {p0, v1, v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->onStartSession(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;Z)V

    return-void
.end method

.method private shouldRestartSessionWithNewID(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)Z
    .locals 3

    .line 360
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 364
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImError:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    return v1

    .line 368
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getImMsgTech()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    move-result-object p0

    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;->SIMPLE_IM:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    if-ne p0, p1, :cond_2

    move v1, v0

    :cond_2
    return v1
.end method


# virtual methods
.method public enter()V
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StartingState enter. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;->STARTING:Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    invoke-interface {v1, v0, v2}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onChatStatusUpdate(Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;)V

    .line 76
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosedReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    .line 77
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isVoluntaryDeparture()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isAutoRejoinSession()Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object p0

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->INACTIVE:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    invoke-virtual {p0, v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->updateState(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;)V

    :cond_0
    return-void
.end method

.method protected onAcceptSessionDone(Landroid/os/Message;)V
    .locals 3

    .line 745
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 746
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;

    .line 747
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAcceptSessionDone : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 748
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;->mResult:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v0

    .line 749
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-ne v0, v1, :cond_0

    .line 751
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->startSessionEstablishmentTimer(Ljava/lang/Object;)V

    goto :goto_0

    .line 753
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->removeImSessionInfo(Ljava/lang/Object;)Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;

    .line 754
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->hasActiveImSessionInfo()Z

    move-result v0

    if-nez v0, :cond_1

    .line 755
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;->mResult:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->failCurrentMessages(Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    .line 757
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->transitionToProperState()V

    .line 760
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->releaseWakeLock(Ljava/lang/Object;)V

    return-void
.end method

.method public onStartSession(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;Z)V
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v15, p3

    .line 189
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const-string v4, "onStartSession"

    invoke-virtual {v3, v4}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 193
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsUri()Ljava/util/Set;

    move-result-object v3

    .line 195
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v4

    const/4 v14, 0x1

    if-nez v4, :cond_0

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    if-le v4, v14, :cond_0

    .line 196
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->REGULAR_GROUP_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->updateChatType(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)V

    .line 199
    :cond_0
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    invoke-direct {v0, v4, v2, v15}, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->dumpOnStartSession(ILcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;Z)V

    .line 206
    invoke-direct {v0, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->generateReceivers(Ljava/util/Set;)Ljava/util/List;

    move-result-object v6

    .line 208
    invoke-direct {v0, v1, v3, v6}, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->preCheckToStartSession(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Ljava/util/Set;Ljava/util/List;)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    move-result-object v3

    .line 210
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;->getStatusCode()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->NONE:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    if-eq v4, v5, :cond_1

    .line 211
    invoke-direct {v0, v1, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->handleStartSessionFailure(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;)V

    return-void

    :cond_1
    if-eqz v1, :cond_3

    .line 217
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isFirstMessageInStart(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 218
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v3, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setSessionTimeoutThreshold(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 219
    invoke-direct/range {p0 .. p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->createFirstMessageParams(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;

    move-result-object v3

    move-object v12, v3

    goto :goto_0

    .line 224
    :cond_2
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mCurrentMessages:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    const/4 v12, 0x0

    .line 233
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->generateSessionIds()V

    .line 236
    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateUuid()Ljava/lang/String;

    move-result-object v3

    .line 237
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onStartSession, sendMessage IM. temporary sessionKey : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", msgParams : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 239
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const/16 v5, 0x3ea

    invoke-virtual {v4, v5, v1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v25

    .line 240
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const/16 v5, 0x3f9

    invoke-virtual {v4, v5, v3}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v26

    .line 241
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const/16 v5, 0x3f8

    invoke-virtual {v4, v5}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v28

    .line 243
    new-instance v4, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;

    sget-object v18, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;->INITIAL:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    sget-object v19, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    .line 244
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isRejoinable()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getSessionUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    move-object/from16 v20, v5

    goto :goto_1

    :cond_4
    const/16 v20, 0x0

    :goto_1
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContributionId()Ljava/lang/String;

    move-result-object v21

    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v22

    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 245
    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getInReplyToContributionId()Ljava/lang/String;

    move-result-object v23

    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getSdpContentType()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v16, v4

    move-object/from16 v17, v3

    invoke-direct/range {v16 .. v24}, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;-><init>(Ljava/lang/Object;Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iput-boolean v15, v4, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mIsTryToLeave:Z

    if-eqz v15, :cond_5

    .line 248
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosedState:Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;->VOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    iput-object v5, v3, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mStopReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    .line 250
    :cond_5
    iput-object v2, v4, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mStartingReason:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;

    .line 252
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->addImSessionInfo(Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;)V

    .line 253
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->updateSessionInfo(Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;)V

    .line 255
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->checkIconUpdateRequired()V

    .line 257
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getSdpContentType()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_6

    if-eqz v1, :cond_6

    .line 258
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getContentType()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 259
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getContentType()Ljava/lang/String;

    move-result-object v3

    :cond_6
    move-object/from16 v16, v3

    .line 262
    new-instance v11, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v4

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getSubject()Ljava/lang/String;

    move-result-object v5

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 263
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContributionId()Ljava/lang/String;

    move-result-object v7

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getUserAlias()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams$ServiceType;->NORMAL:Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams$ServiceType;

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v17

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 264
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v18

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 265
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getInReplyToContributionId()Ljava/lang/String;

    move-result-object v19

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isRejoinable()Z

    move-result v20

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatType()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->isClosedGroupChat(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Z

    move-result v21

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 266
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getServiceId()Ljava/lang/String;

    move-result-object v22

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v8, v3, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mAcceptTypes:Ljava/util/List;

    move-object/from16 v24, v8

    iget-object v8, v3, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mAcceptWrappedTypes:Ljava/util/List;

    .line 267
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnIMSI()Ljava/lang/String;

    move-result-object v29

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 268
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsUri()Ljava/util/Set;

    move-result-object v3

    iget v13, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mPhoneId:I

    invoke-static {v3, v13}, Lcom/sec/internal/ims/util/ChatbotUriUtil;->hasChatbotUri(Ljava/util/Collection;I)Z

    move-result v3

    if-eqz v3, :cond_7

    move/from16 v30, v14

    goto :goto_2

    :cond_7
    const/4 v3, 0x0

    move/from16 v30, v3

    :goto_2
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 269
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatMode()Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    move-result-object v27

    move-object v3, v11

    move-object/from16 v23, v24

    move-object/from16 v24, v8

    const/4 v8, 0x0

    move-object v13, v11

    move/from16 v11, v17

    move-object/from16 v31, v12

    move-object/from16 v12, v16

    move-object/from16 v32, v13

    move-object/from16 v13, v25

    move-object/from16 v14, v28

    move-object/from16 v15, v26

    move-object/from16 v16, v31

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move/from16 v19, v20

    move/from16 v20, v21

    move/from16 v21, p3

    move-object/from16 v25, v29

    move/from16 v26, v30

    invoke-direct/range {v3 .. v27}, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams$ServiceType;ZLjava/lang/String;Landroid/os/Message;Landroid/os/Message;Landroid/os/Message;Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZLcom/sec/internal/constants/ims/servicemodules/im/ChatMode;)V

    if-eqz v1, :cond_8

    .line 272
    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mContentType:Ljava/lang/String;

    if-eqz v3, :cond_8

    const-string v4, "application/vnd.gsma.rcspushlocation+xml"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    move-object/from16 v3, v32

    const/4 v4, 0x1

    .line 273
    iput-boolean v4, v3, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mIsGeolocationPush:Z

    goto :goto_3

    :cond_8
    move-object/from16 v3, v32

    .line 276
    :goto_3
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mImsService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v4, v3}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->startImSession(Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;)V

    if-eqz v31, :cond_9

    .line 279
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v3, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->onMessageSending(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 282
    :cond_9
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isRejoinable()Z

    move-result v1

    if-nez v1, :cond_a

    if-nez p3, :cond_a

    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;->RESTARTING:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;

    if-eq v2, v1, :cond_a

    .line 283
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->INVITED:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->updateParticipantsStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;)V

    .line 285
    :cond_a
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosedEvent:Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;

    .line 286
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->transitionToProperState()V

    return-void
.end method

.method public onStartSessionDone(Landroid/os/Message;)V
    .locals 6

    .line 329
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 330
    iget-object v0, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;

    .line 331
    iget-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;->mResult:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v1

    .line 332
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget v3, v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;->mRetryTimer:I

    iput v3, v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mRetryTimer:I

    .line 334
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 335
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;->toCriticalLog()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    iget v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mPhoneId:I

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v4

    const v5, 0x40000019    # 2.000006f

    invoke-static {v5, v3, v4, v2}, Lcom/sec/internal/ims/util/ImsUtil;->listToDumpFormat(IILjava/lang/String;Ljava/util/List;)V

    .line 339
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStartSessionDone : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 340
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v3, v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getImSessionInfo(Ljava/lang/Object;)Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;

    move-result-object v2

    if-nez v2, :cond_0

    .line 342
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStartSessionDone unknown rawHandle : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->loge(Ljava/lang/String;)V

    return-void

    .line 346
    :cond_0
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-ne v1, v3, :cond_1

    .line 347
    invoke-direct {p0, v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->onStartSessionDoneSuccess(Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;)V

    goto :goto_0

    .line 349
    :cond_1
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    invoke-direct {p0, v0, v2, v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->onStartSessionDoneFailure(Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    :goto_0
    return-void
.end method

.method protected processGroupChatManagementEvent(Landroid/os/Message;)Z
    .locals 3

    .line 110
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StartingState, processGroupChatManagementEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ChatId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 114
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x7d1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const/16 v1, 0x7d8

    if-eq v0, v1, :cond_1

    const/16 v1, 0x7da

    if-eq v0, v1, :cond_1

    const/16 v1, 0x7dc

    if-eq v0, v1, :cond_1

    const/16 v1, 0x7de

    if-eq v0, v1, :cond_1

    const/16 v1, 0x7d5

    if-eq v0, v1, :cond_0

    const/16 v1, 0x7d6

    if-eq v0, v1, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    .line 116
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->onConferenceInfoUpdated(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;)V

    goto :goto_0

    .line 125
    :cond_1
    iput v2, p1, Landroid/os/Message;->arg1:I

    .line 126
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->deferMessage(Landroid/os/Message;)V

    :goto_0
    return v2
.end method

.method protected processMessagingEvent(Landroid/os/Message;)Z
    .locals 3

    .line 84
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StartingState, processMessagingEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ChatId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 88
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xbb9

    if-eq v0, v1, :cond_2

    const/16 v1, 0xbc2

    if-eq v0, v1, :cond_1

    const/16 v1, 0xbd1

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    .line 98
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->onSendCanceledNotification(Ljava/util/List;)V

    goto :goto_0

    .line 94
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->onSendDeliveredNotification(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    goto :goto_0

    .line 90
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->onSendMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method protected processSessionConnectionEvent(Landroid/os/Message;)Z
    .locals 3

    .line 139
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StartingState, processSessionConnectionEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ChatId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 143
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3ea

    if-eq v0, v1, :cond_6

    const/16 v1, 0x3ef

    if-eq v0, v1, :cond_5

    const/16 v1, 0x3f8

    if-eq v0, v1, :cond_4

    const/16 v1, 0x3ec

    if-eq v0, v1, :cond_3

    const/16 v1, 0x3ed

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3f4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3f5

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    .line 149
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosedState:Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->onCloseSessionDone(Landroid/os/Message;)V

    goto :goto_0

    .line 167
    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->onCloseAllSession(Landroid/os/Message;)Z

    move-result p0

    goto :goto_1

    .line 159
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->onProcessIncomingSession(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;)V

    goto :goto_0

    .line 163
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->onEstablishmentTimeOut(Ljava/lang/Object;)V

    goto :goto_0

    .line 171
    :cond_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->onStartSessionProvisionalResponse(Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;)V

    goto :goto_0

    .line 153
    :cond_5
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->onAcceptSessionDone(Landroid/os/Message;)V

    goto :goto_0

    .line 145
    :cond_6
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->onStartSessionDone(Landroid/os/Message;)V

    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method protected startSessionEstablishmentTimer(Ljava/lang/Object;)V
    .locals 5

    .line 769
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    const-string v1, "session_establish_timer"

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->intSetting(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 770
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatType()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    move-result-object v0

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->REGULAR_GROUP_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    if-eq v0, v2, :cond_0

    .line 771
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stack response timer starts"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 772
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/helper/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x3ec

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 773
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0, v2, p1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mPhoneId:I

    .line 774
    invoke-static {p0}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->intSetting(Ljava/lang/String;)I

    move-result p0

    int-to-long v1, p0

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    .line 773
    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    :cond_0
    return-void
.end method
