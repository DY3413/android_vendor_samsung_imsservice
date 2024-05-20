.class public Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;
.super Ljava/lang/Object;
.source "CapabilityQuery.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CapabilityQuery"

.field private static final SHORT_NUMBER_DELAY:J = 0x7d0L

.field private static final SHORT_NUMBER_LENGTH:I = 0x8


# instance fields
.field private mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

.field private mCapabilityExchange:Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;

.field private mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 46
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    .line 47
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityExchange:Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;

    return-void
.end method

.method private isNeedToRefreshInMsgCtxForResolvingLatching(Lcom/sec/ims/options/CapabilityRefreshType;ILcom/sec/ims/util/ImsUri;)Z
    .locals 2

    .line 461
    sget-object v0, Lcom/sec/ims/options/CapabilityRefreshType;->ONLY_IF_NOT_FRESH_IN_MSG_CTX:Lcom/sec/ims/options/CapabilityRefreshType;

    if-ne p1, v0, :cond_0

    .line 462
    invoke-static {p2}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object p1

    const-string/jumbo v0, "use_xms_receiver_for_resolving_latching"

    invoke-interface {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 463
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->getLatchingProcessor()Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;

    move-result-object p1

    invoke-virtual {p1, p3, p2}, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->isExistInLatchingList(Lcom/sec/ims/util/ImsUri;I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 464
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->getLatchingProcessor()Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p3, v0, v1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->checkTimestampInOptionsList(Lcom/sec/ims/util/ImsUri;JI)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method copyToOwnCapabilities(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)Lcom/sec/ims/options/Capabilities;
    .locals 2

    const-string v0, "CapabilityQuery"

    const-string v1, "copyToOwnCapabilities: CAPABILITY DISCOVERY MECHANISM is off. Copy to OwnCapabilities"

    .line 336
    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getOwnCapabilities()Lcom/sec/ims/options/Capabilities;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 339
    invoke-virtual {p0}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v0

    .line 340
    invoke-virtual {p0, p1}, Lcom/sec/ims/options/Capabilities;->setUri(Lcom/sec/ims/util/ImsUri;)V

    .line 341
    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/options/Capabilities;->setAvailableFeatures(J)V

    .line 342
    invoke-virtual {p0, p2}, Lcom/sec/ims/options/Capabilities;->setNumber(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method getAllCapabilities(I)[Lcom/sec/ims/options/Capabilities;
    .locals 2

    const-string v0, "CapabilityQuery"

    const-string v1, "getAllCapabilities:"

    .line 450
    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 452
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "getAllCapabilities: CapabilityDiscoveryModule is disabled"

    .line 453
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 457
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilitiesCache(I)Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->getAllCapabilities()Ljava/util/Collection;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Lcom/sec/ims/options/Capabilities;

    invoke-interface {p0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sec/ims/options/Capabilities;

    return-object p0
.end method

.method getCapabilities(II)Lcom/sec/ims/options/Capabilities;
    .locals 4

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCapabilities: Capex list id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapabilityQuery"

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->checkModuleReady(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilitiesCache(I)Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->get(I)Lcom/sec/ims/options/Capabilities;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 57
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->getCapInfoExpiry(Lcom/sec/ims/options/Capabilities;I)I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {p1, v2, v3}, Lcom/sec/ims/options/Capabilities;->isExpired(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCapabilities: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/util/ImsUri;->toStringLimit()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is expired. refresh it."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 59
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    const/4 v0, 0x6

    const/4 v1, 0x0

    .line 60
    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    invoke-virtual {p0, v0, v1, p2, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 59
    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 62
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getCapabilities: No need to refresh. capex ["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v2, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const-string v2, "null"

    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 62
    invoke-static {v1, p2, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method getCapabilities(Lcom/sec/ims/util/ImsUri;JILjava/lang/String;)Lcom/sec/ims/options/Capabilities;
    .locals 10

    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCapabilities: feature "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Lcom/sec/ims/options/Capabilities;->dumpFeature(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CapabilityQuery"

    invoke-static {v3, p4, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 147
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCapabilities: uri "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, p4, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 149
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-virtual {v2, p4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->checkModuleReady(I)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    .line 154
    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->getUriType()Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object v2

    sget-object v3, Lcom/sec/ims/util/ImsUri$UriType;->SIP_URI:Lcom/sec/ims/util/ImsUri$UriType;

    if-ne v2, v3, :cond_1

    .line 155
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getUriGenerator()Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/util/UriGenerator;->normalize(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    move-object v3, v1

    goto :goto_0

    :cond_1
    move-object v3, p1

    .line 158
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-virtual {v1, v3, p4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->blockOptionsToOwnUri(Lcom/sec/ims/util/ImsUri;I)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v4

    .line 162
    :cond_2
    invoke-static {p5}, Lcom/sec/ims/settings/ImsProfile;->isRcsUpProfile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v1, p4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->getDefaultDisc()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 163
    invoke-virtual {v3}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->copyToOwnCapabilities(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)Lcom/sec/ims/options/Capabilities;

    move-result-object v0

    return-object v0

    .line 166
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v1, p4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilitiesCache(I)Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->get(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/options/Capabilities;

    move-result-object v9

    .line 167
    sget-object v2, Lcom/sec/ims/options/CapabilityRefreshType;->ONLY_IF_NOT_FRESH:Lcom/sec/ims/options/CapabilityRefreshType;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, v9

    move-wide v4, p2

    move v8, p4

    invoke-virtual/range {v0 .. v8}, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->needCapabilityRefresh(Lcom/sec/ims/options/Capabilities;Lcom/sec/ims/options/CapabilityRefreshType;Lcom/sec/ims/util/ImsUri;JZZI)V

    return-object v9

    :cond_4
    :goto_1
    const-string v0, "getCapabilities: failed"

    .line 150
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4
.end method

.method getCapabilities(Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/options/CapabilityRefreshType;ILjava/lang/String;)Lcom/sec/ims/options/Capabilities;
    .locals 11

    .line 281
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCapabilities: refreshType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "CapabilityQuery"

    invoke-static {v4, p3, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 282
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCapabilities: uri "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, p3, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 284
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-virtual {v2, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->checkModuleReady(I)Z

    move-result v2

    const/4 v5, 0x0

    if-eqz v2, :cond_5

    if-nez p1, :cond_0

    goto :goto_2

    .line 289
    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->getUriType()Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object v2

    sget-object v4, Lcom/sec/ims/util/ImsUri$UriType;->SIP_URI:Lcom/sec/ims/util/ImsUri$UriType;

    if-ne v2, v4, :cond_1

    .line 290
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getUriGenerator()Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/util/UriGenerator;->normalize(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    move-object v4, v1

    goto :goto_0

    :cond_1
    move-object v4, p1

    :goto_0
    if-eqz v4, :cond_4

    .line 293
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-virtual {v1, v4, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->blockOptionsToOwnUri(Lcom/sec/ims/util/ImsUri;I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 297
    :cond_2
    invoke-static {p4}, Lcom/sec/ims/settings/ImsProfile;->isRcsUpProfile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v1, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->getDefaultDisc()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 298
    invoke-virtual {v4}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v4, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->copyToOwnCapabilities(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)Lcom/sec/ims/options/Capabilities;

    move-result-object v0

    return-object v0

    .line 301
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v1, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilitiesCache(I)Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->get(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/options/Capabilities;

    move-result-object v9

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, v9

    move-object v2, p2

    move-object v3, v4

    move-wide v4, v5

    move v6, v7

    move v7, v10

    move v8, p3

    .line 302
    invoke-virtual/range {v0 .. v8}, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->needCapabilityRefresh(Lcom/sec/ims/options/Capabilities;Lcom/sec/ims/options/CapabilityRefreshType;Lcom/sec/ims/util/ImsUri;JZZI)V

    return-object v9

    :cond_4
    :goto_1
    return-object v5

    :cond_5
    :goto_2
    const-string v0, "getCapabilities: failed"

    .line 285
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5
.end method

.method getCapabilities(Ljava/lang/String;JILjava/lang/String;)Lcom/sec/ims/options/Capabilities;
    .locals 10

    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCapabilities: feature "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Lcom/sec/ims/options/Capabilities;->dumpFeature(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CapabilityQuery"

    invoke-static {v3, p4, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 119
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCapabilities: number "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, p4, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 121
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-virtual {v2, p4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->checkModuleReady(I)Z

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_0

    return-object v4

    .line 125
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getUriGenerator()Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v2

    const/4 v5, 0x1

    invoke-virtual {v2, p1, v5}, Lcom/sec/internal/ims/util/UriGenerator;->getNormalizedUri(Ljava/lang/String;Z)Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    if-nez v5, :cond_1

    const-string v0, "getCapabilities: uri is null"

    .line 127
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    .line 131
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-virtual {v2, v5, p4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->blockOptionsToOwnUri(Lcom/sec/ims/util/ImsUri;I)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v4

    .line 135
    :cond_2
    invoke-static {p5}, Lcom/sec/ims/settings/ImsProfile;->isRcsUpProfile(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v2, p4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->getDefaultDisc()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 136
    invoke-virtual {p0, v5, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->copyToOwnCapabilities(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)Lcom/sec/ims/options/Capabilities;

    move-result-object v0

    return-object v0

    .line 139
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v1, p4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilitiesCache(I)Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->get(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/options/Capabilities;

    move-result-object v9

    .line 140
    sget-object v2, Lcom/sec/ims/options/CapabilityRefreshType;->ONLY_IF_NOT_FRESH:Lcom/sec/ims/options/CapabilityRefreshType;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, v9

    move-object v3, v5

    move-wide v4, p2

    move v8, p4

    invoke-virtual/range {v0 .. v8}, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->needCapabilityRefresh(Lcom/sec/ims/options/Capabilities;Lcom/sec/ims/options/CapabilityRefreshType;Lcom/sec/ims/util/ImsUri;JZZI)V

    return-object v9
.end method

.method getCapabilities(Ljava/lang/String;Lcom/sec/ims/options/CapabilityRefreshType;ZILjava/lang/String;)Lcom/sec/ims/options/Capabilities;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v7, p3

    move/from16 v8, p4

    .line 69
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCapabilities: refreshType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", lazyQuery: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CapabilityQuery"

    invoke-static {v4, v8, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 70
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCapabilities: number "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v8, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 72
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 74
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-virtual {v3, v8}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->checkModuleReady(I)Z

    move-result v3

    const/4 v6, 0x0

    if-nez v3, :cond_0

    return-object v6

    .line 78
    :cond_0
    invoke-static/range {p4 .. p4}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->checkCapDiscoveryOption()Z

    move-result v3

    const/4 v9, 0x1

    if-nez v3, :cond_1

    .line 79
    new-instance v0, Lcom/sec/ims/options/Capabilities;

    invoke-direct {v0}, Lcom/sec/ims/options/Capabilities;-><init>()V

    .line 80
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL_VIDEO:I

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_PRESENCE_DISCOVERY:I

    or-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/sec/ims/options/Capabilities;->addFeature(J)V

    .line 81
    invoke-virtual {v0, v9}, Lcom/sec/ims/options/Capabilities;->setAvailiable(Z)V

    return-object v0

    .line 85
    :cond_1
    invoke-static/range {p4 .. p4}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->checkNeedParsing(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 86
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getUriGenerator()Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v3

    invoke-virtual {v3, v1, v9}, Lcom/sec/internal/ims/util/UriGenerator;->getNormalizedUri(Ljava/lang/String;Z)Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    if-nez v3, :cond_2

    const-string v0, "getCapabilities: uri is null"

    .line 88
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    .line 92
    :cond_2
    iget-object v10, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-virtual {v10, v3, v8}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->blockOptionsToOwnUri(Lcom/sec/ims/util/ImsUri;I)Z

    move-result v10

    if-eqz v10, :cond_3

    return-object v6

    .line 96
    :cond_3
    sget-object v10, Lcom/sec/ims/options/CapabilityRefreshType;->DISABLED:Lcom/sec/ims/options/CapabilityRefreshType;

    if-eq v2, v10, :cond_4

    const v10, 0x12010006

    .line 97
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ",GETCAPA,"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/ims/options/CapabilityRefreshType;->ordinal()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sec/ims/util/ImsUri;->toStringLimit()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 100
    :cond_4
    invoke-static/range {p5 .. p5}, Lcom/sec/ims/settings/ImsProfile;->isRcsUpProfile(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v10, v8}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->getDefaultDisc()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_5

    .line 101
    invoke-virtual {v0, v3, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->copyToOwnCapabilities(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)Lcom/sec/ims/options/Capabilities;

    move-result-object v0

    return-object v0

    .line 104
    :cond_5
    iget-object v10, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v10, v8}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilitiesCache(I)Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    move-result-object v10

    invoke-virtual {v10, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->get(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/options/Capabilities;

    move-result-object v10

    const-wide/16 v11, -0x1

    .line 106
    invoke-direct {v0, v2, v8, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->isNeedToRefreshInMsgCtxForResolvingLatching(Lcom/sec/ims/options/CapabilityRefreshType;ILcom/sec/ims/util/ImsUri;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 107
    sget-object v2, Lcom/sec/ims/options/CapabilityRefreshType;->ALWAYS_FORCE_REFRESH:Lcom/sec/ims/options/CapabilityRefreshType;

    const-wide/16 v10, 0x0

    const-string v12, "refreshType changes to ALWAYS_FORCE_REFRESH"

    .line 110
    invoke-static {v4, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v12, v6

    goto :goto_0

    :cond_6
    move-wide v14, v11

    move-object v12, v10

    move-wide v10, v14

    .line 112
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v5, :cond_7

    move v6, v9

    goto :goto_1

    :cond_7
    const/4 v1, 0x0

    move v6, v1

    :goto_1
    move-object/from16 v0, p0

    move-object v1, v12

    move-wide v4, v10

    move/from16 v7, p3

    move/from16 v8, p4

    invoke-virtual/range {v0 .. v8}, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->needCapabilityRefresh(Lcom/sec/ims/options/Capabilities;Lcom/sec/ims/options/CapabilityRefreshType;Lcom/sec/ims/util/ImsUri;JZZI)V

    return-object v12
.end method

.method getCapabilities(Ljava/util/List;Lcom/sec/ims/options/CapabilityRefreshType;JILjava/lang/String;Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;)[Lcom/sec/ims/options/Capabilities;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/ims/options/CapabilityRefreshType;",
            "JI",
            "Ljava/lang/String;",
            "Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;",
            ")[",
            "Lcom/sec/ims/options/Capabilities;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v12, p2

    move/from16 v13, p5

    move-object/from16 v14, p7

    .line 174
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCapabilities: refreshType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", feature "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p4}, Lcom/sec/ims/options/Capabilities;->dumpFeature(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", callback : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v15, "CapabilityQuery"

    invoke-static {v15, v13, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v2, 0x2

    const/4 v10, 0x0

    if-nez v1, :cond_1

    const-string v0, "getCapabilities: uris is null."

    .line 178
    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v14, :cond_0

    .line 181
    :try_start_0
    invoke-interface {v14, v2}, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;->onCommandError(I)V
    :try_end_0
    .catch Landroid/telephony/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 183
    invoke-virtual {v1}, Landroid/telephony/ims/ImsException;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v10

    .line 188
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCapabilities: uris "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v13, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 190
    :goto_1
    invoke-interface {v1, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 191
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remove invalid list elements(null)"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v13, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 192
    invoke-interface {v1, v10}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 195
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v13, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 197
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-virtual {v3, v13}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->checkModuleReady(I)Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz v14, :cond_3

    const/16 v0, 0x9

    .line 200
    :try_start_1
    invoke-interface {v14, v0}, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;->onCommandError(I)V
    :try_end_1
    .catch Landroid/telephony/ims/ImsException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 202
    invoke-virtual {v1}, Landroid/telephony/ims/ImsException;->printStackTrace()V

    :cond_3
    :goto_2
    return-object v10

    .line 207
    :cond_4
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 208
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 210
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v3, v13}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v16

    .line 211
    invoke-static/range {p6 .. p6}, Lcom/sec/ims/settings/ImsProfile;->isRcsUpProfile(Ljava/lang/String;)Z

    move-result v3

    const/4 v9, 0x0

    if-eqz v3, :cond_6

    invoke-virtual/range {v16 .. v16}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->getDefaultDisc()I

    move-result v3

    if-ne v3, v2, :cond_6

    .line 212
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/util/ImsUri;

    .line 213
    invoke-virtual {v2}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->copyToOwnCapabilities(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)Lcom/sec/ims/options/Capabilities;

    move-result-object v2

    .line 214
    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    new-array v0, v9, [Lcom/sec/ims/options/Capabilities;

    .line 216
    invoke-interface {v8, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/ims/options/Capabilities;

    return-object v0

    .line 219
    :cond_6
    invoke-static/range {p5 .. p5}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v6

    .line 220
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string/jumbo v5, "subscribeForCapabilities internalRequestId : "

    if-eqz v1, :cond_10

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/sec/ims/util/ImsUri;

    .line 221
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-virtual {v1, v3, v13}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->blockOptionsToOwnUri(Lcom/sec/ims/util/ImsUri;I)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_4

    .line 224
    :cond_7
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v1, v13}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilitiesCache(I)Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->get(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/options/Capabilities;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 226
    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    if-eqz v2, :cond_b

    move-object/from16 v18, v15

    move-wide/from16 v14, p3

    .line 229
    invoke-virtual {v2, v14, v15}, Lcom/sec/ims/options/Capabilities;->isFeatureAvailable(J)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    .line 230
    invoke-virtual {v1, v2, v13}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->getCapInfoExpiry(Lcom/sec/ims/options/Capabilities;I)I

    move-result v1

    move-object/from16 p6, v5

    int-to-long v4, v1

    .line 231
    invoke-virtual/range {v16 .. v16}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->getServiceAvailabilityInfoExpiry()I

    move-result v1

    move-object/from16 v19, v8

    int-to-long v7, v1

    invoke-virtual/range {v16 .. v16}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->getCapCacheExpiry()J

    move-result-wide v20

    invoke-virtual/range {v16 .. v16}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->getMsgcapvalidity()J

    move-result-wide v22

    move-object v1, v6

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-object/from16 v3, p2

    move-object/from16 v15, p6

    const/16 v14, 0x36

    move-object v14, v6

    const/4 v12, 0x6

    move-wide v6, v7

    move-wide/from16 v8, v20

    move-object/from16 v20, v10

    move-object v12, v11

    move-wide/from16 v10, v22

    .line 230
    invoke-interface/range {v1 .. v11}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->needRefresh(Lcom/sec/ims/options/Capabilities;Lcom/sec/ims/options/CapabilityRefreshType;JJJJ)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_5

    .line 250
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCapabilities: No need to refresh. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v24 .. v24}, Lcom/sec/ims/options/Capabilities;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v18

    invoke-static {v2, v13, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_8

    :cond_a
    move-object/from16 v25, v3

    move-object v15, v5

    move-object v14, v6

    move-object/from16 v19, v8

    move-object/from16 v20, v10

    move-object v12, v11

    :goto_5
    move-object/from16 v2, v18

    goto :goto_6

    :cond_b
    move-object/from16 v25, v3

    move-object v14, v6

    move-object/from16 v19, v8

    move-object/from16 v20, v10

    move-object v12, v11

    move-object v2, v15

    move-object v15, v5

    .line 232
    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCapabilities: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v25 .. v25}, Lcom/sec/ims/util/ImsUri;->toStringLimit()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is expired. refresh it"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v13, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "allow_list_capex"

    .line 234
    invoke-interface {v14, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 235
    invoke-static/range {p5 .. p5}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    sget-object v3, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v1, v3, :cond_d

    invoke-virtual/range {v16 .. v16}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->isDisableInitialScan()Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_7

    :cond_c
    move-object/from16 v3, p7

    move-object/from16 v1, v25

    goto :goto_9

    :cond_d
    :goto_7
    move-object/from16 v1, v25

    .line 236
    invoke-virtual {v12, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_8
    move-object/from16 v3, p7

    goto :goto_a

    :cond_e
    move-object/from16 v1, v25

    move-object/from16 v3, p7

    :goto_9
    if-nez v3, :cond_f

    .line 239
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 240
    invoke-virtual/range {p2 .. p2}, Lcom/sec/ims/options/CapabilityRefreshType;->ordinal()I

    move-result v5

    const/4 v6, 0x6

    invoke-virtual {v4, v6, v5, v13, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 239
    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_a

    .line 242
    :cond_f
    invoke-static {v13, v3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->addSubscribeResponseCallback(ILandroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;)I

    move-result v4

    .line 243
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v13, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 245
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    const/16 v6, 0x36

    .line 246
    invoke-virtual {v5, v6, v4, v13, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 245
    invoke-virtual {v5, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_a
    move-object v15, v2

    move-object v11, v12

    move-object v6, v14

    move-object/from16 v8, v19

    move-object/from16 v10, v20

    const/4 v9, 0x0

    move-object/from16 v12, p2

    move-object v14, v3

    goto/16 :goto_4

    :cond_10
    move-object/from16 v19, v8

    move-object/from16 v20, v10

    move-object v12, v11

    move-object v3, v14

    move-object v2, v15

    move-object v15, v5

    move-object v14, v6

    .line 254
    invoke-virtual {v12}, Ljava/util/HashSet;->size()I

    move-result v1

    const/4 v4, 0x1

    if-le v1, v4, :cond_12

    if-eqz v3, :cond_11

    .line 257
    invoke-static {v13, v3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->addSubscribeResponseCallback(ILandroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;)I

    move-result v9

    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v13, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_b

    :cond_11
    const/4 v9, 0x0

    .line 260
    :goto_b
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    const/16 v1, 0x21

    invoke-virtual {v0, v1, v13, v9, v12}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_c

    .line 262
    :cond_12
    invoke-virtual {v12}, Ljava/util/HashSet;->size()I

    move-result v1

    if-ne v1, v4, :cond_14

    if-nez v3, :cond_13

    .line 264
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 265
    invoke-virtual/range {p2 .. p2}, Lcom/sec/ims/options/CapabilityRefreshType;->ordinal()I

    move-result v1

    invoke-virtual {v12}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x6

    .line 264
    invoke-virtual {v0, v3, v1, v13, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_c

    .line 267
    :cond_13
    invoke-static {v13, v3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->addSubscribeResponseCallback(ILandroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;)I

    move-result v1

    .line 268
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v13, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 269
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 270
    invoke-virtual {v12}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    const/16 v3, 0x36

    .line 269
    invoke-virtual {v0, v3, v1, v13, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 273
    :cond_14
    :goto_c
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "capa_skip_notify_force_refresh_sync"

    invoke-interface {v14, v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    sget-object v0, Lcom/sec/ims/options/CapabilityRefreshType;->FORCE_REFRESH_SYNC:Lcom/sec/ims/options/CapabilityRefreshType;

    move-object/from16 v1, p2

    if-ne v1, v0, :cond_15

    goto :goto_d

    :cond_15
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/sec/ims/options/Capabilities;

    move-object/from16 v1, v19

    .line 277
    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/ims/options/Capabilities;

    return-object v0

    :cond_16
    :goto_d
    return-object v20
.end method

.method getCapabilitiesByContactId(Ljava/lang/String;Lcom/sec/ims/options/CapabilityRefreshType;ILjava/lang/String;)[Lcom/sec/ims/options/Capabilities;
    .locals 11

    .line 308
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCapabilitiesByContactId: contactId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", refreshType "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "CapabilityQuery"

    invoke-static {v6, p3, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 310
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-virtual {v2, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->checkModuleReady(I)Z

    move-result v2

    const/4 v7, 0x0

    if-nez v2, :cond_0

    return-object v7

    :cond_0
    const-string v2, "FORCE_CAPA_POLLING"

    .line 314
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 315
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityExchange:Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;

    invoke-virtual {v0, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->forcePoll(I)V

    return-object v7

    .line 319
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 322
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getPhonebook()Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->getNumberlistByContactId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 326
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 327
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "tel:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v8

    .line 328
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", teluri "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, p3, v9}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 329
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 332
    :cond_2
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_OFFLINE_RCS_USER:I

    int-to-long v6, v1

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, v2

    move-object v2, p2

    move-wide v3, v6

    move v5, p3

    move-object v6, p4

    move-object v7, v8

    invoke-virtual/range {v0 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->getCapabilities(Ljava/util/List;Lcom/sec/ims/options/CapabilityRefreshType;JILjava/lang/String;Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;)[Lcom/sec/ims/options/Capabilities;

    move-result-object v0

    return-object v0
.end method

.method getOwnCapabilities(IILjava/util/Map;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;IZLjava/lang/String;Lcom/sec/ims/options/Capabilities;)Lcom/sec/ims/options/Capabilities;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/ims/ImsRegistration;",
            ">;",
            "Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;",
            "IZ",
            "Ljava/lang/String;",
            "Lcom/sec/ims/options/Capabilities;",
            ")",
            "Lcom/sec/ims/options/Capabilities;"
        }
    .end annotation

    move-object v0, p0

    move v7, p1

    .line 418
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->checkModuleReady(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 422
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isDualRcsReg()Z

    move-result v1

    const-string v8, "CapabilityQuery"

    if-nez v1, :cond_1

    move v1, p2

    if-eq v1, v7, :cond_1

    const-string v0, "getOwnCapabilities: mAvailablePhoneId = ! phoneId"

    .line 423
    invoke-static {v8, p1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    return-object v2

    .line 427
    :cond_1
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->updateOwnCapabilities(I)V

    .line 429
    new-instance v1, Lcom/sec/ims/options/Capabilities;

    invoke-direct {v1}, Lcom/sec/ims/options/Capabilities;-><init>()V

    .line 431
    :try_start_0
    invoke-virtual/range {p8 .. p8}, Lcom/sec/ims/options/Capabilities;->clone()Lcom/sec/ims/options/Capabilities;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 432
    :try_start_1
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    move-object v2, p3

    move-object v3, p4

    move v5, p5

    invoke-virtual {v1, p3, p4, p5, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->filterServicesWithReg(Ljava/util/Map;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;II)Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 434
    invoke-virtual {v9}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v2

    .line 435
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    move v5, p5

    move v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->filterFeaturesWithService(JLjava/util/Set;II)J

    move-result-wide v1

    .line 436
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    move/from16 v3, p6

    move-object/from16 v4, p7

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->filterFeaturesWithCallState(JZLjava/lang/String;)J

    move-result-wide v0

    .line 437
    invoke-virtual {v9, v0, v1}, Lcom/sec/ims/options/Capabilities;->setFeatures(J)V

    .line 438
    invoke-virtual {v9, v0, v1}, Lcom/sec/ims/options/Capabilities;->setAvailableFeatures(J)V
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v9

    goto :goto_0

    :catch_1
    move-exception v0

    .line 441
    :goto_0
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    move-object v9, v1

    .line 443
    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getOwnCapabilities: feature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", detail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    invoke-virtual {v9}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/sec/ims/options/Capabilities;->dumpFeature(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 443
    invoke-static {v8, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-object v9
.end method

.method getOwnCapabilitiesBase(ILcom/sec/ims/options/Capabilities;)Lcom/sec/ims/options/Capabilities;
    .locals 5

    const-string v0, "CapabilityQuery"

    const-string v1, "getOwnCapabilitiesBase:"

    .line 388
    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 390
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->checkModuleReady(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 392
    :try_start_0
    invoke-virtual {p2}, Lcom/sec/ims/options/Capabilities;->clone()Lcom/sec/ims/options/Capabilities;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 394
    invoke-virtual {p0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    :goto_0
    if-eqz v2, :cond_0

    .line 397
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getOwnCapabilitiesBase: module is not ready, "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    invoke-virtual {v2}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/sec/ims/options/Capabilities;->dumpFeature(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 397
    invoke-static {v0, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    return-object v2

    .line 403
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->updateOwnCapabilities(I)V

    .line 406
    :try_start_1
    invoke-virtual {p2}, Lcom/sec/ims/options/Capabilities;->clone()Lcom/sec/ims/options/Capabilities;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 408
    invoke-virtual {p0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    :goto_1
    if-eqz v2, :cond_2

    .line 411
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getOwnCapabilitiesBase: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/sec/ims/options/Capabilities;->dumpFeature(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :cond_2
    return-object v2
.end method

.method needCapabilityRefresh(Lcom/sec/ims/options/Capabilities;Lcom/sec/ims/options/CapabilityRefreshType;Lcom/sec/ims/util/ImsUri;JZZI)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move-wide/from16 v10, p4

    move/from16 v15, p8

    .line 349
    invoke-static/range {p8 .. p8}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v1

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    .line 350
    invoke-virtual {v2, v12, v15}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->getCapInfoExpiry(Lcom/sec/ims/options/Capabilities;I)I

    move-result v2

    int-to-long v4, v2

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 351
    invoke-virtual {v2, v15}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->getServiceAvailabilityInfoExpiry()I

    move-result v2

    int-to-long v6, v2

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 352
    invoke-virtual {v2, v15}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->getCapCacheExpiry()J

    move-result-wide v8

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 353
    invoke-virtual {v2, v15}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->getMsgcapvalidity()J

    move-result-wide v16

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide v12, v10

    move-wide/from16 v10, v16

    .line 349
    invoke-interface/range {v1 .. v11}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->needRefresh(Lcom/sec/ims/options/Capabilities;Lcom/sec/ims/options/CapabilityRefreshType;JJJJ)Z

    move-result v1

    const/4 v2, 0x6

    const-string v3, "CapabilityQuery"

    if-eqz v1, :cond_2

    .line 354
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "needCapabilityRefresh: true, missing capabilities for "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/sec/ims/util/ImsUri;->toStringLimit()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v15, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-eqz p7, :cond_1

    const/16 v1, 0x8

    if-eqz p6, :cond_0

    .line 357
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 358
    invoke-virtual/range {p2 .. p2}, Lcom/sec/ims/options/CapabilityRefreshType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2, v15, v14}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    .line 357
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 361
    :cond_0
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 362
    invoke-virtual/range {p2 .. p2}, Lcom/sec/ims/options/CapabilityRefreshType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2, v15, v14}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 361
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 365
    :cond_1
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 366
    invoke-virtual/range {p2 .. p2}, Lcom/sec/ims/options/CapabilityRefreshType;->ordinal()I

    move-result v1

    invoke-virtual {v0, v2, v1, v15, v14}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 365
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_2
    const-wide/16 v4, 0x0

    cmp-long v1, v12, v4

    if-ltz v1, :cond_4

    move-object/from16 v1, p1

    move-wide v4, v12

    if-eqz v1, :cond_3

    .line 368
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/options/Capabilities;->isAvailable()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v1, v4, v5}, Lcom/sec/ims/options/Capabilities;->isFeatureAvailable(J)Z

    move-result v4

    if-nez v4, :cond_5

    .line 369
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "needCapabilityRefresh: true, missing features for "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/sec/ims/util/ImsUri;->toStringLimit()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v15, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 370
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/ims/options/CapabilityRefreshType;->ordinal()I

    move-result v1

    invoke-virtual {v0, v2, v1, v15, v14}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_4
    move-object/from16 v1, p1

    :cond_5
    const v0, 0x12010007

    if-eqz v1, :cond_6

    .line 374
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "needCapabilityRefresh: false, capex is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/options/Capabilities;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v15, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 375
    sget-object v2, Lcom/sec/ims/options/CapabilityRefreshType;->DISABLED:Lcom/sec/ims/options/CapabilityRefreshType;

    move-object/from16 v4, p2

    if-eq v4, v2, :cond_7

    .line 376
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",NOREF,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/options/Capabilities;->getAvailableFeatures()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    goto :goto_0

    :cond_6
    move-object/from16 v4, p2

    .line 379
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "needCapabilityRefresh: false, capex is null for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/sec/ims/util/ImsUri;->toStringLimit()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v15, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 380
    sget-object v1, Lcom/sec/ims/options/CapabilityRefreshType;->DISABLED:Lcom/sec/ims/options/CapabilityRefreshType;

    if-eq v4, v1, :cond_7

    .line 381
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",NOREF,NOCAP"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    :cond_7
    :goto_0
    return-void
.end method
