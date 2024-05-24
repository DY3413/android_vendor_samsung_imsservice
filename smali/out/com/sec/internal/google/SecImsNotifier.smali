.class public Lcom/sec/internal/google/SecImsNotifier;
.super Ljava/lang/Object;
.source "SecImsNotifier.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SecImsNotifier"

.field private static sInstance:Lcom/sec/internal/google/SecImsNotifier;


# instance fields
.field private final mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field protected final mSecImsServiceConnector:Lcom/sec/internal/google/SecImsServiceConnector;


# direct methods
.method public static synthetic $r8$lambda$ISX4cRFA1ahLsJtjBWqD7IhCLnk(Lcom/sec/ims/util/NameAddr;)Landroid/net/Uri;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/sec/internal/google/SecImsNotifier;->lambda$extractOwnUrisFromReg$1(Lcom/sec/ims/util/NameAddr;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$dBUGXr6MXodn8XmjJv5faYPcQ5E(Lcom/sec/ims/util/NameAddr;)Z
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/sec/internal/google/SecImsNotifier;->lambda$extractOwnUrisFromReg$0(Lcom/sec/ims/util/NameAddr;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$vMRriPMgzCSok0s3PGGqhHRB9h0(I)[Landroid/net/Uri;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/sec/internal/google/SecImsNotifier;->lambda$extractOwnUrisFromReg$2(I)[Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>()V
    .registers 5

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 58
    new-instance v1, Lcom/sec/internal/helper/SimpleEventLog;

    const-string v2, "SecImsNotifier"

    const/16 v3, 0x1f4

    invoke-direct {v1, v0, v2, v3}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/sec/internal/google/SecImsNotifier;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 59
    new-instance v1, Lcom/sec/internal/google/SecImsServiceConnector;

    invoke-direct {v1, v0}, Lcom/sec/internal/google/SecImsServiceConnector;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/internal/google/SecImsNotifier;->mSecImsServiceConnector:Lcom/sec/internal/google/SecImsServiceConnector;

    return-void
.end method

.method private convertToImsRegAttribute(Lcom/sec/ims/ImsRegistration;)Landroid/telephony/ims/ImsRegistrationAttributes;
    .registers 5

    .line 117
    new-instance v0, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getCurrentRat()I

    move-result v1

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->isEpdgOverCellularData()Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/sec/internal/google/SecImsNotifier;->getRegistrationTech(IZ)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;-><init>(I)V

    .line 118
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/google/SecImsNotifier;->getRegisteredFeatureTags(I)Ljava/util/Set;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;->setFeatureTags(Ljava/util/Set;)Landroid/telephony/ims/ImsRegistrationAttributes$Builder;

    move-result-object p0

    .line 119
    invoke-virtual {p0}, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;->build()Landroid/telephony/ims/ImsRegistrationAttributes;

    move-result-object p0

    return-object p0
.end method

.method private extractOwnUrisFromReg(Lcom/sec/ims/ImsRegistration;)[Landroid/net/Uri;
    .registers 2

    if-eqz p1, :cond_33

    .line 358
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImpuList()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_33

    .line 362
    :cond_d
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImpuList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/google/SecImsNotifier$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/sec/internal/google/SecImsNotifier$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/google/SecImsNotifier$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/sec/internal/google/SecImsNotifier$$ExternalSyntheticLambda1;-><init>()V

    .line 363
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/google/SecImsNotifier$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lcom/sec/internal/google/SecImsNotifier$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/net/Uri;

    return-object p0

    :cond_33
    :goto_33
    const/4 p0, 0x0

    new-array p0, p0, [Landroid/net/Uri;

    return-object p0
.end method

.method public static getInstance()Lcom/sec/internal/google/SecImsNotifier;
    .registers 1

    .line 64
    sget-object v0, Lcom/sec/internal/google/SecImsNotifier;->sInstance:Lcom/sec/internal/google/SecImsNotifier;

    if-nez v0, :cond_b

    .line 65
    new-instance v0, Lcom/sec/internal/google/SecImsNotifier;

    invoke-direct {v0}, Lcom/sec/internal/google/SecImsNotifier;-><init>()V

    sput-object v0, Lcom/sec/internal/google/SecImsNotifier;->sInstance:Lcom/sec/internal/google/SecImsNotifier;

    .line 67
    :cond_b
    sget-object v0, Lcom/sec/internal/google/SecImsNotifier;->sInstance:Lcom/sec/internal/google/SecImsNotifier;

    return-object v0
.end method

.method private getRegisteredFeatureTags(I)Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 138
    iget-object p0, p0, Lcom/sec/internal/google/SecImsNotifier;->mSecImsServiceConnector:Lcom/sec/internal/google/SecImsServiceConnector;

    invoke-virtual {p0, p1}, Lcom/sec/internal/google/SecImsServiceConnector;->getSipTransportImpl(I)Lcom/sec/internal/imsphone/SipTransportImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/imsphone/SipTransportImpl;->getRegisteredFeatureTags()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method private getRegistrationTech(IZ)I
    .registers 4

    .line 123
    invoke-static {p1}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 125
    :cond_8
    invoke-static {p1}, Lcom/sec/ims/extensions/TelephonyManagerExt;->getNetworkClass(I)I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    const/4 p0, 0x4

    return p0

    :cond_11
    const/16 p0, 0x12

    if-ne p1, p0, :cond_1a

    if-eqz p2, :cond_18

    return v0

    :cond_18
    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, -0x1

    return p0
.end method

.method private static synthetic lambda$extractOwnUrisFromReg$0(Lcom/sec/ims/util/NameAddr;)Z
    .registers 1

    .line 362
    invoke-virtual {p0}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/internal/helper/UriUtil;->hasMsisdnNumber(Lcom/sec/ims/util/ImsUri;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$extractOwnUrisFromReg$1(Lcom/sec/ims/util/NameAddr;)Landroid/net/Uri;
    .registers 1

    .line 363
    invoke-virtual {p0}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$extractOwnUrisFromReg$2(I)[Landroid/net/Uri;
    .registers 1

    .line 363
    new-array p0, p0, [Landroid/net/Uri;

    return-object p0
.end method


# virtual methods
.method public getRcsClientConfiguration(II)Ljava/lang/String;
    .registers 7

    .line 306
    iget-object v0, p0, Lcom/sec/internal/google/SecImsNotifier;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "getRcsClientConfiguration: item=%d"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 307
    iget-object v0, p0, Lcom/sec/internal/google/SecImsNotifier;->mSecImsServiceConnector:Lcom/sec/internal/google/SecImsServiceConnector;

    invoke-virtual {v0, p1}, Lcom/sec/internal/google/SecImsServiceConnector;->getImsConfigImpl(I)Lcom/sec/internal/imsphone/ImsConfigImpl;

    move-result-object v0

    if-nez v0, :cond_26

    .line 309
    iget-object p0, p0, Lcom/sec/internal/google/SecImsNotifier;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string p2, "notifyProvisionedStringValueChanged: SecImsService not ready"

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 312
    :cond_26
    invoke-virtual {v0, p2}, Lcom/sec/internal/imsphone/ImsConfigImpl;->getRcsClientConfiguration(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSipDelegateServiceList(I)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 498
    iget-object p0, p0, Lcom/sec/internal/google/SecImsNotifier;->mSecImsServiceConnector:Lcom/sec/internal/google/SecImsServiceConnector;

    invoke-virtual {p0, p1}, Lcom/sec/internal/google/SecImsServiceConnector;->getSipTransportImpl(I)Lcom/sec/internal/imsphone/SipTransportImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/imsphone/SipTransportImpl;->getServiceList()Ljava/util/List;

    move-result-object p0

    const-string p1, "presence"

    .line 499
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public hasSipDelegate(I)Z
    .registers 2

    .line 494
    iget-object p0, p0, Lcom/sec/internal/google/SecImsNotifier;->mSecImsServiceConnector:Lcom/sec/internal/google/SecImsServiceConnector;

    invoke-virtual {p0, p1}, Lcom/sec/internal/google/SecImsServiceConnector;->getSipTransportImpl(I)Lcom/sec/internal/imsphone/SipTransportImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/imsphone/SipTransportImpl;->hasSipDelegate()Z

    move-result p0

    return p0
.end method

.method public notifyImsRegistration(Lcom/sec/ims/ImsRegistration;ZLcom/sec/ims/ImsRegistrationError;)V
    .registers 9

    .line 80
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    .line 81
    iget-object v1, p0, Lcom/sec/internal/google/SecImsNotifier;->mSecImsServiceConnector:Lcom/sec/internal/google/SecImsServiceConnector;

    invoke-virtual {v1, v0}, Lcom/sec/internal/google/SecImsServiceConnector;->getImsRegistrationImpl(I)Lcom/sec/internal/imsphone/ImsRegistrationImpl;

    move-result-object v1

    const-string v2, "SecImsNotifier"

    if-nez v1, :cond_14

    const-string p0, "notifyImsRegistration: SecImsService not ready"

    .line 83
    invoke-static {v2, v0, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 87
    :cond_14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyImsRegistration: registered: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", prev registered: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/imsphone/ImsRegistrationImpl;->isRegistered()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 89
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v3

    if-nez v3, :cond_9c

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->hasVolteService()Z

    move-result v3

    if-nez v3, :cond_4c

    .line 90
    invoke-static {v0}, Lcom/sec/internal/ims/util/ImsUtil;->isSingleRegiAppConnected(I)Z

    move-result v3

    if-eqz v3, :cond_9c

    if-eqz p2, :cond_9c

    :cond_4c
    if-eqz p2, :cond_78

    .line 92
    invoke-direct {p0, p1}, Lcom/sec/internal/google/SecImsNotifier;->convertToImsRegAttribute(Lcom/sec/ims/ImsRegistration;)Landroid/telephony/ims/ImsRegistrationAttributes;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->onRegistered(Landroid/telephony/ims/ImsRegistrationAttributes;)V

    .line 94
    invoke-direct {p0, p1}, Lcom/sec/internal/google/SecImsNotifier;->extractOwnUrisFromReg(Lcom/sec/ims/ImsRegistration;)[Landroid/net/Uri;

    move-result-object p3

    .line 95
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyImsRegistration: ownUris: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 96
    invoke-virtual {v1, p3}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->onSubscriberAssociatedUriChanged([Landroid/net/Uri;)V

    .line 97
    invoke-virtual {v1}, Lcom/sec/internal/imsphone/ImsRegistrationImpl;->setRegistered()V

    goto :goto_9c

    .line 99
    :cond_78
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {p3}, Lcom/sec/ims/ImsRegistrationError;->getSipErrorCode()I

    move-result v3

    invoke-virtual {p3}, Lcom/sec/ims/ImsRegistrationError;->getDeregistrationReason()I

    move-result v4

    .line 100
    invoke-virtual {p3}, Lcom/sec/ims/ImsRegistrationError;->getSipErrorReason()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v2, v3, v4, p3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 103
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getCurrentRat()I

    move-result p3

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->isEpdgOverCellularData()Z

    move-result v3

    invoke-direct {p0, p3, v3}, Lcom/sec/internal/google/SecImsNotifier;->getRegistrationTech(IZ)I

    move-result p3

    const/4 v3, 0x0

    .line 101
    invoke-virtual {v1, v2, v3, p3}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->onDeregistered(Landroid/telephony/ims/ImsReasonInfo;II)V

    .line 104
    invoke-virtual {v1}, Lcom/sec/internal/imsphone/ImsRegistrationImpl;->setNotRegistered()V

    .line 109
    :cond_9c
    :goto_9c
    invoke-static {v0}, Lcom/sec/internal/ims/util/ImsUtil;->isSingleRegiAppConnected(I)Z

    move-result p3

    if-eqz p3, :cond_b5

    .line 110
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p3

    invoke-static {p3}, Lcom/sec/ims/settings/ImsProfile;->hasRcsService(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result p3

    if-eqz p3, :cond_b5

    .line 111
    iget-object p0, p0, Lcom/sec/internal/google/SecImsNotifier;->mSecImsServiceConnector:Lcom/sec/internal/google/SecImsServiceConnector;

    invoke-virtual {p0, v0}, Lcom/sec/internal/google/SecImsServiceConnector;->getSipTransportImpl(I)Lcom/sec/internal/imsphone/SipTransportImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/imsphone/SipTransportImpl;->onRegistrationChanged(Lcom/sec/ims/ImsRegistration;Z)V

    :cond_b5
    return-void
.end method

.method public notifyIntImsConfigChanged(III)V
    .registers 8

    .line 316
    iget-object v0, p0, Lcom/sec/internal/google/SecImsNotifier;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 317
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "notifyIntImsConfigChanged: item=%d value=%d"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 316
    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/sec/internal/google/SecImsNotifier;->mSecImsServiceConnector:Lcom/sec/internal/google/SecImsServiceConnector;

    invoke-virtual {v0, p1}, Lcom/sec/internal/google/SecImsServiceConnector;->getImsConfigImpl(I)Lcom/sec/internal/imsphone/ImsConfigImpl;

    move-result-object v0

    if-nez v0, :cond_29

    .line 320
    iget-object p0, p0, Lcom/sec/internal/google/SecImsNotifier;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string p2, "notifyIntImsConfigChanged: SecImsService not ready"

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    return-void

    .line 324
    :cond_29
    :try_start_29
    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsConfigImplBase;->getIImsConfig()Landroid/telephony/ims/aidl/IImsConfig;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Landroid/telephony/ims/aidl/IImsConfig;->notifyIntImsConfigChanged(II)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_30} :catch_31

    goto :goto_38

    .line 326
    :catch_31
    iget-object p0, p0, Lcom/sec/internal/google/SecImsNotifier;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string p2, "notifyIntImsConfigChanged: RemoteException"

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    :goto_38
    return-void
.end method

.method public notifyProvisionedIntValueChanged(III)V
    .registers 8

    .line 282
    iget-object v0, p0, Lcom/sec/internal/google/SecImsNotifier;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 283
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "notifyProvisionedIntValueChanged: item=%d value=%d"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 282
    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/sec/internal/google/SecImsNotifier;->mSecImsServiceConnector:Lcom/sec/internal/google/SecImsServiceConnector;

    invoke-virtual {v0, p1}, Lcom/sec/internal/google/SecImsServiceConnector;->getImsConfigImpl(I)Lcom/sec/internal/imsphone/ImsConfigImpl;

    move-result-object v0

    if-nez v0, :cond_29

    .line 286
    iget-object p0, p0, Lcom/sec/internal/google/SecImsNotifier;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string p2, "notifyRcsPreConfigurationReceived: SecImsService not ready"

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    return-void

    .line 289
    :cond_29
    invoke-virtual {v0, p2, p3}, Landroid/telephony/ims/stub/ImsConfigImplBase;->notifyProvisionedValueChanged(II)V

    return-void
.end method

.method public notifyProvisionedStringValueChanged(IILjava/lang/String;)V
    .registers 8

    .line 295
    iget-object v0, p0, Lcom/sec/internal/google/SecImsNotifier;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 296
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2, p3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "notifyProvisionedStringValueChanged: item=%d value=%s"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 295
    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/sec/internal/google/SecImsNotifier;->mSecImsServiceConnector:Lcom/sec/internal/google/SecImsServiceConnector;

    invoke-virtual {v0, p1}, Lcom/sec/internal/google/SecImsServiceConnector;->getImsConfigImpl(I)Lcom/sec/internal/imsphone/ImsConfigImpl;

    move-result-object v0

    if-nez v0, :cond_25

    .line 299
    iget-object p0, p0, Lcom/sec/internal/google/SecImsNotifier;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string p2, "notifyProvisionedStringValueChanged: SecImsService not ready"

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    return-void

    .line 302
    :cond_25
    invoke-virtual {v0, p2, p3}, Landroid/telephony/ims/stub/ImsConfigImplBase;->notifyProvisionedValueChanged(ILjava/lang/String;)V

    return-void
.end method

.method public notifyRcsAutoConfigurationErrorReceived(IILjava/lang/String;)V
    .registers 8

    .line 257
    iget-object v0, p0, Lcom/sec/internal/google/SecImsNotifier;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 258
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2, p3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "notifyAcsErrorReceived: error [%d %s]"

    .line 257
    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/sec/internal/google/SecImsNotifier;->mSecImsServiceConnector:Lcom/sec/internal/google/SecImsServiceConnector;

    invoke-virtual {v0, p1}, Lcom/sec/internal/google/SecImsServiceConnector;->getImsConfigImpl(I)Lcom/sec/internal/imsphone/ImsConfigImpl;

    move-result-object v0

    if-nez v0, :cond_25

    .line 261
    iget-object p0, p0, Lcom/sec/internal/google/SecImsNotifier;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string p2, "notifyAcsErrorReceived: SecImsService not ready"

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    return-void

    .line 264
    :cond_25
    invoke-virtual {v0, p2, p3}, Landroid/telephony/ims/stub/ImsConfigImplBase;->notifyAutoConfigurationErrorReceived(ILjava/lang/String;)V

    return-void
.end method

.method public notifyRcsAutoConfigurationReceived(I[BZ)V
    .registers 8

    .line 226
    iget-object v0, p0, Lcom/sec/internal/google/SecImsNotifier;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    array-length v2, p2

    .line 227
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "notifyAcsReceived: size [%d], compressed [%s]"

    .line 226
    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/sec/internal/google/SecImsNotifier;->mSecImsServiceConnector:Lcom/sec/internal/google/SecImsServiceConnector;

    invoke-virtual {v0, p1}, Lcom/sec/internal/google/SecImsServiceConnector;->getImsConfigImpl(I)Lcom/sec/internal/imsphone/ImsConfigImpl;

    move-result-object v0

    if-nez v0, :cond_2a

    .line 230
    iget-object p0, p0, Lcom/sec/internal/google/SecImsNotifier;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string p2, "notifyAcsReceived: SecImsService not ready"

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    return-void

    .line 234
    :cond_2a
    :try_start_2a
    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsConfigImplBase;->getIImsConfig()Landroid/telephony/ims/aidl/IImsConfig;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Landroid/telephony/ims/aidl/IImsConfig;->notifyRcsAutoConfigurationReceived([BZ)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_31} :catch_32

    goto :goto_39

    .line 236
    :catch_32
    iget-object p0, p0, Lcom/sec/internal/google/SecImsNotifier;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string p2, "notifyRcsAutoConfigurationReceived: RemoteException"

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    :goto_39
    return-void
.end method

.method public notifyRcsAutoConfigurationRemoved(I)V
    .registers 4

    .line 241
    iget-object v0, p0, Lcom/sec/internal/google/SecImsNotifier;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "notifyAcsRemoved"

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/sec/internal/google/SecImsNotifier;->mSecImsServiceConnector:Lcom/sec/internal/google/SecImsServiceConnector;

    invoke-virtual {v0, p1}, Lcom/sec/internal/google/SecImsServiceConnector;->getImsConfigImpl(I)Lcom/sec/internal/imsphone/ImsConfigImpl;

    move-result-object v0

    if-nez v0, :cond_17

    .line 244
    iget-object p0, p0, Lcom/sec/internal/google/SecImsNotifier;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v0, "notifyAcsRemoved: SecImsService not ready"

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    return-void

    .line 248
    :cond_17
    :try_start_17
    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsConfigImplBase;->getIImsConfig()Landroid/telephony/ims/aidl/IImsConfig;

    move-result-object v0

    invoke-interface {v0}, Landroid/telephony/ims/aidl/IImsConfig;->notifyRcsAutoConfigurationRemoved()V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1e} :catch_1f

    goto :goto_26

    .line 250
    :catch_1f
    iget-object p0, p0, Lcom/sec/internal/google/SecImsNotifier;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v0, "notifyRcsAutoConfigurationRemoved: RemoteException"

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    :goto_26
    return-void
.end method

.method public notifyRcsPreConfigurationReceived(I[B)V
    .registers 5

    .line 270
    iget-object v0, p0, Lcom/sec/internal/google/SecImsNotifier;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "notifyRcsPreConfigurationReceived"

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/sec/internal/google/SecImsNotifier;->mSecImsServiceConnector:Lcom/sec/internal/google/SecImsServiceConnector;

    invoke-virtual {v0, p1}, Lcom/sec/internal/google/SecImsServiceConnector;->getImsConfigImpl(I)Lcom/sec/internal/imsphone/ImsConfigImpl;

    move-result-object v0

    if-nez v0, :cond_17

    .line 273
    iget-object p0, p0, Lcom/sec/internal/google/SecImsNotifier;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string p2, "notifyRcsPreConfigurationReceived: SecImsService not ready"

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    return-void

    .line 276
    :cond_17
    invoke-virtual {v0, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase;->notifyPreProvisioningReceived([B)V

    return-void
.end method

.method public notifySipMessage(ILcom/sec/internal/constants/ims/SipMsg;)V
    .registers 6

    .line 347
    iget-object v0, p0, Lcom/sec/internal/google/SecImsNotifier;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifySipMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 348
    iget-object p0, p0, Lcom/sec/internal/google/SecImsNotifier;->mSecImsServiceConnector:Lcom/sec/internal/google/SecImsServiceConnector;

    invoke-virtual {p0, p1}, Lcom/sec/internal/google/SecImsServiceConnector;->getSipTransportImpl(I)Lcom/sec/internal/imsphone/SipTransportImpl;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/internal/imsphone/SipTransportImpl;->notifySipMessage(Lcom/sec/internal/constants/ims/SipMsg;)V

    return-void
.end method

.method public notifyStringImsConfigChanged(IILjava/lang/String;)V
    .registers 8

    .line 331
    iget-object v0, p0, Lcom/sec/internal/google/SecImsNotifier;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 332
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2, p3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "notifyStringImsConfigChanged: item=%d value=%s"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 331
    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/sec/internal/google/SecImsNotifier;->mSecImsServiceConnector:Lcom/sec/internal/google/SecImsServiceConnector;

    invoke-virtual {v0, p1}, Lcom/sec/internal/google/SecImsServiceConnector;->getImsConfigImpl(I)Lcom/sec/internal/imsphone/ImsConfigImpl;

    move-result-object v0

    if-nez v0, :cond_25

    .line 335
    iget-object p0, p0, Lcom/sec/internal/google/SecImsNotifier;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string p2, "notifyStringImsConfigChanged: SecImsService not ready"

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    return-void

    .line 340
    :cond_25
    :try_start_25
    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsConfigImplBase;->getIImsConfig()Landroid/telephony/ims/aidl/IImsConfig;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Landroid/telephony/ims/aidl/IImsConfig;->notifyStringImsConfigChanged(ILjava/lang/String;)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_2c} :catch_2d

    goto :goto_34

    .line 342
    :catch_2d
    iget-object p0, p0, Lcom/sec/internal/google/SecImsNotifier;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string p2, "notifyStringImsConfigChanged: RemoteException"

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    :goto_34
    return-void
.end method

.method public onDialogEvent(Lcom/sec/ims/DialogEvent;)V
    .registers 4

    .line 422
    iget-object p0, p0, Lcom/sec/internal/google/SecImsNotifier;->mSecImsServiceConnector:Lcom/sec/internal/google/SecImsServiceConnector;

    invoke-virtual {p1}, Lcom/sec/ims/DialogEvent;->getPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/google/SecImsServiceConnector;->getMmTelFeatureImpl(I)Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    move-result-object p0

    if-nez p0, :cond_18

    .line 424
    invoke-virtual {p1}, Lcom/sec/ims/DialogEvent;->getPhoneId()I

    move-result p0

    const-string p1, "onDialogEvent: MmTelFeatureImpl not ready"

    const-string v0, "SecImsNotifier"

    invoke-static {v0, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 428
    :cond_18
    :try_start_18
    invoke-virtual {p0}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->getMultiEndpointInterface()Lcom/android/ims/internal/IImsMultiEndpoint;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/imsphone/ImsMultiEndPointImpl;

    if-eqz v0, :cond_2e

    .line 430
    invoke-virtual {p1}, Lcom/sec/ims/DialogEvent;->getRegId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->getCmcTypeFromRegHandle(I)I

    move-result p0

    .line 431
    invoke-virtual {v0, p1, p0}, Lcom/sec/internal/imsphone/ImsMultiEndPointImpl;->setDialogInfo(Lcom/sec/ims/DialogEvent;I)V

    .line 432
    invoke-virtual {v0}, Lcom/sec/internal/imsphone/ImsMultiEndPointImpl;->requestImsExternalCallStateInfo()V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_2e} :catch_2f

    :cond_2e
    return-void

    :catch_2f
    move-exception p0

    .line 435
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public onIncomingCall(II)V
    .registers 8

    const-string v0, "net.sip.vzthirdpartyapi"

    const/4 v1, 0x0

    .line 367
    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    .line 370
    :cond_a
    iget-object p0, p0, Lcom/sec/internal/google/SecImsNotifier;->mSecImsServiceConnector:Lcom/sec/internal/google/SecImsServiceConnector;

    invoke-virtual {p0, p1}, Lcom/sec/internal/google/SecImsServiceConnector;->getMmTelFeatureImpl(I)Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    move-result-object p0

    if-nez p0, :cond_1a

    const-string p0, "SecImsNotifier"

    const-string p2, "onIncomingCall: MmTelFeatureImpl not ready"

    .line 372
    invoke-static {p0, p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 375
    :cond_1a
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 378
    :try_start_1f
    iget-object v1, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {v1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getSessionByCallId(I)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v1

    if-eqz v1, :cond_83

    .line 380
    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    .line 381
    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getHistoryInfo()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3a

    const-string v3, "com.samsung.telephony.extra.SEM_EXTRA_FORWARDED_CALL"

    .line 382
    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getHistoryInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 385
    :cond_3a
    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v3

    const/16 v4, 0xc

    if-ne v3, v4, :cond_48

    const-string v3, "android.telephony.ims.feature.extra.IS_USSD"

    const/4 v4, 0x1

    .line 386
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 389
    :cond_48
    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getEchoCallId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_64

    const-string v3, "com.samsung.ims.extra.ECHO_CALL_ID"

    .line 390
    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getEchoCallId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "com.samsung.ims.extra.EPSFB_SUCCESS"

    .line 391
    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getEPSFBsuccess()Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 394
    :cond_64
    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getEchoCellId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_77

    const-string v3, "com.samsung.ims.extra.ECHO_CELL_ID"

    .line 395
    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getEchoCellId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 398
    :cond_77
    invoke-virtual {p0}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->getCmcImsServiceUtil()Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;

    move-result-object v2

    invoke-virtual {v2, p1, v0, v1}, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->postProcessForCmcIncomingCall(ILandroid/content/Intent;Lcom/sec/ims/volte2/IImsCallSession;)V
    :try_end_7e
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_7e} :catch_7f

    goto :goto_83

    :catch_7f
    move-exception p1

    .line 401
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 404
    :cond_83
    :goto_83
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->onIncomingCall(ILandroid/os/Bundle;)V

    return-void
.end method

.method public onIncomingPreAlerting(ILcom/sec/ims/volte2/data/ImsCallInfo;)V
    .registers 5

    .line 408
    iget-object v0, p0, Lcom/sec/internal/google/SecImsNotifier;->mSecImsServiceConnector:Lcom/sec/internal/google/SecImsServiceConnector;

    invoke-virtual {v0, p1}, Lcom/sec/internal/google/SecImsServiceConnector;->getMmTelFeatureImpl(I)Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    move-result-object v0

    if-nez v0, :cond_10

    const-string p0, "SecImsNotifier"

    const-string p2, "onIncomingCall: MmTelFeatureImpl not ready"

    .line 410
    invoke-static {p0, p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 414
    :cond_10
    invoke-virtual {p2}, Lcom/sec/ims/volte2/data/ImsCallInfo;->getCallId()I

    move-result p2

    .line 415
    iget-object v0, v0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getPendingSession(Ljava/lang/String;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 417
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/google/SecImsNotifier;->onIncomingCall(II)V

    :cond_23
    return-void
.end method

.method public onP2pPushCallEvent(Lcom/sec/ims/DialogEvent;)V
    .registers 5

    const-string v0, "onP2pPushCallEvent"

    const-string v1, "SecImsNotifier"

    .line 461
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iget-object v0, p0, Lcom/sec/internal/google/SecImsNotifier;->mSecImsServiceConnector:Lcom/sec/internal/google/SecImsServiceConnector;

    invoke-virtual {p1}, Lcom/sec/ims/DialogEvent;->getPhoneId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/google/SecImsServiceConnector;->getMmTelFeatureImpl(I)Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    move-result-object v0

    if-nez v0, :cond_1d

    .line 464
    invoke-virtual {p1}, Lcom/sec/ims/DialogEvent;->getPhoneId()I

    move-result p0

    const-string p1, "onP2pPushCallEvent: MmTelFeatureImpl not ready"

    invoke-static {v1, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 467
    :cond_1d
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/sec/internal/google/SecImsNotifier$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/sec/internal/google/SecImsNotifier$2;-><init>(Lcom/sec/internal/google/SecImsNotifier;Lcom/sec/internal/imsphone/MmTelFeatureImpl;Lcom/sec/ims/DialogEvent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onP2pRegCompleteEvent(I)V
    .registers 4

    const-string v0, "onP2pRegCompleteEvent"

    const-string v1, "SecImsNotifier"

    .line 441
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iget-object v0, p0, Lcom/sec/internal/google/SecImsNotifier;->mSecImsServiceConnector:Lcom/sec/internal/google/SecImsServiceConnector;

    invoke-virtual {v0, p1}, Lcom/sec/internal/google/SecImsServiceConnector;->getMmTelFeatureImpl(I)Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    move-result-object v0

    if-nez v0, :cond_15

    const-string p0, "onP2pRegCompleteEvent: MmTelFeatureImpl not ready"

    .line 444
    invoke-static {v1, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 447
    :cond_15
    invoke-virtual {v0}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->isEnabledWifiDirectFeature()Z

    move-result p1

    if-eqz p1, :cond_28

    .line 448
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/internal/google/SecImsNotifier$1;

    invoke-direct {v1, p0, v0}, Lcom/sec/internal/google/SecImsNotifier$1;-><init>(Lcom/sec/internal/google/SecImsNotifier;Lcom/sec/internal/imsphone/MmTelFeatureImpl;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_28
    return-void
.end method

.method public onPublishUpdated(IILjava/lang/String;ILjava/lang/String;)V
    .registers 8

    .line 205
    iget-object v0, p0, Lcom/sec/internal/google/SecImsNotifier;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "onPublishUpdated"

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 206
    iget-object p0, p0, Lcom/sec/internal/google/SecImsNotifier;->mSecImsServiceConnector:Lcom/sec/internal/google/SecImsServiceConnector;

    invoke-virtual {p0, p1}, Lcom/sec/internal/google/SecImsServiceConnector;->getRcsFeatureImpl(I)Lcom/sec/internal/imsphone/RcsFeatureImpl;

    move-result-object p0

    if-nez p0, :cond_17

    const-string p0, "SecImsNotifier"

    const-string p2, "onPublishUpdated: SecImsService not ready"

    .line 208
    invoke-static {p0, p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 211
    :cond_17
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/sec/internal/imsphone/RcsFeatureImpl;->onPublishUpdated(ILjava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public onRemoteCapabilityRequest(ILandroid/net/Uri;Ljava/util/Set;Landroid/telephony/ims/stub/CapabilityExchangeEventListener$OptionsRequestCallback;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/net/Uri;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/telephony/ims/stub/CapabilityExchangeEventListener$OptionsRequestCallback;",
            ")V"
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lcom/sec/internal/google/SecImsNotifier;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "onRemoteCapabilityRequest"

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 217
    iget-object p0, p0, Lcom/sec/internal/google/SecImsNotifier;->mSecImsServiceConnector:Lcom/sec/internal/google/SecImsServiceConnector;

    invoke-virtual {p0, p1}, Lcom/sec/internal/google/SecImsServiceConnector;->getRcsFeatureImpl(I)Lcom/sec/internal/imsphone/RcsFeatureImpl;

    move-result-object p0

    if-nez p0, :cond_17

    const-string p0, "SecImsNotifier"

    const-string p2, "onRemoteCapabilityRequest: SecImsService not ready"

    .line 219
    invoke-static {p0, p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 222
    :cond_17
    invoke-virtual {p0, p2, p3, p4}, Lcom/sec/internal/imsphone/RcsFeatureImpl;->onRemoteCapabilityRequest(Landroid/net/Uri;Ljava/util/Set;Landroid/telephony/ims/stub/CapabilityExchangeEventListener$OptionsRequestCallback;)V

    return-void
.end method

.method public onRequestPublishCapabilities(II)V
    .registers 5

    .line 185
    iget-object v0, p0, Lcom/sec/internal/google/SecImsNotifier;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "onRequestPublishCapabilities"

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 186
    iget-object p0, p0, Lcom/sec/internal/google/SecImsNotifier;->mSecImsServiceConnector:Lcom/sec/internal/google/SecImsServiceConnector;

    invoke-virtual {p0, p1}, Lcom/sec/internal/google/SecImsServiceConnector;->getRcsFeatureImpl(I)Lcom/sec/internal/imsphone/RcsFeatureImpl;

    move-result-object p0

    if-nez p0, :cond_17

    const-string p0, "SecImsNotifier"

    const-string p2, "onRequestPublishCapabilities: SecImsService not ready"

    .line 188
    invoke-static {p0, p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 191
    :cond_17
    invoke-virtual {p0, p2}, Lcom/sec/internal/imsphone/RcsFeatureImpl;->onRequestPublishCapabilities(I)V

    return-void
.end method

.method public onTriggerEpsFallback(II)V
    .registers 5

    .line 479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTriggerEpsFallback: reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecImsNotifier"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    iget-object p0, p0, Lcom/sec/internal/google/SecImsNotifier;->mSecImsServiceConnector:Lcom/sec/internal/google/SecImsServiceConnector;

    invoke-virtual {p0, p1}, Lcom/sec/internal/google/SecImsServiceConnector;->getMmTelFeatureImpl(I)Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    move-result-object p0

    if-nez p0, :cond_24

    const-string p0, "onTriggerEpsFallback: SecImsService not ready"

    .line 482
    invoke-static {v1, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 487
    :cond_24
    :try_start_24
    invoke-virtual {p0, p2}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->onTriggerEpsFallback(I)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_27} :catch_28

    return-void

    :catch_28
    move-exception p0

    .line 489
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public onUnPublish(I)V
    .registers 4

    .line 195
    iget-object v0, p0, Lcom/sec/internal/google/SecImsNotifier;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "onUnPublish"

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 196
    iget-object p0, p0, Lcom/sec/internal/google/SecImsNotifier;->mSecImsServiceConnector:Lcom/sec/internal/google/SecImsServiceConnector;

    invoke-virtual {p0, p1}, Lcom/sec/internal/google/SecImsServiceConnector;->getRcsFeatureImpl(I)Lcom/sec/internal/imsphone/RcsFeatureImpl;

    move-result-object p0

    if-nez p0, :cond_17

    const-string p0, "SecImsNotifier"

    const-string v0, "onUnPublish: SecImsService not ready"

    .line 198
    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 201
    :cond_17
    invoke-virtual {p0}, Lcom/sec/internal/imsphone/RcsFeatureImpl;->onUnPublish()V

    return-void
.end method

.method public updateAdhocProfile(ILcom/sec/ims/settings/ImsProfile;Z)V
    .registers 7

    .line 352
    iget-object v0, p0, Lcom/sec/internal/google/SecImsNotifier;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateAdhocProfile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 353
    iget-object p0, p0, Lcom/sec/internal/google/SecImsNotifier;->mSecImsServiceConnector:Lcom/sec/internal/google/SecImsServiceConnector;

    invoke-virtual {p0, p1}, Lcom/sec/internal/google/SecImsServiceConnector;->getSipTransportImpl(I)Lcom/sec/internal/imsphone/SipTransportImpl;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/sec/internal/imsphone/SipTransportImpl;->updateAdhocProfile(Lcom/sec/ims/settings/ImsProfile;Z)V

    return-void
.end method

.method public updateMmTelCapabilities(ILandroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)V
    .registers 6

    .line 148
    iget-object v0, p0, Lcom/sec/internal/google/SecImsNotifier;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateCapabilities: capabilities="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 149
    iget-object p0, p0, Lcom/sec/internal/google/SecImsNotifier;->mSecImsServiceConnector:Lcom/sec/internal/google/SecImsServiceConnector;

    invoke-virtual {p0, p1}, Lcom/sec/internal/google/SecImsServiceConnector;->getMmTelFeatureImpl(I)Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    move-result-object p0

    const-string v0, "SecImsNotifier"

    if-nez p0, :cond_28

    const-string/jumbo p0, "updateRcsCapabilities: SecImsService not ready"

    .line 151
    invoke-static {v0, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 154
    :cond_28
    invoke-virtual {p0}, Landroid/telephony/ims/feature/MmTelFeature;->queryCapabilityStatus()Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    move-result-object v1

    .line 156
    invoke-virtual {v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->getMask()I

    move-result v1

    invoke-virtual {p2}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->getMask()I

    move-result v2

    if-eq v1, v2, :cond_53

    .line 158
    :try_start_36
    invoke-virtual {p0, p2}, Landroid/telephony/ims/feature/MmTelFeature;->notifyCapabilitiesStatusChanged(Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)V
    :try_end_39
    .catch Ljava/lang/IllegalArgumentException; {:try_start_36 .. :try_end_39} :catch_3a
    .catch Ljava/lang/IllegalStateException; {:try_start_36 .. :try_end_39} :catch_3a

    goto :goto_53

    :catch_3a
    move-exception p0

    .line 160
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyCapabilitiesStatusChanged: failed: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    :cond_53
    :goto_53
    return-void
.end method

.method public updateRcsCapabilities(ILandroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;)V
    .registers 6

    .line 167
    iget-object v0, p0, Lcom/sec/internal/google/SecImsNotifier;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateRcsCapabilities: capabilities="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 168
    iget-object p0, p0, Lcom/sec/internal/google/SecImsNotifier;->mSecImsServiceConnector:Lcom/sec/internal/google/SecImsServiceConnector;

    invoke-virtual {p0, p1}, Lcom/sec/internal/google/SecImsServiceConnector;->getRcsFeatureImpl(I)Lcom/sec/internal/imsphone/RcsFeatureImpl;

    move-result-object p0

    const-string v0, "SecImsNotifier"

    if-nez p0, :cond_28

    const-string/jumbo p0, "updateRcsCapabilities: SecImsService not ready"

    .line 170
    invoke-static {v0, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 173
    :cond_28
    invoke-virtual {p0}, Landroid/telephony/ims/feature/RcsFeature;->queryCapabilityStatus()Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    move-result-object v1

    .line 175
    invoke-virtual {v1}, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;->getMask()I

    move-result v1

    invoke-virtual {p2}, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;->getMask()I

    move-result v2

    if-eq v1, v2, :cond_53

    .line 177
    :try_start_36
    invoke-virtual {p0, p2}, Landroid/telephony/ims/feature/RcsFeature;->notifyCapabilitiesStatusChanged(Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;)V
    :try_end_39
    .catch Ljava/lang/IllegalArgumentException; {:try_start_36 .. :try_end_39} :catch_3a
    .catch Ljava/lang/IllegalStateException; {:try_start_36 .. :try_end_39} :catch_3a

    goto :goto_53

    :catch_3a
    move-exception p0

    .line 179
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyCapabilitiesStatusChanged: failed: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    :cond_53
    :goto_53
    return-void
.end method
