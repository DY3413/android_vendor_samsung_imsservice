.class public Lcom/sec/internal/imsphone/SipTransportImpl;
.super Landroid/telephony/ims/stub/SipTransportImplBase;
.source "SipTransportImpl.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SipTransportImpl"


# instance fields
.field final mAllocatedTags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mDelegates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/imsphone/SipDelegateImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field private mExecutor:Ljava/util/concurrent/Executor;

.field private mPhoneId:I

.field mRegistrationTracker:Lcom/sec/internal/imsphone/RegistrationTracker;


# direct methods
.method public static synthetic $r8$lambda$-fgEJRQIBjWeuw407PRw0oxl4w8(Lcom/sec/ims/settings/ImsProfile;Lcom/sec/internal/imsphone/SipDelegateImpl;)Z
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/imsphone/SipTransportImpl;->lambda$notifyDeRegistering$13(Lcom/sec/ims/settings/ImsProfile;Lcom/sec/internal/imsphone/SipDelegateImpl;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$-yr8Xn88HOdKQI5UBJPC8hKwtlQ(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/sec/internal/imsphone/SipTransportImpl;->lambda$updateAdhocProfile$12(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$EdXT_ZXO2z8O3_ncHSnVMhYY5aY(Lcom/sec/internal/imsphone/SipTransportImpl;Lcom/sec/ims/ImsRegistration;Z)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/imsphone/SipTransportImpl;->lambda$onRegistrationChanged$8(Lcom/sec/ims/ImsRegistration;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$Em2mkmAkn92um5O5ooSHCuATCYA(Lcom/sec/internal/imsphone/SipDelegateConfig;Lcom/sec/internal/imsphone/SipDelegateImpl;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/imsphone/SipTransportImpl;->lambda$onPaniUpdated$19(Lcom/sec/internal/imsphone/SipDelegateConfig;Lcom/sec/internal/imsphone/SipDelegateImpl;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Emkpi_tRzXmFy7XliARufIB1oa8(Lcom/sec/ims/ImsRegistration;Lcom/sec/internal/imsphone/SipDelegateImpl;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/imsphone/SipTransportImpl;->lambda$notifyDeRegistering$14(Lcom/sec/ims/ImsRegistration;Lcom/sec/internal/imsphone/SipDelegateImpl;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NWCdKGAPJdpfEUMhjWtQBTCCvRM(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/imsphone/SipDelegateConfig;)Z
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/sec/internal/imsphone/SipTransportImpl;->lambda$onPaniUpdated$18(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/imsphone/SipDelegateConfig;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$NyLSQV7QA08rIIkh56Qq21umGIM(Lcom/sec/internal/imsphone/SipTransportImpl;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/imsphone/SipTransportImpl;->lambda$onPaniUpdated$21(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TDsAJl2I75QYsGs5ffTsA5HTjrs(Lcom/sec/ims/settings/ImsProfile;Lcom/sec/internal/imsphone/SipDelegateImpl;)Z
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/imsphone/SipTransportImpl;->lambda$onRegistrationChanged$6(Lcom/sec/ims/settings/ImsProfile;Lcom/sec/internal/imsphone/SipDelegateImpl;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$UJ4nid6JfClIv24t243dk3PjHvo(Lcom/sec/internal/imsphone/SipTransportImpl;Lcom/sec/internal/constants/ims/SipMsg;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/imsphone/SipTransportImpl;->lambda$notifySipMessage$5(Lcom/sec/internal/constants/ims/SipMsg;)V

    return-void
.end method

.method public static synthetic $r8$lambda$V4EDvvV41KM37HFKMA0rBK3OVSs(Ljava/lang/String;)Z
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/sec/internal/imsphone/SipTransportImpl;->lambda$updateAdhocProfile$9(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$VDaUHn3dSRdnuEtDx3YbW3-Sths(Lcom/sec/internal/imsphone/SipTransportImpl;Lcom/sec/internal/imsphone/SipDelegateImpl;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/imsphone/SipTransportImpl;->lambda$onUpdateRegistrationTimeout$16(Lcom/sec/internal/imsphone/SipDelegateImpl;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VO2lOseUh-Ni8vItkLFoLmKUFko(Lcom/sec/internal/constants/ims/SipMsg;Lcom/sec/internal/imsphone/SipDelegateImpl;)Z
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/imsphone/SipTransportImpl;->lambda$notifySipMessage$3(Lcom/sec/internal/constants/ims/SipMsg;Lcom/sec/internal/imsphone/SipDelegateImpl;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$WraQsLivGM5OdI8mw3CAiUWDX50(Lcom/sec/internal/imsphone/SipTransportImpl;Lcom/sec/ims/ImsRegistration;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/imsphone/SipTransportImpl;->lambda$notifyDeRegistering$15(Lcom/sec/ims/ImsRegistration;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YsiHKhZ12XsEmOf_m4lt31mKI9E(Landroid/telephony/ims/stub/SipDelegate;Lcom/sec/internal/imsphone/SipDelegateImpl;)Z
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/imsphone/SipTransportImpl;->lambda$destroySipDelegate$2(Landroid/telephony/ims/stub/SipDelegate;Lcom/sec/internal/imsphone/SipDelegateImpl;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$cmxvPOmqYtp4N3gqdH1JkAZVNyA(Ljava/lang/String;)Z
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/sec/internal/imsphone/SipTransportImpl;->lambda$updateAdhocProfile$10(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$eSv4R638FT3P8x9QpHdfj5irsOk(Lcom/sec/internal/imsphone/SipTransportImpl;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/imsphone/SipTransportImpl;->lambda$onUpdateRegistrationTimeout$17()V

    return-void
.end method

.method public static synthetic $r8$lambda$oCexdjIdL2UYf6-irrfDuCm92l4(Ljava/lang/String;)Z
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/sec/internal/imsphone/SipTransportImpl;->lambda$updateAdhocProfile$11(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$oIy4lVx1B5YMFh-kmsZfZKPmqng(Lcom/sec/internal/imsphone/SipTransportImpl;ZLcom/sec/internal/imsphone/SipDelegateImpl;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/imsphone/SipTransportImpl;->lambda$onRegistrationChanged$7(ZLcom/sec/internal/imsphone/SipDelegateImpl;)V

    return-void
.end method

.method public static synthetic $r8$lambda$olnb-IwGA4S_5ro44q6eVDltOt4(Lcom/sec/internal/imsphone/SipTransportImpl;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/imsphone/SipTransportImpl;->lambda$allocateDelegate$1(Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$udsBzTlwAxQtdCqe6gLwvfFrhjk(Lcom/sec/internal/imsphone/SipTransportImpl;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/imsphone/SipDelegateConfig;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/imsphone/SipTransportImpl;->lambda$onPaniUpdated$20(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/imsphone/SipDelegateConfig;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vXO7fwimeRmzqfYThD1TVCSgE2k(Lcom/sec/internal/imsphone/SipTransportImpl;Lcom/sec/internal/imsphone/SipDelegateImpl;Lcom/sec/internal/imsphone/RegistrationTracker$RegisteredToken;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/imsphone/SipTransportImpl;->lambda$createSipDelegate$0(Lcom/sec/internal/imsphone/SipDelegateImpl;Lcom/sec/internal/imsphone/RegistrationTracker$RegisteredToken;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zh1no6EntXbCjj2rS8lDSDSzfEo(Lcom/sec/internal/constants/ims/SipMsg;Lcom/sec/internal/imsphone/SipDelegateImpl;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/imsphone/SipTransportImpl;->lambda$notifySipMessage$4(Lcom/sec/internal/constants/ims/SipMsg;Lcom/sec/internal/imsphone/SipDelegateImpl;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/Executor;Lcom/sec/internal/helper/SimpleEventLog;)V
    .registers 4

    .line 58
    invoke-direct {p0, p2}, Landroid/telephony/ims/stub/SipTransportImplBase;-><init>(Ljava/util/concurrent/Executor;)V

    .line 60
    iput-object p2, p0, Lcom/sec/internal/imsphone/SipTransportImpl;->mExecutor:Ljava/util/concurrent/Executor;

    .line 61
    iput-object p3, p0, Lcom/sec/internal/imsphone/SipTransportImpl;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 62
    iput p1, p0, Lcom/sec/internal/imsphone/SipTransportImpl;->mPhoneId:I

    .line 64
    new-instance p1, Lcom/sec/internal/imsphone/RegistrationTracker;

    invoke-direct {p1}, Lcom/sec/internal/imsphone/RegistrationTracker;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/imsphone/SipTransportImpl;->mRegistrationTracker:Lcom/sec/internal/imsphone/RegistrationTracker;

    .line 65
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/imsphone/SipTransportImpl;->mDelegates:Ljava/util/List;

    .line 66
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/imsphone/SipTransportImpl;->mAllocatedTags:Ljava/util/Set;

    return-void
.end method

.method private allocateDelegate(Landroid/telephony/ims/DelegateRequest;Lcom/sec/internal/imsphone/SipDelegateImpl;)Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/ims/DelegateRequest;",
            "Lcom/sec/internal/imsphone/SipDelegateImpl;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 83
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 84
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 86
    iget-object v2, p0, Lcom/sec/internal/imsphone/SipTransportImpl;->mDelegates:Ljava/util/List;

    monitor-enter v2

    .line 87
    :try_start_d
    iget-object v3, p0, Lcom/sec/internal/imsphone/SipTransportImpl;->mDelegates:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-virtual {p1}, Landroid/telephony/ims/DelegateRequest;->getFeatureTags()Ljava/util/Set;

    move-result-object p1

    new-instance v3, Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, v0, v1}, Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda4;-><init>(Lcom/sec/internal/imsphone/SipTransportImpl;Ljava/util/Set;Ljava/util/Set;)V

    invoke-interface {p1, v3}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 97
    iget-object p0, p0, Lcom/sec/internal/imsphone/SipTransportImpl;->mAllocatedTags:Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 99
    invoke-virtual {p2, v0, v1}, Lcom/sec/internal/imsphone/SipDelegateImpl;->notifyCreated(Ljava/util/Set;Ljava/util/Set;)V

    .line 100
    monitor-exit v2

    return-object v0

    :catchall_28
    move-exception p0

    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_d .. :try_end_2a} :catchall_28

    throw p0
.end method

.method private synthetic lambda$allocateDelegate$1(Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V
    .registers 4

    .line 90
    iget-object p0, p0, Lcom/sec/internal/imsphone/SipTransportImpl;->mAllocatedTags:Ljava/util/Set;

    invoke-interface {p0, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    .line 91
    invoke-interface {p1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 93
    :cond_c
    new-instance p0, Landroid/telephony/ims/FeatureTagState;

    const/4 p1, 0x1

    invoke-direct {p0, p3, p1}, Landroid/telephony/ims/FeatureTagState;-><init>(Ljava/lang/String;I)V

    invoke-interface {p2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_15
    return-void
.end method

.method private synthetic lambda$createSipDelegate$0(Lcom/sec/internal/imsphone/SipDelegateImpl;Lcom/sec/internal/imsphone/RegistrationTracker$RegisteredToken;)V
    .registers 5

    .line 77
    iget p0, p0, Lcom/sec/internal/imsphone/SipTransportImpl;->mPhoneId:I

    const-string v0, "Already registered. notify config and registration"

    const-string v1, "SipTransportImpl"

    invoke-static {v1, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 78
    invoke-virtual {p1, p2}, Lcom/sec/internal/imsphone/SipDelegateImpl;->notifyAlreadyRegistered(Lcom/sec/internal/imsphone/RegistrationTracker$RegisteredToken;)V

    return-void
.end method

.method private static synthetic lambda$destroySipDelegate$2(Landroid/telephony/ims/stub/SipDelegate;Lcom/sec/internal/imsphone/SipDelegateImpl;)Z
    .registers 2

    .line 110
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$notifyDeRegistering$13(Lcom/sec/ims/settings/ImsProfile;Lcom/sec/internal/imsphone/SipDelegateImpl;)Z
    .registers 2

    .line 212
    invoke-virtual {p1, p0}, Lcom/sec/internal/imsphone/SipDelegateImpl;->isMatched(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$notifyDeRegistering$14(Lcom/sec/ims/ImsRegistration;Lcom/sec/internal/imsphone/SipDelegateImpl;)V
    .registers 2

    .line 213
    invoke-virtual {p0}, Lcom/sec/ims/ImsRegistration;->getDeregiReason()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/sec/internal/imsphone/SipDelegateImpl;->notifyDeRegistering(I)V

    return-void
.end method

.method private synthetic lambda$notifyDeRegistering$15(Lcom/sec/ims/ImsRegistration;)V
    .registers 6

    .line 207
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    .line 208
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    .line 209
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyDeRegistering: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SipTransportImpl"

    invoke-static {v3, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 211
    iget-object p0, p0, Lcom/sec/internal/imsphone/SipTransportImpl;->mDelegates:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda13;

    invoke-direct {v0, v1}, Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda13;-><init>(Lcom/sec/ims/settings/ImsProfile;)V

    .line 212
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda14;

    invoke-direct {v0, p1}, Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda14;-><init>(Lcom/sec/ims/ImsRegistration;)V

    .line 213
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static synthetic lambda$notifySipMessage$3(Lcom/sec/internal/constants/ims/SipMsg;Lcom/sec/internal/imsphone/SipDelegateImpl;)Z
    .registers 2

    .line 148
    invoke-virtual {p1, p0}, Lcom/sec/internal/imsphone/SipDelegateImpl;->isMatched(Lcom/sec/internal/constants/ims/SipMsg;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$notifySipMessage$4(Lcom/sec/internal/constants/ims/SipMsg;Lcom/sec/internal/imsphone/SipDelegateImpl;)V
    .registers 2

    .line 149
    invoke-virtual {p1, p0}, Lcom/sec/internal/imsphone/SipDelegateImpl;->notifySipMessage(Lcom/sec/internal/constants/ims/SipMsg;)V

    return-void
.end method

.method private synthetic lambda$notifySipMessage$5(Lcom/sec/internal/constants/ims/SipMsg;)V
    .registers 5

    .line 143
    iget v0, p0, Lcom/sec/internal/imsphone/SipTransportImpl;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifySipMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SipTransportImpl"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 144
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/SipMsg;->isRegister()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 145
    iget-object p0, p0, Lcom/sec/internal/imsphone/SipTransportImpl;->mRegistrationTracker:Lcom/sec/internal/imsphone/RegistrationTracker;

    invoke-virtual {p0, p1}, Lcom/sec/internal/imsphone/RegistrationTracker;->onSipRegisterTransaction(Lcom/sec/internal/constants/ims/SipMsg;)V

    goto :goto_3b

    .line 147
    :cond_24
    iget-object p0, p0, Lcom/sec/internal/imsphone/SipTransportImpl;->mDelegates:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1}, Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda5;-><init>(Lcom/sec/internal/constants/ims/SipMsg;)V

    .line 148
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1}, Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda6;-><init>(Lcom/sec/internal/constants/ims/SipMsg;)V

    .line 149
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    :goto_3b
    return-void
.end method

.method private static synthetic lambda$onPaniUpdated$18(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/imsphone/SipDelegateConfig;)Z
    .registers 3

    .line 229
    invoke-virtual {p2, p0, p1}, Lcom/sec/internal/imsphone/SipDelegateConfig;->isPaniChanged(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$onPaniUpdated$19(Lcom/sec/internal/imsphone/SipDelegateConfig;Lcom/sec/internal/imsphone/SipDelegateImpl;)V
    .registers 2

    .line 237
    invoke-virtual {p1, p0}, Lcom/sec/internal/imsphone/SipDelegateImpl;->notifyConfigurationChanged(Lcom/sec/internal/imsphone/SipDelegateConfig;)V

    return-void
.end method

.method private synthetic lambda$onPaniUpdated$20(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/imsphone/SipDelegateConfig;)V
    .registers 7

    .line 231
    iget v0, p0, Lcom/sec/internal/imsphone/SipTransportImpl;->mPhoneId:I

    const-string v1, "onPaniUpdated: notifySipDelegateConfig"

    const-string v2, "SipTransportImpl"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 232
    invoke-virtual {p3}, Lcom/sec/internal/imsphone/SipDelegateConfig;->getBuilder()Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;

    move-result-object p3

    .line 233
    invoke-virtual {p3, p1}, Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;->setSipPaniHeader(Ljava/lang/String;)Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;

    move-result-object p1

    .line 234
    invoke-virtual {p1, p2}, Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;->setSipPlaniHeader(Ljava/lang/String;)Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;

    move-result-object p1

    .line 235
    invoke-virtual {p1}, Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;->build()Lcom/sec/internal/imsphone/SipDelegateConfig;

    move-result-object p1

    .line 236
    iget-object p2, p0, Lcom/sec/internal/imsphone/SipTransportImpl;->mRegistrationTracker:Lcom/sec/internal/imsphone/RegistrationTracker;

    invoke-virtual {p2, p1}, Lcom/sec/internal/imsphone/RegistrationTracker;->setSipDelegateConfig(Lcom/sec/internal/imsphone/SipDelegateConfig;)V

    .line 237
    iget-object p0, p0, Lcom/sec/internal/imsphone/SipTransportImpl;->mDelegates:Ljava/util/List;

    new-instance p2, Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda2;

    invoke-direct {p2, p1}, Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda2;-><init>(Lcom/sec/internal/imsphone/SipDelegateConfig;)V

    invoke-interface {p0, p2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$onPaniUpdated$21(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 227
    iget v0, p0, Lcom/sec/internal/imsphone/SipTransportImpl;->mPhoneId:I

    const-string v1, "onPaniUpdated"

    const-string v2, "SipTransportImpl"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/sec/internal/imsphone/SipTransportImpl;->mRegistrationTracker:Lcom/sec/internal/imsphone/RegistrationTracker;

    invoke-virtual {v0}, Lcom/sec/internal/imsphone/RegistrationTracker;->getRegisteredDelegateConfig()Lcom/sec/internal/imsphone/SipDelegateConfig;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda7;

    invoke-direct {v1, p1, p2}, Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda7;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-virtual {v0, v1}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda8;-><init>(Lcom/sec/internal/imsphone/SipTransportImpl;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static synthetic lambda$onRegistrationChanged$6(Lcom/sec/ims/settings/ImsProfile;Lcom/sec/internal/imsphone/SipDelegateImpl;)Z
    .registers 2

    .line 162
    invoke-virtual {p1, p0}, Lcom/sec/internal/imsphone/SipDelegateImpl;->isMatched(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$onRegistrationChanged$7(ZLcom/sec/internal/imsphone/SipDelegateImpl;)V
    .registers 5

    if-eqz p1, :cond_2b

    .line 165
    iget-object p1, p0, Lcom/sec/internal/imsphone/SipTransportImpl;->mRegistrationTracker:Lcom/sec/internal/imsphone/RegistrationTracker;

    invoke-virtual {p1}, Lcom/sec/internal/imsphone/RegistrationTracker;->getFeatureTags()Ljava/util/Set;

    move-result-object p1

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRegistrationChanged: registered tags: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SipTransportImpl"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object p0, p0, Lcom/sec/internal/imsphone/SipTransportImpl;->mRegistrationTracker:Lcom/sec/internal/imsphone/RegistrationTracker;

    invoke-virtual {p0}, Lcom/sec/internal/imsphone/RegistrationTracker;->getRegisteredDelegateConfig()Lcom/sec/internal/imsphone/SipDelegateConfig;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/sec/internal/imsphone/SipDelegateImpl;->notifyConfigurationChanged(Lcom/sec/internal/imsphone/SipDelegateConfig;)V

    .line 168
    invoke-virtual {p2, p1}, Lcom/sec/internal/imsphone/SipDelegateImpl;->notifyRegistrationChanged(Ljava/util/Set;)V

    goto :goto_32

    .line 170
    :cond_2b
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/sec/internal/imsphone/SipDelegateImpl;->notifyRegistrationChanged(Ljava/util/Set;)V

    :goto_32
    return-void
.end method

.method private synthetic lambda$onRegistrationChanged$8(Lcom/sec/ims/ImsRegistration;Z)V
    .registers 7

    .line 156
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    .line 157
    iget v1, p0, Lcom/sec/internal/imsphone/SipTransportImpl;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRegistrationChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": registered: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SipTransportImpl"

    invoke-static {v3, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 159
    iget-object v1, p0, Lcom/sec/internal/imsphone/SipTransportImpl;->mRegistrationTracker:Lcom/sec/internal/imsphone/RegistrationTracker;

    invoke-virtual {v1, p1, p2}, Lcom/sec/internal/imsphone/RegistrationTracker;->onRegistrationDone(Lcom/sec/ims/ImsRegistration;Z)V

    .line 161
    iget-object p1, p0, Lcom/sec/internal/imsphone/SipTransportImpl;->mDelegates:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda21;

    invoke-direct {v1, v0}, Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda21;-><init>(Lcom/sec/ims/settings/ImsProfile;)V

    .line 162
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda22;

    invoke-direct {v0, p0, p2}, Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda22;-><init>(Lcom/sec/internal/imsphone/SipTransportImpl;Z)V

    .line 163
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$onUpdateRegistrationTimeout$16(Lcom/sec/internal/imsphone/SipDelegateImpl;)V
    .registers 2

    .line 221
    iget-object p0, p0, Lcom/sec/internal/imsphone/SipTransportImpl;->mRegistrationTracker:Lcom/sec/internal/imsphone/RegistrationTracker;

    invoke-virtual {p0}, Lcom/sec/internal/imsphone/RegistrationTracker;->getFeatureTags()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/internal/imsphone/SipDelegateImpl;->notifyRegistrationChanged(Ljava/util/Set;)V

    return-void
.end method

.method private synthetic lambda$onUpdateRegistrationTimeout$17()V
    .registers 4

    .line 219
    iget v0, p0, Lcom/sec/internal/imsphone/SipTransportImpl;->mPhoneId:I

    const-string v1, "onUpdateRegistrationTimeout"

    const-string v2, "SipTransportImpl"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/sec/internal/imsphone/SipTransportImpl;->mDelegates:Ljava/util/List;

    new-instance v1, Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0}, Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda20;-><init>(Lcom/sec/internal/imsphone/SipTransportImpl;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static synthetic lambda$updateAdhocProfile$10(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "@"

    .line 189
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$updateAdhocProfile$11(Ljava/lang/String;)Z
    .registers 2

    const-string/jumbo v0, "sip"

    .line 189
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$updateAdhocProfile$12(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string v0, "@"

    .line 190
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$updateAdhocProfile$9(Ljava/lang/String;)Z
    .registers 1

    .line 188
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public createSipDelegate(ILandroid/telephony/ims/DelegateRequest;Landroid/telephony/ims/DelegateStateCallback;Landroid/telephony/ims/DelegateMessageCallback;)V
    .registers 13

    .line 71
    iget-object p1, p0, Lcom/sec/internal/imsphone/SipTransportImpl;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v0, p0, Lcom/sec/internal/imsphone/SipTransportImpl;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addSipDelegate: request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 73
    new-instance p1, Lcom/sec/internal/imsphone/SipDelegateImpl;

    iget v3, p0, Lcom/sec/internal/imsphone/SipTransportImpl;->mPhoneId:I

    iget-object v4, p0, Lcom/sec/internal/imsphone/SipTransportImpl;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRawSipSender()Lcom/sec/internal/interfaces/ims/core/IRawSipSender;

    move-result-object v7

    move-object v2, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/imsphone/SipDelegateImpl;-><init>(ILjava/util/concurrent/Executor;Landroid/telephony/ims/DelegateStateCallback;Landroid/telephony/ims/DelegateMessageCallback;Lcom/sec/internal/interfaces/ims/core/IRawSipSender;)V

    .line 74
    invoke-direct {p0, p2, p1}, Lcom/sec/internal/imsphone/SipTransportImpl;->allocateDelegate(Landroid/telephony/ims/DelegateRequest;Lcom/sec/internal/imsphone/SipDelegateImpl;)Ljava/util/Set;

    move-result-object p2

    .line 76
    iget-object p3, p0, Lcom/sec/internal/imsphone/SipTransportImpl;->mRegistrationTracker:Lcom/sec/internal/imsphone/RegistrationTracker;

    invoke-virtual {p3, p2}, Lcom/sec/internal/imsphone/RegistrationTracker;->getRegisteredToken(Ljava/util/Set;)Lcom/sec/internal/imsphone/RegistrationTracker$RegisteredToken;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    new-instance p3, Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda10;

    invoke-direct {p3, p0, p1}, Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda10;-><init>(Lcom/sec/internal/imsphone/SipTransportImpl;Lcom/sec/internal/imsphone/SipDelegateImpl;)V

    invoke-virtual {p2, p3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public destroySipDelegate(Landroid/telephony/ims/stub/SipDelegate;I)V
    .registers 7

    .line 107
    iget-object v0, p0, Lcom/sec/internal/imsphone/SipTransportImpl;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v1, p0, Lcom/sec/internal/imsphone/SipTransportImpl;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeSipDelegate: reason code ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/sec/internal/imsphone/SipTransportImpl;->mDelegates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda12;

    invoke-direct {v1, p1}, Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda12;-><init>(Landroid/telephony/ims/stub/SipDelegate;)V

    .line 110
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    const/4 v0, 0x0

    .line 111
    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/imsphone/SipDelegateImpl;

    const-string v0, "SipTransportImpl"

    .line 113
    iget v1, p0, Lcom/sec/internal/imsphone/SipTransportImpl;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeSipDelegate:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-eqz p1, :cond_6c

    .line 115
    iget-object v0, p0, Lcom/sec/internal/imsphone/SipTransportImpl;->mDelegates:Ljava/util/List;

    monitor-enter v0

    .line 116
    :try_start_56
    iget-object v1, p0, Lcom/sec/internal/imsphone/SipTransportImpl;->mAllocatedTags:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/sec/internal/imsphone/SipDelegateImpl;->getFeatureTags()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 117
    invoke-virtual {p1, p2}, Lcom/sec/internal/imsphone/SipDelegateImpl;->notifyDestroy(I)V

    .line 118
    iget-object p0, p0, Lcom/sec/internal/imsphone/SipTransportImpl;->mDelegates:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 119
    monitor-exit v0

    goto :goto_6c

    :catchall_69
    move-exception p0

    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_56 .. :try_end_6b} :catchall_69

    throw p0

    :cond_6c
    :goto_6c
    return-void
.end method

.method public getAllocatedFeatureTags()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/sec/internal/imsphone/SipTransportImpl;->mDelegates:Ljava/util/List;

    monitor-enter v0

    .line 131
    :try_start_3
    iget-object p0, p0, Lcom/sec/internal/imsphone/SipTransportImpl;->mAllocatedTags:Ljava/util/Set;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 132
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public getRegisteredFeatureTags()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 202
    iget-object p0, p0, Lcom/sec/internal/imsphone/SipTransportImpl;->mRegistrationTracker:Lcom/sec/internal/imsphone/RegistrationTracker;

    invoke-virtual {p0}, Lcom/sec/internal/imsphone/RegistrationTracker;->getFeatureTags()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getServiceList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 136
    invoke-virtual {p0}, Lcom/sec/internal/imsphone/SipTransportImpl;->getAllocatedFeatureTags()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda9;-><init>()V

    .line 137
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 138
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public hasSipDelegate()Z
    .registers 2

    .line 124
    iget-object v0, p0, Lcom/sec/internal/imsphone/SipTransportImpl;->mDelegates:Ljava/util/List;

    monitor-enter v0

    .line 125
    :try_start_3
    iget-object p0, p0, Lcom/sec/internal/imsphone/SipTransportImpl;->mDelegates:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    monitor-exit v0

    return p0

    :catchall_10
    move-exception p0

    .line 126
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public notifyDeRegistering(Lcom/sec/ims/ImsRegistration;)V
    .registers 4

    .line 206
    iget-object v0, p0, Lcom/sec/internal/imsphone/SipTransportImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda15;-><init>(Lcom/sec/internal/imsphone/SipTransportImpl;Lcom/sec/ims/ImsRegistration;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public notifySipMessage(Lcom/sec/internal/constants/ims/SipMsg;)V
    .registers 4

    .line 142
    iget-object v0, p0, Lcom/sec/internal/imsphone/SipTransportImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/imsphone/SipTransportImpl;Lcom/sec/internal/constants/ims/SipMsg;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPaniUpdated(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 226
    iget-object v0, p0, Lcom/sec/internal/imsphone/SipTransportImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda11;-><init>(Lcom/sec/internal/imsphone/SipTransportImpl;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onRegistrationChanged(Lcom/sec/ims/ImsRegistration;Z)V
    .registers 5

    .line 155
    iget-object v0, p0, Lcom/sec/internal/imsphone/SipTransportImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda1;-><init>(Lcom/sec/internal/imsphone/SipTransportImpl;Lcom/sec/ims/ImsRegistration;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUpdateRegistrationTimeout()V
    .registers 3

    .line 218
    iget-object v0, p0, Lcom/sec/internal/imsphone/SipTransportImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda3;-><init>(Lcom/sec/internal/imsphone/SipTransportImpl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateAdhocProfile(Lcom/sec/ims/settings/ImsProfile;Z)V
    .registers 5

    .line 182
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->isSamsungMdmnEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 186
    :cond_7
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getDomain()Ljava/lang/String;

    move-result-object v0

    .line 187
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 188
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getImpuList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda16;

    invoke-direct {v1}, Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda16;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda17;

    invoke-direct {v1}, Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda17;-><init>()V

    .line 189
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda18;

    invoke-direct {v1}, Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda18;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda19;

    invoke-direct {v1}, Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda19;-><init>()V

    .line 190
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 193
    :cond_49
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 194
    iget p0, p0, Lcom/sec/internal/imsphone/SipTransportImpl;->mPhoneId:I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateAdhocProfile: No domain for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SipTransportImpl"

    invoke-static {p2, p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 198
    :cond_6d
    iget-object p0, p0, Lcom/sec/internal/imsphone/SipTransportImpl;->mRegistrationTracker:Lcom/sec/internal/imsphone/RegistrationTracker;

    invoke-virtual {p0, p2, v0}, Lcom/sec/internal/imsphone/RegistrationTracker;->updateAdhocDomain(ZLjava/lang/String;)V

    return-void
.end method
