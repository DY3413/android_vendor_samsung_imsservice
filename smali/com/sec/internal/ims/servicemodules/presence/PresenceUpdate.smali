.class public Lcom/sec/internal/ims/servicemodules/presence/PresenceUpdate;
.super Ljava/lang/Object;
.source "PresenceUpdate.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PresenceUpdate"


# instance fields
.field protected mBackgroundHandler:Landroid/os/Handler;

.field private final mPresence:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;


# direct methods
.method public static synthetic $r8$lambda$2VabT8CYZESsruln57QAoQskMGw(Lcom/sec/internal/ims/servicemodules/presence/PresenceUpdate;ILcom/sec/ims/presence/PresenceInfo;Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUpdate;->lambda$onNewWatcherInformation$1(ILcom/sec/ims/presence/PresenceInfo;Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VgwflvNJ5SCXn5FaxY64lUc_ZiI(Lcom/sec/internal/ims/servicemodules/presence/PresenceUpdate;ILcom/sec/ims/presence/PresenceInfo;Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUpdate;->lambda$onNewPresenceInformation$0(ILcom/sec/ims/presence/PresenceInfo;Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;)V

    return-void
.end method

.method constructor <init>(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;)V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceUpdate;->mPresence:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    .line 31
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "PresenceUpdate"

    const/16 v1, 0xa

    invoke-direct {p1, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 32
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceUpdate;->mBackgroundHandler:Landroid/os/Handler;

    return-void
.end method

.method private synthetic lambda$onNewPresenceInformation$0(ILcom/sec/ims/presence/PresenceInfo;Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;)V
    .locals 13

    move-object v0, p0

    move v6, p1

    move-object v1, p2

    move-object/from16 v2, p3

    .line 38
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onNewPresenceInformation: uri "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getUri()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PresenceUpdate"

    invoke-static {v4, p1, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 40
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceUpdate;->mPresence:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    invoke-virtual {v3, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->checkModuleReady(I)Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    if-nez v2, :cond_1

    const-string v0, "onNewPresenceInformation: failed to fetch subscription"

    .line 45
    invoke-static {v4, p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 49
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 50
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 52
    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getUri()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_2

    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getTelUri()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getUri()Ljava/lang/String;

    move-result-object v7

    .line 55
    :goto_0
    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getServiceList()Ljava/util/List;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/ims/presence/ServiceTuple;->getFeatures(Ljava/util/List;)J

    move-result-wide v8

    sget-wide v10, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_ROLE:J

    invoke-static {v8, v9, v10, v11}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->hasFeature(JJ)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 56
    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getTelUri()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getTelUri()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getUri()Ljava/lang/String;

    move-result-object v8

    .line 57
    :goto_1
    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->isSingleFetch()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getUriList()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/ims/util/ImsUri;

    goto :goto_2

    :cond_4
    invoke-static {v8}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v8

    :goto_2
    if-eqz v8, :cond_5

    .line 59
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onNewPresenceInformation: chatbot uri "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, p1, v9}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 60
    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/options/BotServiceIdTranslator;->getInstance()Lcom/sec/internal/constants/ims/servicemodules/options/BotServiceIdTranslator;

    move-result-object v9

    invoke-virtual {v8}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getUri()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11, p1}, Lcom/sec/internal/constants/ims/servicemodules/options/BotServiceIdTranslator;->register(Ljava/lang/String;Ljava/lang/String;I)V

    .line 61
    invoke-virtual {v8}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Lcom/sec/ims/presence/PresenceInfo;->setUri(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v8}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Lcom/sec/ims/presence/PresenceInfo;->setTelUri(Ljava/lang/String;)V

    .line 66
    :cond_5
    iget-object v8, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceUpdate;->mPresence:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    invoke-virtual {v8}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getUriGenerator()Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v8

    if-nez v8, :cond_6

    const-string v0, "onNewPresenceInformation: uriGenerator is null"

    .line 68
    invoke-static {v4, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 71
    :cond_6
    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->isFetchSuccess()Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_8

    .line 72
    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getTelUri()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sec/internal/ims/util/UriGenerator;->normalize(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getUri()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_7

    .line 79
    iget-object v8, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceUpdate;->mPresence:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v8, v9, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getPresenceInfo(Lcom/sec/ims/util/ImsUri;I)Lcom/sec/ims/presence/PresenceInfo;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 80
    invoke-virtual {v8}, Lcom/sec/ims/presence/PresenceInfo;->getUri()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 81
    invoke-virtual {v8}, Lcom/sec/ims/presence/PresenceInfo;->getUri()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Lcom/sec/ims/presence/PresenceInfo;->setUri(Ljava/lang/String;)V

    .line 84
    :cond_7
    invoke-static {v7}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v8

    if-eqz v8, :cond_9

    .line 85
    invoke-static {v7}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    if-eqz v7, :cond_a

    .line 88
    invoke-static {v7}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v9

    if-eqz v9, :cond_a

    .line 89
    invoke-static {v7}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v8, v7}, Lcom/sec/internal/ims/util/UriGenerator;->normalize(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_3
    move-object v12, v5

    move-object v5, v3

    move-object v3, v12

    goto :goto_4

    .line 92
    :cond_a
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getUriList()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v5, v3

    .line 97
    :goto_4
    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->isSingleFetch()Z

    move-result v7

    if-nez v7, :cond_c

    iget-object v7, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceUpdate;->mPresence:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getPhoneId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getPresenceModuleInfo(I)Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    move-result-object v7

    iget-object v7, v7, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v8, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v7, v8, :cond_c

    .line 98
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_b
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/ims/util/ImsUri;

    .line 99
    invoke-virtual {v2, v8}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->containsDropUri(Lcom/sec/ims/util/ImsUri;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 100
    invoke-virtual {v2, v8}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->removeDropUri(Lcom/sec/ims/util/ImsUri;)V

    goto :goto_5

    .line 106
    :cond_c
    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getRequestType()Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    move-result-object v7

    sget-object v8, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;->REQUEST_TYPE_LAZY:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    if-ne v7, v8, :cond_d

    .line 107
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/ims/util/ImsUri;

    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->isLongLivedSubscription()Z

    move-result v8

    invoke-static {v7, v8}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->checkLazySubscription(Lcom/sec/ims/util/ImsUri;Z)Z

    move-result v7

    if-eqz v7, :cond_d

    const-string v2, "onNewPresenceInformation: lazy subscription not in order"

    .line 108
    invoke-static {v4, p1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 109
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onNewPresenceInformation: delayed uri "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, p1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 110
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceUpdate;->mPresence:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    const/16 v2, 0xb

    invoke-virtual {v0, v2, p1, v10, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 115
    :cond_d
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceUpdate;->mPresence:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    invoke-virtual {v4, v5, p2, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->updatePresenceDatabase(Ljava/util/List;Lcom/sec/ims/presence/PresenceInfo;I)V

    .line 117
    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getServiceList()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/ims/presence/ServiceTuple;->getFeatures(Ljava/util/List;)J

    move-result-wide v4

    .line 118
    iget-object v7, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceUpdate;->mPresence:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    .line 119
    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getPhoneId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getPresenceModuleInfo(I)Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    move-result-object v7

    iget-object v7, v7, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mLastSubscribeStatusCode:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    .line 118
    invoke-static {p2, v4, v5, v7, v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->translateToCapExResult(Lcom/sec/ims/presence/PresenceInfo;JLcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;)Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    move-result-object v7

    .line 120
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceUpdate;->mPresence:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mListener:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;

    if-eqz v0, :cond_e

    .line 121
    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getPidf()Ljava/lang/String;

    move-result-object v8

    move-object v1, v3

    move-wide v2, v4

    move-object v4, v7

    move-object v5, v8

    move v6, p1

    invoke-interface/range {v0 .. v6}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;->onCapabilityUpdate(Ljava/util/List;JLcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;Ljava/lang/String;I)V

    :cond_e
    return-void
.end method

.method private synthetic lambda$onNewWatcherInformation$1(ILcom/sec/ims/presence/PresenceInfo;Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;)V
    .locals 10

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNewWatcherInformation: uri "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PresenceUpdate"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceUpdate;->mPresence:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getUriGenerator()Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "onNewWatcherInformation: uriGenerator is null"

    .line 132
    invoke-static {v1, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 137
    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->isFetchSuccess()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 138
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 139
    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getUri()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    .line 142
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getUriList()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :cond_2
    :goto_0
    move-object v4, v1

    if-eqz v4, :cond_3

    .line 146
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceUpdate;->mPresence:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    invoke-virtual {v1, v4, p2, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->updatePresenceDatabase(Ljava/util/List;Lcom/sec/ims/presence/PresenceInfo;I)V

    const/4 v1, 0x0

    .line 148
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/util/UriGenerator;->normalize(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    .line 149
    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getServiceList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/ims/presence/ServiceTuple;->getFeatures(Ljava/util/List;)J

    move-result-wide v5

    .line 150
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceUpdate;->mPresence:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    .line 151
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getPresenceModuleInfo(I)Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mLastSubscribeStatusCode:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    .line 150
    invoke-static {p2, v5, v6, v0, p3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->translateToCapExResult(Lcom/sec/ims/presence/PresenceInfo;JLcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;)Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    move-result-object v7

    .line 153
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceUpdate;->mPresence:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mListener:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;

    if-eqz v3, :cond_3

    .line 154
    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getPidf()Ljava/lang/String;

    move-result-object v8

    move v9, p1

    invoke-interface/range {v3 .. v9}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;->onCapabilityUpdate(Ljava/util/List;JLcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;Ljava/lang/String;I)V

    :cond_3
    return-void
.end method


# virtual methods
.method onNewPresenceInformation(Lcom/sec/ims/presence/PresenceInfo;ILcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;)V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceUpdate;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceUpdate$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUpdate$$ExternalSyntheticLambda1;-><init>(Lcom/sec/internal/ims/servicemodules/presence/PresenceUpdate;ILcom/sec/ims/presence/PresenceInfo;Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method onNewWatcherInformation(Lcom/sec/ims/presence/PresenceInfo;ILcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;)V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceUpdate;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceUpdate$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUpdate$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/ims/servicemodules/presence/PresenceUpdate;ILcom/sec/ims/presence/PresenceInfo;Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
