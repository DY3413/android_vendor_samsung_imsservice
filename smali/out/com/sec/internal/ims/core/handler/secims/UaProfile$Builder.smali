.class public Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
.super Ljava/lang/Object;
.source "UaProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/handler/secims/UaProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field acb:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field accessToken:Ljava/lang/String;

.field activeDataPhoneId:I

.field addHistinfo:Z

.field addMmtelCallComposerTag:Z

.field audioEngineType:I

.field authServerUrl:Ljava/lang/String;

.field authalg:Ljava/lang/String;

.field callProfile:Lcom/sec/internal/ims/core/handler/secims/CallProfile;

.field capabilities:Lcom/sec/ims/options/Capabilities;

.field cmcEmergencyNumbers:Ljava/lang/String;

.field cmcRelayType:Ljava/lang/String;

.field cmcType:I

.field contactDisplayName:Ljava/lang/String;

.field controlDscp:I

.field curPani:Ljava/lang/String;

.field dbrTimer:I

.field displayName:Ljava/lang/String;

.field domain:Ljava/lang/String;

.field earlyMediaRtpTimeoutTimer:I

.field enableVerstat:Z

.field encrNullRoaming:Z

.field encralg:Ljava/lang/String;

.field excludePaniVowifiInitialRegi:Z

.field hashAlgoType:I

.field hostname:Ljava/lang/String;

.field iface:Ljava/lang/String;

.field ignoreDisplayName:Z

.field imMsgTech:Ljava/lang/String;

.field impi:Ljava/lang/String;

.field impu:Ljava/lang/String;

.field impuList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field impuPreference:I

.field imsiBasedImpu:Ljava/lang/String;

.field instanceId:Ljava/lang/String;

.field isCdmalessEnabled:Z

.field isEnableGruu:Z

.field isEnableSessionId:Z

.field isEnableVcid:Z

.field isFullCodecOfferRequired:Z

.field isGcfConfigEnabled:Z

.field isMsrpBearerUsed:Z

.field isNsdsServiceEnabled:Z

.field isPttSupported:Z

.field isRcsTelephonyFeatureTagRequired:Z

.field isSimMobility:Z

.field isSoftphoneEnabled:Z

.field isSubscribeReg:Z

.field isTcpGracefulShutdownEnabled:Z

.field isTransportNeeded:Z

.field isUpdateSaOnStartSupported:Z

.field isVceConfigEnabled:Z

.field isXqEnabled:Z

.field isemergencysupport:Z

.field isenabletlsforsip:Z

.field isipsec:Z

.field isprecondenabled:Z

.field ispreconinitialsendrecv:Z

.field issipoutbound:Z

.field keepAliveFactor:I

.field lastPaniHeader:Ljava/lang/String;

.field mIsServerHeaderEnabled:Z

.field mIsWifiPreConditionEnabled:Z

.field mUseCompactHeader:Z

.field minSe:I

.field mno:Lcom/sec/internal/constants/Mno;

.field msrpTransType:Ljava/lang/String;

.field mssSize:I

.field mvno:Ljava/lang/String;

.field needCheckAllowedMethodForRefresh:Z

.field needPidfRat:I

.field needPidfSipMsg:I

.field needVolteRetryInNr:Z

.field netId:J

.field oipFromPreferred:Ljava/lang/String;

.field password:Ljava/lang/String;

.field pcscfIp:Ljava/lang/String;

.field pcscfPort:I

.field pdn:Ljava/lang/String;

.field phoneId:I

.field preferredId:Ljava/lang/String;

.field privacyHeaderRestricted:Ljava/lang/String;

.field profileId:I

.field qparam:I

.field rat:I

.field rcsProfile:I

.field realm:Ljava/lang/String;

.field regExpires:I

.field regRetryBaseTime:I

.field regRetryMaxTime:I

.field registeralgo:Ljava/lang/String;

.field remoteuritype:Lcom/sec/ims/util/ImsUri$UriType;

.field retryInviteOnTcpReset:Z

.field ringbackTimer:I

.field ringingTimer:I

.field scmVersion:I

.field selectTransportAfterTcpReset:Ljava/lang/String;

.field selfPort:I

.field send18xReliably:Z

.field sendByeForUssi:Z

.field serviceList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field sessionexpires:I

.field sessionrefresher:Ljava/lang/String;

.field singleRegiEnabled:Z

.field sipMobility:I

.field srvccVersion:I

.field sslType:I

.field subscriberTimer:I

.field support183ForIr92v9Precondition:Z

.field support199ProvisionalResponse:Z

.field supportAccessType:Z

.field supportB2cCallcomposerWithoutFeaturetag:I

.field supportDualRcs:Z

.field supportDualSimCmc:Z

.field supportEct:Z

.field supportImsNotAvailable:Z

.field supportLtePreferred:Z

.field supportNetworkInitUssi:Z

.field supportReplaceMerge:Z

.field supportRfc6337ForDelayedOffer:Z

.field supportScribeDialogEvent:Z

.field supportUac:Z

.field supportUpgradePrecondition:Z

.field supportedGeolocationPhase:I

.field tcpRstUacErrorcode:I

.field tcpRstUasErrorcode:I

.field textMode:I

.field timer1:I

.field timer2:I

.field timer4:I

.field timerA:I

.field timerB:I

.field timerC:I

.field timerD:I

.field timerE:I

.field timerF:I

.field timerG:I

.field timerH:I

.field timerI:I

.field timerJ:I

.field timerK:I

.field timerTS:I

.field transtype:Ljava/lang/String;

.field tryReregisterFromKeepalive:Z

.field uacSipList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field use183OnProgressIncoming:Z

.field use200offerWhenRemoteNotSupport100rel:Z

.field useKeepAlive:Z

.field usePemHeader:Z

.field useProvisionalResponse100rel:Z

.field useQ850causeOn480:Z

.field useSubcontactWhenResub:Z

.field userAgent:Ljava/lang/String;

.field uuid:Ljava/lang/String;

.field videoCrbtSupportType:I

.field vowifi5gsaMode:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 908
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newBuilder()Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 1

    .line 1080
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addService(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 3

    .line 1233
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->serviceList:Ljava/util/Set;

    if-nez v0, :cond_b

    .line 1234
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->serviceList:Ljava/util/Set;

    .line 1237
    :cond_b
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->serviceList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lcom/sec/internal/ims/core/handler/secims/UaProfile;
    .registers 2

    .line 1084
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;-><init>(Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;)V

    return-object v0
.end method

.method public setAcb(Ljava/util/List;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;"
        }
    .end annotation

    .line 1777
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->acb:Ljava/util/List;

    return-object p0
.end method

.method public setAccessToken(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1497
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->accessToken:Ljava/lang/String;

    return-object p0
.end method

.method public setActiveDataPhoneId(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1522
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->activeDataPhoneId:I

    return-object p0
.end method

.method public setAddHistinfo(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1602
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->addHistinfo:Z

    return-object p0
.end method

.method public setAddMmtelCallComposerTag(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1832
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->addMmtelCallComposerTag:Z

    return-object p0
.end method

.method public setAudioEngineType(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1457
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->audioEngineType:I

    return-object p0
.end method

.method public setAuthAlg(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1198
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->authalg:Ljava/lang/String;

    return-object p0
.end method

.method public setAuthServerUrl(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1502
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->authServerUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setCallProfile(Lcom/sec/internal/ims/core/handler/secims/CallProfile;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1332
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->callProfile:Lcom/sec/internal/ims/core/handler/secims/CallProfile;

    return-object p0
.end method

.method public setCmcEmergencyNumbers(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1712
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->cmcEmergencyNumbers:Ljava/lang/String;

    return-object p0
.end method

.method public setCmcRelayType(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1707
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->cmcRelayType:Ljava/lang/String;

    return-object p0
.end method

.method public setCmcType(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1702
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->cmcType:I

    return-object p0
.end method

.method public setContactDisplayName(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1307
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->contactDisplayName:Ljava/lang/String;

    return-object p0
.end method

.method public setControlDscp(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1163
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->controlDscp:I

    return-object p0
.end method

.method public setCurPani(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1462
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->curPani:Ljava/lang/String;

    return-object p0
.end method

.method public setDbrTimer(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1557
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->dbrTimer:I

    return-object p0
.end method

.method public setDisplayName(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1302
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->displayName:Ljava/lang/String;

    return-object p0
.end method

.method public setDomain(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1138
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->domain:Ljava/lang/String;

    return-object p0
.end method

.method public setEanbleVerstat(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1732
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->enableVerstat:Z

    return-object p0
.end method

.method public setEarlyMediaRtpTimeoutTimer(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1597
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->earlyMediaRtpTimeoutTimer:I

    return-object p0
.end method

.method public setEmergencyProfile(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1223
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isemergencysupport:Z

    return-object p0
.end method

.method public setEncrAlg(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1203
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->encralg:Ljava/lang/String;

    return-object p0
.end method

.method public setEncrNullRoaming(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1842
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->encrNullRoaming:Z

    return-object p0
.end method

.method public setExcludePaniVowifiInitialRegi(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1807
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->excludePaniVowifiInitialRegi:Z

    return-object p0
.end method

.method public setGcfConfigEnabled(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1472
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isGcfConfigEnabled:Z

    return-object p0
.end method

.method public setHashAlgoType(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1812
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->hashAlgoType:I

    return-object p0
.end method

.method public setHostname(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1208
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->hostname:Ljava/lang/String;

    return-object p0
.end method

.method public setIface(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1093
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->iface:Ljava/lang/String;

    return-object p0
.end method

.method public setIgnoreDisplayName(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1782
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->ignoreDisplayName:Z

    return-object p0
.end method

.method public setImMsgTech(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1327
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->imMsgTech:Ljava/lang/String;

    return-object p0
.end method

.method public setImpi(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1108
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->impi:Ljava/lang/String;

    return-object p0
.end method

.method public setImpu(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1113
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->impu:Ljava/lang/String;

    return-object p0
.end method

.method public setImpuPreference(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1862
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->impuPreference:I

    return-object p0
.end method

.method public setImsiBasedImpu(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1118
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->imsiBasedImpu:Ljava/lang/String;

    return-object p0
.end method

.method public setInstanceId(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1317
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->instanceId:Ljava/lang/String;

    return-object p0
.end method

.method public setIsCdmalessEnabled(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1417
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isCdmalessEnabled:Z

    return-object p0
.end method

.method public setIsEnableGruu(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1442
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isEnableGruu:Z

    return-object p0
.end method

.method public setIsEnableSessionId(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1452
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isEnableSessionId:Z

    return-object p0
.end method

.method public setIsEnableVcid(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1447
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isEnableVcid:Z

    return-object p0
.end method

.method public setIsFullCodecOfferRequired(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1272
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isFullCodecOfferRequired:Z

    return-object p0
.end method

.method public setIsIpSec(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1178
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isipsec:Z

    return-object p0
.end method

.method public setIsRcsTelephonyFeatureTagRequired(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1267
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isRcsTelephonyFeatureTagRequired:Z

    return-object p0
.end method

.method public setIsServerHeaderEnabled(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1188
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->mIsServerHeaderEnabled:Z

    return-object p0
.end method

.method public setIsSimMobility(Ljava/lang/Boolean;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1697
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isSimMobility:Z

    return-object p0
.end method

.method public setIsSoftphoneEnabled(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1412
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isSoftphoneEnabled:Z

    return-object p0
.end method

.method public setIsTcpGracefulShutdownEnabled(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1562
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isTcpGracefulShutdownEnabled:Z

    return-object p0
.end method

.method public setIsTransportNeeded(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1547
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isTransportNeeded:Z

    return-object p0
.end method

.method public setIsUpdateSaOnStartSupported(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1867
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isUpdateSaOnStartSupported:Z

    return-object p0
.end method

.method public setIsXqEnabled(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1532
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isXqEnabled:Z

    return-object p0
.end method

.method public setKeepAliveFactor(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1837
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->keepAliveFactor:I

    return-object p0
.end method

.method public setLastPaniHeader(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1672
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->lastPaniHeader:Ljava/lang/String;

    return-object p0
.end method

.method public setLinkedImpuList(Ljava/util/List;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;"
        }
    .end annotation

    .line 1123
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->impuList:Ljava/util/List;

    return-object p0
.end method

.method public setMinSe(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1282
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->minSe:I

    return-object p0
.end method

.method public setMno(Lcom/sec/internal/constants/Mno;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1247
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->mno:Lcom/sec/internal/constants/Mno;

    return-object p0
.end method

.method public setMsrpBearerUsed(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1482
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isMsrpBearerUsed:Z

    return-object p0
.end method

.method public setMsrpTransType(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1527
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->msrpTransType:Ljava/lang/String;

    return-object p0
.end method

.method public setMssSize(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1422
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->mssSize:I

    return-object p0
.end method

.method public setMvnoName(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1252
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->mvno:Ljava/lang/String;

    return-object p0
.end method

.method public setNeedCheckAllowedMethodForRefresh(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1827
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->needCheckAllowedMethodForRefresh:Z

    return-object p0
.end method

.method public setNeedPidfRat(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1617
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->needPidfRat:I

    return-object p0
.end method

.method public setNeedPidfSipMsg(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1612
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->needPidfSipMsg:I

    return-object p0
.end method

.method public setNeedVolteRetryInNr(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1857
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->needVolteRetryInNr:Z

    return-object p0
.end method

.method public setNetId(J)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 3

    .line 1098
    iput-wide p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->netId:J

    return-object p0
.end method

.method public setNsdsServiceEnabled(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1477
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isNsdsServiceEnabled:Z

    return-object p0
.end method

.method public setOipFromPreferred(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1677
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->oipFromPreferred:Ljava/lang/String;

    return-object p0
.end method

.method public setOutboundSip(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1153
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->issipoutbound:Z

    return-object p0
.end method

.method public setOwnCapabilities(Lcom/sec/ims/options/Capabilities;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1242
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->capabilities:Lcom/sec/ims/options/Capabilities;

    return-object p0
.end method

.method public setPassword(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1148
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->password:Ljava/lang/String;

    return-object p0
.end method

.method public setPcscfIp(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1213
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->pcscfIp:Ljava/lang/String;

    return-object p0
.end method

.method public setPcscfPort(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1218
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->pcscfPort:I

    return-object p0
.end method

.method public setPdn(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1103
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->pdn:Ljava/lang/String;

    return-object p0
.end method

.method public setPhoneId(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1587
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->phoneId:I

    return-object p0
.end method

.method public setPrecondEnabled(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1257
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isprecondenabled:Z

    return-object p0
.end method

.method public setPrecondInitialSendrecv(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1262
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->ispreconinitialsendrecv:Z

    return-object p0
.end method

.method public setPreferredId(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1128
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->preferredId:Ljava/lang/String;

    return-object p0
.end method

.method public setPrivacyHeaderRestricted(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1577
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->privacyHeaderRestricted:Ljava/lang/String;

    return-object p0
.end method

.method public setProfileId(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1088
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->profileId:I

    return-object p0
.end method

.method public setPttSupported(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1757
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isPttSupported:Z

    return-object p0
.end method

.method public setQparam(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1158
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->qparam:I

    return-object p0
.end method

.method public setRat(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1552
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->rat:I

    return-object p0
.end method

.method public setRcsProfile(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1542
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->rcsProfile:I

    return-object p0
.end method

.method public setRealm(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1322
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->realm:Ljava/lang/String;

    return-object p0
.end method

.method public setRegExpires(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1292
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->regExpires:I

    return-object p0
.end method

.method public setRegRetryBaseTime(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1737
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->regRetryBaseTime:I

    return-object p0
.end method

.method public setRegRetryMaxTime(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1742
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->regRetryMaxTime:I

    return-object p0
.end method

.method public setRegiAlgorithm(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1143
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->registeralgo:Ljava/lang/String;

    return-object p0
.end method

.method public setRemoteUriType(Lcom/sec/ims/util/ImsUri$UriType;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1133
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->remoteuritype:Lcom/sec/ims/util/ImsUri$UriType;

    return-object p0
.end method

.method public setRetryInviteOnTcpReset(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1727
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->retryInviteOnTcpReset:Z

    return-object p0
.end method

.method public setRingbackTimer(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1427
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->ringbackTimer:I

    return-object p0
.end method

.method public setRingingTimer(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1432
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->ringingTimer:I

    return-object p0
.end method

.method public setScmVersion(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1517
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->scmVersion:I

    return-object p0
.end method

.method public setSelectTransportAfterTcpReset(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1682
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->selectTransportAfterTcpReset:Ljava/lang/String;

    return-object p0
.end method

.method public setSelfPort(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1512
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->selfPort:I

    return-object p0
.end method

.method public setSend18xReliably(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1772
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->send18xReliably:Z

    return-object p0
.end method

.method public setSendByeForUssi(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1792
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->sendByeForUssi:Z

    return-object p0
.end method

.method public setServiceList(Ljava/util/Set;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;"
        }
    .end annotation

    .line 1228
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->serviceList:Ljava/util/Set;

    return-object p0
.end method

.method public setSessionExpires(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1277
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->sessionexpires:I

    return-object p0
.end method

.method public setSessionRefresher(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1287
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->sessionrefresher:Ljava/lang/String;

    return-object p0
.end method

.method public setSingleRegiEnabled(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1822
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->singleRegiEnabled:Z

    return-object p0
.end method

.method public setSipMobility(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1437
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->sipMobility:I

    return-object p0
.end method

.method public setSrvccVersion(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1687
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->srvccVersion:I

    return-object p0
.end method

.method public setSslType(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1762
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->sslType:I

    return-object p0
.end method

.method public setSubscribeDialogEvent(Ljava/lang/Boolean;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1692
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->supportScribeDialogEvent:Z

    return-object p0
.end method

.method public setSubscribeReg(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1492
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isSubscribeReg:Z

    return-object p0
.end method

.method public setSubscriberTimer(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1487
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->subscriberTimer:I

    return-object p0
.end method

.method public setSupport183ForIr92v9Precondition(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1642
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->support183ForIr92v9Precondition:Z

    return-object p0
.end method

.method public setSupport199ProvisionalResponse(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1767
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->support199ProvisionalResponse:Z

    return-object p0
.end method

.method public setSupportAccessType(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1667
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->supportAccessType:Z

    return-object p0
.end method

.method public setSupportB2cCallcomposerWithoutFeaturetag(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1872
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->supportB2cCallcomposerWithoutFeaturetag:I

    return-object p0
.end method

.method public setSupportDualRcs(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1747
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->supportDualRcs:Z

    return-object p0
.end method

.method public setSupportDualSimCmc(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1717
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->supportDualSimCmc:Z

    return-object p0
.end method

.method public setSupportEct(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1592
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->supportEct:Z

    return-object p0
.end method

.method public setSupportImsNotAvailable(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1647
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->supportImsNotAvailable:Z

    return-object p0
.end method

.method public setSupportLtePreferred(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1652
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->supportLtePreferred:Z

    return-object p0
.end method

.method public setSupportNetworkInitUssi(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1787
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->supportNetworkInitUssi:Z

    return-object p0
.end method

.method public setSupportReplaceMerge(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1662
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->supportReplaceMerge:Z

    return-object p0
.end method

.method public setSupportRfc6337ForDelayedOffer(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1797
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->supportRfc6337ForDelayedOffer:Z

    return-object p0
.end method

.method public setSupportUac(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1847
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->supportUac:Z

    return-object p0
.end method

.method public setSupportUpgradePrecondition(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1657
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->supportUpgradePrecondition:Z

    return-object p0
.end method

.method public setSupportedGeolocationPhase(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1607
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->supportedGeolocationPhase:I

    return-object p0
.end method

.method public setTcpRstUacErrorcode(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1567
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->tcpRstUacErrorcode:I

    return-object p0
.end method

.method public setTcpRstUasErrorcode(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1572
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->tcpRstUasErrorcode:I

    return-object p0
.end method

.method public setTextMode(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1537
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->textMode:I

    return-object p0
.end method

.method public setTimer1(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1337
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timer1:I

    return-object p0
.end method

.method public setTimer2(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1342
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timer2:I

    return-object p0
.end method

.method public setTimer4(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1347
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timer4:I

    return-object p0
.end method

.method public setTimerA(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1352
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timerA:I

    return-object p0
.end method

.method public setTimerB(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1357
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timerB:I

    return-object p0
.end method

.method public setTimerC(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1362
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timerC:I

    return-object p0
.end method

.method public setTimerD(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1367
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timerD:I

    return-object p0
.end method

.method public setTimerE(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1372
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timerE:I

    return-object p0
.end method

.method public setTimerF(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1377
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timerF:I

    return-object p0
.end method

.method public setTimerG(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1382
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timerG:I

    return-object p0
.end method

.method public setTimerH(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1387
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timerH:I

    return-object p0
.end method

.method public setTimerI(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1392
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timerI:I

    return-object p0
.end method

.method public setTimerJ(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1397
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timerJ:I

    return-object p0
.end method

.method public setTimerK(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1402
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timerK:I

    return-object p0
.end method

.method public setTimerTS(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1407
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timerTS:I

    return-object p0
.end method

.method public setTransportType(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1168
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->transtype:Ljava/lang/String;

    return-object p0
.end method

.method public setTryReregisterFromKeepalive(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1752
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->tryReregisterFromKeepalive:Z

    return-object p0
.end method

.method public setUacSipList(Ljava/util/List;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;"
        }
    .end annotation

    .line 1852
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->uacSipList:Ljava/util/List;

    return-object p0
.end method

.method public setUse183OnProgressIncoming(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1632
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->use183OnProgressIncoming:Z

    return-object p0
.end method

.method public setUse200offerWhenRemoteNotSupport100rel(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1802
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->use200offerWhenRemoteNotSupport100rel:Z

    return-object p0
.end method

.method public setUseCompactHeader(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1193
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->mUseCompactHeader:Z

    return-object p0
.end method

.method public setUseKeepAlive(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1507
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->useKeepAlive:Z

    return-object p0
.end method

.method public setUsePemHeader(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1582
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->usePemHeader:Z

    return-object p0
.end method

.method public setUseProvisionalResponse100rel(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1627
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->useProvisionalResponse100rel:Z

    return-object p0
.end method

.method public setUseQ850causeOn480(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1637
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->useQ850causeOn480:Z

    return-object p0
.end method

.method public setUseSubcontactWhenResub(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1622
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->useSubcontactWhenResub:Z

    return-object p0
.end method

.method public setUseTls(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1173
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isenabletlsforsip:Z

    return-object p0
.end method

.method public setUserAgent(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1297
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->userAgent:Ljava/lang/String;

    return-object p0
.end method

.method public setUuid(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1312
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->uuid:Ljava/lang/String;

    return-object p0
.end method

.method public setVceConfigEnabled(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1467
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isVceConfigEnabled:Z

    return-object p0
.end method

.method public setVideoCrbtSupportType(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1722
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->videoCrbtSupportType:I

    return-object p0
.end method

.method public setVowifi5gsaMode(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1817
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->vowifi5gsaMode:I

    return-object p0
.end method

.method public setWifiPreConditionEnabled(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .registers 2

    .line 1183
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->mIsWifiPreConditionEnabled:Z

    return-object p0
.end method
