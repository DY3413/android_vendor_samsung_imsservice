.class public Lcom/sec/internal/ims/core/handler/secims/UaProfile;
.super Ljava/lang/Object;
.source "UaProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    }
.end annotation


# static fields
.field public static final TEXT_MODE_CS_TTY:I = 0x1

.field public static final TEXT_MODE_NONE:I = 0x0

.field public static final TEXT_MODE_PS_TTY:I = 0x2

.field public static final TEXT_MODE_RTT:I = 0x3


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

.field impuPreference:I

.field imsiBasedImpu:Ljava/lang/String;

.field instanceId:Ljava/lang/String;

.field isCdmalessEnabled:Z

.field isEmergencyProfile:Z

.field isEnableGruu:Z

.field isEnableSessionId:Z

.field isEnableVcid:Z

.field isFullCodecOfferRequired:Z

.field isGcfConfigEnabled:Z

.field isMsrpBearerUsed:Z

.field isNsdsServiceEnabled:Z

.field isPrecondEnabled:Z

.field isPrecondInitialSendrecv:Z

.field isPttSupported:Z

.field isRcsTelephonyFeatureTagRequired:Z

.field isSimMobility:Z

.field isSoftphoneEnabled:Z

.field isSubscribeReg:Z

.field isTcpGracefulShutdownEnabled:Z

.field isTlsEnabled:Z

.field isTransportNeeded:Z

.field isUpdateSaOnStartSupported:Z

.field isVceConfigEnabled:Z

.field isXqEnabled:Z

.field isipsec:Z

.field issipoutbound:Z

.field keepAliveFactor:I

.field lastPaniHeader:Ljava/lang/String;

.field linkedImpuList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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

.field sessionExpires:I

.field sessionRefresher:Ljava/lang/String;

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

.field supportSubscribeDialogEvent:Z

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
.method public constructor <init>(Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;)V
    .registers 4

    .line 742
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 743
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->profileId:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->profileId:I

    .line 744
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->iface:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->iface:Ljava/lang/String;

    .line 745
    iget-wide v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->netId:J

    iput-wide v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->netId:J

    .line 746
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->pdn:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->pdn:Ljava/lang/String;

    .line 747
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->impi:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->impi:Ljava/lang/String;

    .line 748
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->impu:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->impu:Ljava/lang/String;

    .line 749
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->imsiBasedImpu:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->imsiBasedImpu:Ljava/lang/String;

    .line 750
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->impuList:Ljava/util/List;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->linkedImpuList:Ljava/util/List;

    .line 751
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->domain:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->domain:Ljava/lang/String;

    .line 752
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->password:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->password:Ljava/lang/String;

    .line 753
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->issipoutbound:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->issipoutbound:Z

    .line 754
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->qparam:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->qparam:I

    .line 755
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->controlDscp:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->controlDscp:I

    .line 756
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->transtype:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->transtype:Ljava/lang/String;

    .line 757
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isemergencysupport:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isEmergencyProfile:Z

    .line 758
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isipsec:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isipsec:Z

    .line 759
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->mIsWifiPreConditionEnabled:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->mIsWifiPreConditionEnabled:Z

    .line 760
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->mIsServerHeaderEnabled:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->mIsServerHeaderEnabled:Z

    .line 761
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->mUseCompactHeader:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->mUseCompactHeader:Z

    .line 762
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->encralg:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->encralg:Ljava/lang/String;

    .line 763
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->authalg:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->authalg:Ljava/lang/String;

    .line 764
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isenabletlsforsip:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isTlsEnabled:Z

    .line 765
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->registeralgo:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->registeralgo:Ljava/lang/String;

    .line 766
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->preferredId:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->preferredId:Ljava/lang/String;

    .line 767
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->remoteuritype:Lcom/sec/ims/util/ImsUri$UriType;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->remoteuritype:Lcom/sec/ims/util/ImsUri$UriType;

    .line 768
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->mno:Lcom/sec/internal/constants/Mno;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->mno:Lcom/sec/internal/constants/Mno;

    .line 769
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->mvno:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->mvno:Ljava/lang/String;

    .line 771
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->hostname:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->hostname:Ljava/lang/String;

    .line 772
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->pcscfIp:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->pcscfIp:Ljava/lang/String;

    .line 773
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->pcscfPort:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->pcscfPort:I

    .line 774
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->serviceList:Ljava/util/Set;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->serviceList:Ljava/util/Set;

    .line 776
    :try_start_7f
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->capabilities:Lcom/sec/ims/options/Capabilities;

    invoke-virtual {v0}, Lcom/sec/ims/options/Capabilities;->clone()Lcom/sec/ims/options/Capabilities;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->capabilities:Lcom/sec/ims/options/Capabilities;
    :try_end_87
    .catch Ljava/lang/NullPointerException; {:try_start_7f .. :try_end_87} :catch_88
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_7f .. :try_end_87} :catch_88

    goto :goto_8b

    :catch_88
    const/4 v0, 0x0

    .line 778
    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->capabilities:Lcom/sec/ims/options/Capabilities;

    .line 780
    :goto_8b
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isprecondenabled:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isPrecondEnabled:Z

    .line 781
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->ispreconinitialsendrecv:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isPrecondInitialSendrecv:Z

    .line 782
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isRcsTelephonyFeatureTagRequired:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isRcsTelephonyFeatureTagRequired:Z

    .line 783
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isFullCodecOfferRequired:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isFullCodecOfferRequired:Z

    .line 784
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->sessionexpires:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->sessionExpires:I

    .line 785
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->minSe:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->minSe:I

    .line 786
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->sessionrefresher:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->sessionRefresher:Ljava/lang/String;

    .line 787
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->regExpires:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->regExpires:I

    .line 788
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->userAgent:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->userAgent:Ljava/lang/String;

    .line 789
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->displayName:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->displayName:Ljava/lang/String;

    .line 790
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->contactDisplayName:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->contactDisplayName:Ljava/lang/String;

    .line 791
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->uuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->uuid:Ljava/lang/String;

    .line 792
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->instanceId:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->instanceId:Ljava/lang/String;

    .line 793
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->realm:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->realm:Ljava/lang/String;

    .line 794
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->imMsgTech:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->imMsgTech:Ljava/lang/String;

    .line 795
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->callProfile:Lcom/sec/internal/ims/core/handler/secims/CallProfile;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->callProfile:Lcom/sec/internal/ims/core/handler/secims/CallProfile;

    .line 796
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->mssSize:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->mssSize:I

    .line 797
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->sipMobility:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->sipMobility:I

    .line 799
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timer1:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->timer1:I

    .line 800
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timer2:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->timer2:I

    .line 801
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timer4:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->timer4:I

    .line 802
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timerA:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->timerA:I

    .line 803
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timerB:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->timerB:I

    .line 804
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timerC:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->timerC:I

    .line 805
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timerD:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->timerD:I

    .line 806
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timerE:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->timerE:I

    .line 807
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timerF:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->timerF:I

    .line 808
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timerG:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->timerG:I

    .line 809
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timerH:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->timerH:I

    .line 810
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timerI:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->timerI:I

    .line 811
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timerJ:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->timerJ:I

    .line 812
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timerK:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->timerK:I

    .line 813
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timerTS:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->timerTS:I

    .line 815
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isSoftphoneEnabled:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isSoftphoneEnabled:Z

    .line 816
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isCdmalessEnabled:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isCdmalessEnabled:Z

    .line 817
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->ringbackTimer:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->ringbackTimer:I

    .line 818
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->ringingTimer:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->ringingTimer:I

    .line 819
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isEnableGruu:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isEnableGruu:Z

    .line 820
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isEnableVcid:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isEnableVcid:Z

    .line 821
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isEnableSessionId:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isEnableSessionId:Z

    .line 822
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->audioEngineType:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->audioEngineType:I

    .line 823
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->curPani:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->curPani:Ljava/lang/String;

    .line 824
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isVceConfigEnabled:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isVceConfigEnabled:Z

    .line 825
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isGcfConfigEnabled:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isGcfConfigEnabled:Z

    .line 826
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isNsdsServiceEnabled:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isNsdsServiceEnabled:Z

    .line 827
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isMsrpBearerUsed:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isMsrpBearerUsed:Z

    .line 828
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->subscriberTimer:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->subscriberTimer:I

    .line 829
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isSubscribeReg:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isSubscribeReg:Z

    .line 830
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->accessToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->accessToken:Ljava/lang/String;

    .line 831
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->authServerUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->authServerUrl:Ljava/lang/String;

    .line 832
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->useKeepAlive:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->useKeepAlive:Z

    .line 833
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->selfPort:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->selfPort:I

    .line 834
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->scmVersion:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->scmVersion:I

    .line 835
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->activeDataPhoneId:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->activeDataPhoneId:I

    .line 836
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->msrpTransType:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->msrpTransType:Ljava/lang/String;

    .line 837
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isXqEnabled:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isXqEnabled:Z

    .line 838
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->textMode:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->textMode:I

    .line 839
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->rcsProfile:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->rcsProfile:I

    .line 840
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isTransportNeeded:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isTransportNeeded:Z

    .line 841
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->rat:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->rat:I

    .line 842
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->dbrTimer:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->dbrTimer:I

    .line 843
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isTcpGracefulShutdownEnabled:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isTcpGracefulShutdownEnabled:Z

    .line 844
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->tcpRstUacErrorcode:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->tcpRstUacErrorcode:I

    .line 845
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->tcpRstUasErrorcode:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->tcpRstUasErrorcode:I

    .line 846
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->privacyHeaderRestricted:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->privacyHeaderRestricted:Ljava/lang/String;

    .line 847
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->usePemHeader:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->usePemHeader:Z

    .line 848
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->phoneId:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->phoneId:I

    .line 849
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->supportEct:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->supportEct:Z

    .line 850
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->earlyMediaRtpTimeoutTimer:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->earlyMediaRtpTimeoutTimer:I

    .line 851
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->addHistinfo:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->addHistinfo:Z

    .line 852
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->supportedGeolocationPhase:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->supportedGeolocationPhase:I

    .line 853
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->needPidfSipMsg:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->needPidfSipMsg:I

    .line 854
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->needPidfRat:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->needPidfRat:I

    .line 855
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->useProvisionalResponse100rel:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->useProvisionalResponse100rel:Z

    .line 856
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->use183OnProgressIncoming:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->use183OnProgressIncoming:Z

    .line 857
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->useQ850causeOn480:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->useQ850causeOn480:Z

    .line 858
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->support183ForIr92v9Precondition:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->support183ForIr92v9Precondition:Z

    .line 859
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->supportImsNotAvailable:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->supportImsNotAvailable:Z

    .line 860
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->supportLtePreferred:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->supportLtePreferred:Z

    .line 861
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->useSubcontactWhenResub:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->useSubcontactWhenResub:Z

    .line 862
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->supportUpgradePrecondition:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->supportUpgradePrecondition:Z

    .line 863
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->supportReplaceMerge:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->supportReplaceMerge:Z

    .line 864
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->supportAccessType:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->supportAccessType:Z

    .line 865
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->lastPaniHeader:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->lastPaniHeader:Ljava/lang/String;

    .line 866
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->oipFromPreferred:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->oipFromPreferred:Ljava/lang/String;

    .line 867
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->selectTransportAfterTcpReset:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->selectTransportAfterTcpReset:Ljava/lang/String;

    .line 868
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->srvccVersion:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->srvccVersion:I

    .line 869
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->supportScribeDialogEvent:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->supportSubscribeDialogEvent:Z

    .line 870
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isSimMobility:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isSimMobility:Z

    .line 871
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->cmcType:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->cmcType:I

    .line 872
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->cmcRelayType:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->cmcRelayType:Ljava/lang/String;

    .line 873
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->cmcEmergencyNumbers:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->cmcEmergencyNumbers:Ljava/lang/String;

    .line 874
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->supportDualSimCmc:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->supportDualSimCmc:Z

    .line 875
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->videoCrbtSupportType:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->videoCrbtSupportType:I

    .line 876
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->retryInviteOnTcpReset:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->retryInviteOnTcpReset:Z

    .line 877
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->enableVerstat:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->enableVerstat:Z

    .line 878
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->regRetryBaseTime:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->regRetryBaseTime:I

    .line 879
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->regRetryMaxTime:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->regRetryMaxTime:I

    .line 880
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->supportDualRcs:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->supportDualRcs:Z

    .line 881
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->tryReregisterFromKeepalive:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->tryReregisterFromKeepalive:Z

    .line 882
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isPttSupported:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isPttSupported:Z

    .line 883
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->sslType:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->sslType:I

    .line 884
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->support199ProvisionalResponse:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->support199ProvisionalResponse:Z

    .line 885
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->send18xReliably:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->send18xReliably:Z

    .line 886
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->acb:Ljava/util/List;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->acb:Ljava/util/List;

    .line 887
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->ignoreDisplayName:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->ignoreDisplayName:Z

    .line 888
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->supportNetworkInitUssi:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->supportNetworkInitUssi:Z

    .line 889
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->sendByeForUssi:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->sendByeForUssi:Z

    .line 890
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->supportRfc6337ForDelayedOffer:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->supportRfc6337ForDelayedOffer:Z

    .line 891
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->use200offerWhenRemoteNotSupport100rel:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->use200offerWhenRemoteNotSupport100rel:Z

    .line 892
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->hashAlgoType:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->hashAlgoType:I

    .line 893
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->vowifi5gsaMode:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->vowifi5gsaMode:I

    .line 894
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->excludePaniVowifiInitialRegi:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->excludePaniVowifiInitialRegi:Z

    .line 895
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->singleRegiEnabled:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->singleRegiEnabled:Z

    .line 896
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->needCheckAllowedMethodForRefresh:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->needCheckAllowedMethodForRefresh:Z

    .line 897
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->addMmtelCallComposerTag:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->addMmtelCallComposerTag:Z

    .line 898
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->keepAliveFactor:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->keepAliveFactor:I

    .line 899
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->encrNullRoaming:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->encrNullRoaming:Z

    .line 900
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->supportUac:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->supportUac:Z

    .line 901
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->uacSipList:Ljava/util/List;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->uacSipList:Ljava/util/List;

    .line 902
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->needVolteRetryInNr:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->needVolteRetryInNr:Z

    .line 903
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->impuPreference:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->impuPreference:I

    .line 904
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isUpdateSaOnStartSupported:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isUpdateSaOnStartSupported:Z

    .line 905
    iget p1, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->supportB2cCallcomposerWithoutFeaturetag:I

    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->supportB2cCallcomposerWithoutFeaturetag:I

    return-void
.end method


# virtual methods
.method public getAcb()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 657
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->acb:Ljava/util/List;

    return-object p0
.end method

.method public getAccessToken()Ljava/lang/String;
    .registers 1

    .line 477
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->accessToken:Ljava/lang/String;

    return-object p0
.end method

.method public getAddHistinfo()Z
    .registers 1

    .line 533
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->addHistinfo:Z

    return p0
.end method

.method public getAudioEngineType()I
    .registers 1

    .line 449
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->audioEngineType:I

    return p0
.end method

.method public getAuthServerUrl()Ljava/lang/String;
    .registers 1

    .line 481
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->authServerUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getAuthalg()Ljava/lang/String;
    .registers 1

    .line 285
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->authalg:Ljava/lang/String;

    return-object p0
.end method

.method public getCallProfile()Lcom/sec/internal/ims/core/handler/secims/CallProfile;
    .registers 1

    .line 361
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->callProfile:Lcom/sec/internal/ims/core/handler/secims/CallProfile;

    return-object p0
.end method

.method public getCmcEmergencyNumbers()Ljava/lang/String;
    .registers 1

    .line 619
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->cmcEmergencyNumbers:Ljava/lang/String;

    return-object p0
.end method

.method public getCmcRelayType()Ljava/lang/String;
    .registers 1

    .line 615
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->cmcRelayType:Ljava/lang/String;

    return-object p0
.end method

.method public getCmcType()I
    .registers 1

    .line 611
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->cmcType:I

    return p0
.end method

.method public getControlDscp()I
    .registers 1

    .line 253
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->controlDscp:I

    return p0
.end method

.method public getCurPani()Ljava/lang/String;
    .registers 1

    .line 457
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->curPani:Ljava/lang/String;

    return-object p0
.end method

.method public getDbrTimer()I
    .registers 1

    .line 501
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->dbrTimer:I

    return p0
.end method

.method public getDomain()Ljava/lang/String;
    .registers 1

    .line 237
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->domain:Ljava/lang/String;

    return-object p0
.end method

.method public getEarlyMediaRtpTimeoutTimer()I
    .registers 1

    .line 537
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->earlyMediaRtpTimeoutTimer:I

    return p0
.end method

.method public getEnableVerstat()Z
    .registers 1

    .line 638
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->enableVerstat:Z

    return p0
.end method

.method public getEncrNullRoaming()Z
    .registers 1

    .line 727
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->encrNullRoaming:Z

    return p0
.end method

.method public getEncralg()Ljava/lang/String;
    .registers 1

    .line 281
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->encralg:Ljava/lang/String;

    return-object p0
.end method

.method public getExcludePaniVowifiInitialRegi()Z
    .registers 1

    .line 682
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->excludePaniVowifiInitialRegi:Z

    return p0
.end method

.method public getHashAlgoTypeType()I
    .registers 1

    .line 684
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->hashAlgoType:I

    return p0
.end method

.method public getIface()Ljava/lang/String;
    .registers 1

    .line 201
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->iface:Ljava/lang/String;

    return-object p0
.end method

.method public getImMsgTech()Ljava/lang/String;
    .registers 1

    .line 724
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->imMsgTech:Ljava/lang/String;

    return-object p0
.end method

.method public getImpi()Ljava/lang/String;
    .registers 1

    .line 213
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->impi:Ljava/lang/String;

    return-object p0
.end method

.method public getImpu()Ljava/lang/String;
    .registers 1

    .line 217
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->impu:Ljava/lang/String;

    return-object p0
.end method

.method public getImpuPreference()I
    .registers 1

    .line 736
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->impuPreference:I

    return p0
.end method

.method public getImsiBasedImpu()Ljava/lang/String;
    .registers 1

    .line 225
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->imsiBasedImpu:Ljava/lang/String;

    return-object p0
.end method

.method public getInstanceId()Ljava/lang/String;
    .registers 1

    .line 465
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->instanceId:Ljava/lang/String;

    return-object p0
.end method

.method public getIsAddMmtelCallComposerTag()Z
    .registers 1

    .line 731
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->addMmtelCallComposerTag:Z

    return p0
.end method

.method public getIsEnableGruu()Z
    .registers 1

    .line 437
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isEnableGruu:Z

    return p0
.end method

.method public getIsEnableSessionId()Z
    .registers 1

    .line 445
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isEnableSessionId:Z

    return p0
.end method

.method public getIsEnableVcid()Z
    .registers 1

    .line 441
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isEnableVcid:Z

    return p0
.end method

.method public getIsPttSupported()Z
    .registers 1

    .line 644
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isPttSupported:Z

    return p0
.end method

.method public getIsSimMobility()Z
    .registers 1

    .line 607
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isSimMobility:Z

    return p0
.end method

.method public getIsTcpGracefulShutdownEnabled()Z
    .registers 1

    .line 505
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isTcpGracefulShutdownEnabled:Z

    return p0
.end method

.method public getIsTransportNeeded()Z
    .registers 1

    .line 493
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isTransportNeeded:Z

    return p0
.end method

.method public getIsXqEnabled()Z
    .registers 1

    .line 485
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isXqEnabled:Z

    return p0
.end method

.method public getKeepAliveFactor()I
    .registers 1

    .line 709
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->keepAliveFactor:I

    return p0
.end method

.method public getLastPaniHeader()Ljava/lang/String;
    .registers 1

    .line 591
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->lastPaniHeader:Ljava/lang/String;

    return-object p0
.end method

.method public getLinkedImpuList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 233
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->linkedImpuList:Ljava/util/List;

    return-object p0
.end method

.method public getMno()Lcom/sec/internal/constants/Mno;
    .registers 1

    .line 345
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->mno:Lcom/sec/internal/constants/Mno;

    return-object p0
.end method

.method public getMssSize()I
    .registers 1

    .line 425
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->mssSize:I

    return p0
.end method

.method public getNeedCheckAllowedMethodForRefresh()Z
    .registers 1

    .line 701
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->needCheckAllowedMethodForRefresh:Z

    return p0
.end method

.method public getNeedPidfRat()I
    .registers 1

    .line 548
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->needPidfRat:I

    return p0
.end method

.method public getNeedPidfSipMsg()I
    .registers 1

    .line 545
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->needPidfSipMsg:I

    return p0
.end method

.method public getNeedVolteRetryInNr()Z
    .registers 1

    .line 734
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->needVolteRetryInNr:Z

    return p0
.end method

.method public getNetId()J
    .registers 3

    .line 205
    iget-wide v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->netId:J

    return-wide v0
.end method

.method public getOipFromPreferred()Ljava/lang/String;
    .registers 1

    .line 595
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->oipFromPreferred:Ljava/lang/String;

    return-object p0
.end method

.method public getOwnCapabilities()Lcom/sec/ims/options/Capabilities;
    .registers 1

    .line 333
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->capabilities:Lcom/sec/ims/options/Capabilities;

    return-object p0
.end method

.method public getPassword()Ljava/lang/String;
    .registers 1

    .line 241
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->password:Ljava/lang/String;

    return-object p0
.end method

.method public getPcscfIp()Ljava/lang/String;
    .registers 1

    .line 305
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->pcscfIp:Ljava/lang/String;

    return-object p0
.end method

.method public getPcscfPort()I
    .registers 1

    .line 313
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->pcscfPort:I

    return p0
.end method

.method public getPdn()Ljava/lang/String;
    .registers 1

    .line 209
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->pdn:Ljava/lang/String;

    return-object p0
.end method

.method public getPhoneId()I
    .registers 1

    .line 525
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->phoneId:I

    return p0
.end method

.method public getPrivacyHeaderRestricted()Ljava/lang/String;
    .registers 1

    .line 517
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->privacyHeaderRestricted:Ljava/lang/String;

    return-object p0
.end method

.method public getProfileId()I
    .registers 1

    .line 197
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->profileId:I

    return p0
.end method

.method public getQparam()I
    .registers 1

    .line 249
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->qparam:I

    return p0
.end method

.method public getRat()I
    .registers 1

    .line 497
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->rat:I

    return p0
.end method

.method public getRcsProfile()I
    .registers 1

    .line 489
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->rcsProfile:I

    return p0
.end method

.method public getRegExpires()I
    .registers 1

    .line 317
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->regExpires:I

    return p0
.end method

.method public getRegRetryBaseTime()I
    .registers 1

    .line 634
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->regRetryBaseTime:I

    return p0
.end method

.method public getRegRetryMaxTime()I
    .registers 1

    .line 636
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->regRetryMaxTime:I

    return p0
.end method

.method public getRegisteralgo()Ljava/lang/String;
    .registers 1

    .line 293
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->registeralgo:Ljava/lang/String;

    return-object p0
.end method

.method public getRemoteuritype()Lcom/sec/ims/util/ImsUri$UriType;
    .registers 1

    .line 301
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->remoteuritype:Lcom/sec/ims/util/ImsUri$UriType;

    return-object p0
.end method

.method public getRetryInviteOnTcpReset()Z
    .registers 1

    .line 631
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->retryInviteOnTcpReset:Z

    return p0
.end method

.method public getRingbackTimer()I
    .registers 1

    .line 429
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->ringbackTimer:I

    return p0
.end method

.method public getRingingTimer()I
    .registers 1

    .line 433
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->ringingTimer:I

    return p0
.end method

.method public getSelectTransportAfterTcpReset()Ljava/lang/String;
    .registers 1

    .line 599
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->selectTransportAfterTcpReset:Ljava/lang/String;

    return-object p0
.end method

.method public getSend18xReliably()Z
    .registers 1

    .line 653
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->send18xReliably:Z

    return p0
.end method

.method public getSendByeForUssi()Z
    .registers 1

    .line 667
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->sendByeForUssi:Z

    return p0
.end method

.method public getServiceList()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 321
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->serviceList:Ljava/util/Set;

    return-object p0
.end method

.method public getSingleRegiEnabled()Z
    .registers 1

    .line 694
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->singleRegiEnabled:Z

    return p0
.end method

.method public getSipMobility()I
    .registers 1

    .line 353
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->sipMobility:I

    return p0
.end method

.method public getSrvccVersion()I
    .registers 1

    .line 603
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->srvccVersion:I

    return p0
.end method

.method public getSslType()I
    .registers 1

    .line 646
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->sslType:I

    return p0
.end method

.method public getSupport183ForIr92v9Precondition()Z
    .registers 1

    .line 563
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->support183ForIr92v9Precondition:Z

    return p0
.end method

.method public getSupport199ProvisionalResponse()Z
    .registers 1

    .line 649
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->support199ProvisionalResponse:Z

    return p0
.end method

.method public getSupportAccessType()Z
    .registers 1

    .line 587
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->supportAccessType:Z

    return p0
.end method

.method public getSupportB2cCallcomposerWithoutFeaturetag()I
    .registers 1

    .line 740
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->supportB2cCallcomposerWithoutFeaturetag:I

    return p0
.end method

.method public getSupportDualRcs()Z
    .registers 1

    .line 640
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->supportDualRcs:Z

    return p0
.end method

.method public getSupportDualSimCmc()Z
    .registers 1

    .line 623
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->supportDualSimCmc:Z

    return p0
.end method

.method public getSupportEct()Z
    .registers 1

    .line 529
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->supportEct:Z

    return p0
.end method

.method public getSupportImsNotAvailable()Z
    .registers 1

    .line 567
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->supportImsNotAvailable:Z

    return p0
.end method

.method public getSupportLtePreferred()Z
    .registers 1

    .line 571
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->supportLtePreferred:Z

    return p0
.end method

.method public getSupportNetworkInitUssi()Z
    .registers 1

    .line 663
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->supportNetworkInitUssi:Z

    return p0
.end method

.method public getSupportReplaceMerge()Z
    .registers 1

    .line 583
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->supportReplaceMerge:Z

    return p0
.end method

.method public getSupportRfc6337ForDelayedOffer()Z
    .registers 1

    .line 671
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->supportRfc6337ForDelayedOffer:Z

    return p0
.end method

.method public getSupportUac()Z
    .registers 1

    .line 714
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->supportUac:Z

    return p0
.end method

.method public getSupportUpgradePrecondition()Z
    .registers 1

    .line 579
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->supportUpgradePrecondition:Z

    return p0
.end method

.method public getSupportedGeolocationPhase()I
    .registers 1

    .line 541
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->supportedGeolocationPhase:I

    return p0
.end method

.method public getTcpRstUacErrorcode()I
    .registers 1

    .line 509
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->tcpRstUacErrorcode:I

    return p0
.end method

.method public getTcpRstUasErrorcode()I
    .registers 1

    .line 513
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->tcpRstUasErrorcode:I

    return p0
.end method

.method public getTextMode()I
    .registers 1

    .line 453
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->textMode:I

    return p0
.end method

.method public getTimer1()I
    .registers 1

    .line 365
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->timer1:I

    return p0
.end method

.method public getTimer2()I
    .registers 1

    .line 369
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->timer2:I

    return p0
.end method

.method public getTimer4()I
    .registers 1

    .line 373
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->timer4:I

    return p0
.end method

.method public getTimerA()I
    .registers 1

    .line 377
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->timerA:I

    return p0
.end method

.method public getTimerB()I
    .registers 1

    .line 381
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->timerB:I

    return p0
.end method

.method public getTimerC()I
    .registers 1

    .line 385
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->timerC:I

    return p0
.end method

.method public getTimerD()I
    .registers 1

    .line 389
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->timerD:I

    return p0
.end method

.method public getTimerE()I
    .registers 1

    .line 393
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->timerE:I

    return p0
.end method

.method public getTimerF()I
    .registers 1

    .line 397
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->timerF:I

    return p0
.end method

.method public getTimerG()I
    .registers 1

    .line 401
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->timerG:I

    return p0
.end method

.method public getTimerH()I
    .registers 1

    .line 405
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->timerH:I

    return p0
.end method

.method public getTimerI()I
    .registers 1

    .line 409
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->timerI:I

    return p0
.end method

.method public getTimerJ()I
    .registers 1

    .line 413
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->timerJ:I

    return p0
.end method

.method public getTimerK()I
    .registers 1

    .line 417
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->timerK:I

    return p0
.end method

.method public getTimerTS()I
    .registers 1

    .line 421
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->timerTS:I

    return p0
.end method

.method public getTranstype()Ljava/lang/String;
    .registers 1

    .line 257
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->transtype:Ljava/lang/String;

    return-object p0
.end method

.method public getTryReregisterFromKeepalive()Z
    .registers 1

    .line 642
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->tryReregisterFromKeepalive:Z

    return p0
.end method

.method public getUacSipList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 718
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->uacSipList:Ljava/util/List;

    return-object p0
.end method

.method public getUse183OnProgressIncoming()Z
    .registers 1

    .line 555
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->use183OnProgressIncoming:Z

    return p0
.end method

.method public getUse200offerWhenRemoteNotSupport100rel()Z
    .registers 1

    .line 675
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->use200offerWhenRemoteNotSupport100rel:Z

    return p0
.end method

.method public getUsePemHeader()Z
    .registers 1

    .line 521
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->usePemHeader:Z

    return p0
.end method

.method public getUseProvisionalResponse100rel()Z
    .registers 1

    .line 551
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->useProvisionalResponse100rel:Z

    return p0
.end method

.method public getUseQ850causeOn480()Z
    .registers 1

    .line 559
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->useQ850causeOn480:Z

    return p0
.end method

.method public getUseSubcontactWhenResub()Z
    .registers 1

    .line 575
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->useSubcontactWhenResub:Z

    return p0
.end method

.method public getUserAgent()Ljava/lang/String;
    .registers 1

    .line 349
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->userAgent:Ljava/lang/String;

    return-object p0
.end method

.method public getUuid()Ljava/lang/String;
    .registers 1

    .line 469
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->uuid:Ljava/lang/String;

    return-object p0
.end method

.method public getVideoCrbtSupportType()I
    .registers 1

    .line 627
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->videoCrbtSupportType:I

    return p0
.end method

.method public getVowifi5gsaMode()I
    .registers 1

    .line 679
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->vowifi5gsaMode:I

    return p0
.end method

.method public getisSubscribeReg()Z
    .registers 1

    .line 473
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isSubscribeReg:Z

    return p0
.end method

.method public getpreferredId()Ljava/lang/String;
    .registers 1

    .line 297
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->preferredId:Ljava/lang/String;

    return-object p0
.end method

.method public isDisplayNameIgnored()Z
    .registers 1

    .line 660
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->ignoreDisplayName:Z

    return p0
.end method

.method public isIsEmergencyProfile()Z
    .registers 1

    .line 261
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isEmergencyProfile:Z

    return p0
.end method

.method public isIsSipOutbound()Z
    .registers 1

    .line 245
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->issipoutbound:Z

    return p0
.end method

.method public isIsipsec()Z
    .registers 1

    .line 265
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isipsec:Z

    return p0
.end method

.method public isServerHeaderEnabled()Z
    .registers 1

    .line 273
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->mIsServerHeaderEnabled:Z

    return p0
.end method

.method public isTlsEnabled()Z
    .registers 1

    .line 289
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isTlsEnabled:Z

    return p0
.end method

.method public isUpdateSaOnStartSupported()Z
    .registers 1

    .line 738
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isUpdateSaOnStartSupported:Z

    return p0
.end method

.method public isWifiPreConditionEnabled()Z
    .registers 1

    .line 269
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->mIsWifiPreConditionEnabled:Z

    return p0
.end method

.method public setAddMmtelCallComposerTag(Z)V
    .registers 2

    .line 691
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->addMmtelCallComposerTag:Z

    return-void
.end method

.method public setCallProfile(Lcom/sec/internal/ims/core/handler/secims/CallProfile;)V
    .registers 2

    .line 357
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->callProfile:Lcom/sec/internal/ims/core/handler/secims/CallProfile;

    return-void
.end method

.method public setCurPani(Ljava/lang/String;)V
    .registers 2

    .line 461
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->curPani:Ljava/lang/String;

    return-void
.end method

.method public setImMsgTech(Ljava/lang/String;)V
    .registers 2

    .line 721
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->imMsgTech:Ljava/lang/String;

    return-void
.end method

.method public setImpu(Ljava/lang/String;)V
    .registers 2

    .line 221
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->impu:Ljava/lang/String;

    return-void
.end method

.method public setImsiBasedImpu(Ljava/lang/String;)V
    .registers 2

    .line 229
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->imsiBasedImpu:Ljava/lang/String;

    return-void
.end method

.method public setKeepAliveFactor(I)V
    .registers 2

    .line 705
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->keepAliveFactor:I

    return-void
.end method

.method public setLinkedImpuList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 329
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->linkedImpuList:Ljava/util/List;

    return-void
.end method

.method public setNeedCheckAllowedMethodForRefresh(Z)V
    .registers 2

    .line 697
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->needCheckAllowedMethodForRefresh:Z

    return-void
.end method

.method public setOwnCapabilities(Lcom/sec/ims/options/Capabilities;)V
    .registers 2

    .line 338
    :try_start_0
    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->clone()Lcom/sec/ims/options/Capabilities;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->capabilities:Lcom/sec/ims/options/Capabilities;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_a

    :catch_7
    const/4 p1, 0x0

    .line 340
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->capabilities:Lcom/sec/ims/options/Capabilities;

    :goto_a
    return-void
.end method

.method public setPcscfIp(Ljava/lang/String;)V
    .registers 2

    .line 309
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->pcscfIp:Ljava/lang/String;

    return-void
.end method

.method public setServiceList(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 325
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->serviceList:Ljava/util/Set;

    return-void
.end method

.method public setSingleRegiEnabled(Z)V
    .registers 2

    .line 687
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->singleRegiEnabled:Z

    return-void
.end method

.method public setSupportUac(Z)V
    .registers 2

    .line 712
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->supportUac:Z

    return-void
.end method

.method public setUacSipList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 716
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->uacSipList:Ljava/util/List;

    return-void
.end method

.method public shouldUseCompactHeader()Z
    .registers 1

    .line 277
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->mUseCompactHeader:Z

    return p0
.end method
