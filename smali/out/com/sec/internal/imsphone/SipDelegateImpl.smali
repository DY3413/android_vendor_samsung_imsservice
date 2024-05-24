.class public Lcom/sec/internal/imsphone/SipDelegateImpl;
.super Ljava/lang/Object;
.source "SipDelegateImpl.java"

# interfaces
.implements Landroid/telephony/ims/stub/SipDelegate;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SipDelegateImpl"

.field private static final REASON_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mCallIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field mFeatureTags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mLatestDelegateConfig:Landroid/telephony/ims/SipDelegateConfiguration;

.field private final mMessageCallback:Landroid/telephony/ims/DelegateMessageCallback;

.field private final mPhoneId:I

.field private final mRawSipSender:Lcom/sec/internal/interfaces/ims/core/IRawSipSender;

.field private final mStateCallback:Landroid/telephony/ims/DelegateStateCallback;


# direct methods
.method public static synthetic $r8$lambda$3ptkpgR9IBMsoKAQLtSiN0cPjF8(Lcom/sec/internal/imsphone/SipDelegateImpl;Landroid/telephony/ims/DelegateRegistrationState$Builder;ILjava/lang/String;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/imsphone/SipDelegateImpl;->lambda$notifyDeRegistering$7(Landroid/telephony/ims/DelegateRegistrationState$Builder;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BZ8RuUgTcIvPrrVdeKn5bPPVNls(Lcom/sec/internal/imsphone/SipDelegateImpl;Ljava/util/Set;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/imsphone/SipDelegateImpl;->lambda$notifyRegistrationChanged$6(Ljava/util/Set;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CW8YQPNGRPPUf-79CbVjdReyJrY(Ljava/lang/String;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/sec/internal/imsphone/SipDelegateImpl;->lambda$notifyMessageReceived$2(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$D2jDaR3dymF8iFrezEhhA6MadWo(Lcom/sec/internal/imsphone/SipDelegateImpl;Lcom/sec/internal/imsphone/SipDelegateConfig;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/imsphone/SipDelegateImpl;->lambda$notifyConfigurationChanged$4(Lcom/sec/internal/imsphone/SipDelegateConfig;)V

    return-void
.end method

.method public static synthetic $r8$lambda$D5dW9qKocCrQlTUyDv74R0SzDcM(Lcom/sec/internal/imsphone/SipDelegateImpl;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/imsphone/SipDelegateImpl;->lambda$cleanupSession$1(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FFOfpBsuDn0jErHMoYdxJZL6TWY(Landroid/telephony/ims/DelegateRegistrationState$Builder;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/imsphone/SipDelegateImpl;->lambda$notifyRegistrationChanged$5(Landroid/telephony/ims/DelegateRegistrationState$Builder;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bfvcfvS__YLzvGP58SHN9_s63z8(Ljava/lang/String;I)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/imsphone/SipDelegateImpl;->lambda$notifyMessageReceiveError$3(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$gyqB1PvzMB-SzQihQAM0oJDd9D4(Lcom/sec/internal/imsphone/SipDelegateImpl;Landroid/telephony/ims/SipMessage;J)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/imsphone/SipDelegateImpl;->lambda$sendMessage$0(Landroid/telephony/ims/SipMessage;J)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/internal/imsphone/SipDelegateImpl;->REASON_MAP:Ljava/util/Map;

    const/16 v1, 0x17

    .line 39
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/Executor;Landroid/telephony/ims/DelegateStateCallback;Landroid/telephony/ims/DelegateMessageCallback;Lcom/sec/internal/interfaces/ims/core/IRawSipSender;)V
    .registers 7

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/imsphone/SipDelegateImpl;->mCallIds:Ljava/util/Set;

    .line 64
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/imsphone/SipDelegateImpl;->mFeatureTags:Ljava/util/Set;

    .line 71
    iput p1, p0, Lcom/sec/internal/imsphone/SipDelegateImpl;->mPhoneId:I

    .line 72
    iput-object p2, p0, Lcom/sec/internal/imsphone/SipDelegateImpl;->mExecutor:Ljava/util/concurrent/Executor;

    .line 73
    iput-object p3, p0, Lcom/sec/internal/imsphone/SipDelegateImpl;->mStateCallback:Landroid/telephony/ims/DelegateStateCallback;

    .line 74
    iput-object p4, p0, Lcom/sec/internal/imsphone/SipDelegateImpl;->mMessageCallback:Landroid/telephony/ims/DelegateMessageCallback;

    .line 75
    iput-object p5, p0, Lcom/sec/internal/imsphone/SipDelegateImpl;->mRawSipSender:Lcom/sec/internal/interfaces/ims/core/IRawSipSender;

    return-void
.end method

.method private convertReason(I)I
    .registers 2

    .line 256
    sget-object p0, Lcom/sec/internal/imsphone/SipDelegateImpl;->REASON_MAP:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_10

    const/4 p0, 0x4

    goto :goto_14

    .line 257
    :cond_10
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_14
    return p0
.end method

.method private isSipDelegateStale(J)Z
    .registers 6

    .line 182
    iget-object p0, p0, Lcom/sec/internal/imsphone/SipDelegateImpl;->mLatestDelegateConfig:Landroid/telephony/ims/SipDelegateConfiguration;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/imsphone/SipDelegateImpl$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/sec/internal/imsphone/SipDelegateImpl$$ExternalSyntheticLambda6;-><init>()V

    .line 183
    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long p0, v0, p1

    if-nez p0, :cond_25

    const/4 p0, 0x0

    return p0

    .line 188
    :cond_25
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSipDelegateStale: latest = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", requested = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SipDelegateImpl"

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$cleanupSession$1(Ljava/lang/String;)V
    .registers 4

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cleanupSession: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SipDelegateImpl"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object p0, p0, Lcom/sec/internal/imsphone/SipDelegateImpl;->mCallIds:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$notifyConfigurationChanged$4(Lcom/sec/internal/imsphone/SipDelegateConfig;)V
    .registers 3

    .line 228
    invoke-virtual {p1}, Lcom/sec/internal/imsphone/SipDelegateConfig;->convert()Landroid/telephony/ims/SipDelegateConfiguration;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/imsphone/SipDelegateImpl;->mLatestDelegateConfig:Landroid/telephony/ims/SipDelegateConfiguration;

    .line 230
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "notifyConfigurationChanged: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/imsphone/SipDelegateImpl;->mLatestDelegateConfig:Landroid/telephony/ims/SipDelegateConfiguration;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SipDelegateImpl"

    invoke-static {v0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object p1, p0, Lcom/sec/internal/imsphone/SipDelegateImpl;->mStateCallback:Landroid/telephony/ims/DelegateStateCallback;

    iget-object p0, p0, Lcom/sec/internal/imsphone/SipDelegateImpl;->mLatestDelegateConfig:Landroid/telephony/ims/SipDelegateConfiguration;

    invoke-interface {p1, p0}, Landroid/telephony/ims/DelegateStateCallback;->onConfigurationChanged(Landroid/telephony/ims/SipDelegateConfiguration;)V

    return-void
.end method

.method private synthetic lambda$notifyDeRegistering$7(Landroid/telephony/ims/DelegateRegistrationState$Builder;ILjava/lang/String;)V
    .registers 4

    .line 251
    invoke-direct {p0, p2}, Lcom/sec/internal/imsphone/SipDelegateImpl;->convertReason(I)I

    move-result p0

    invoke-virtual {p1, p3, p0}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addDeregisteringFeatureTag(Ljava/lang/String;I)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    return-void
.end method

.method private static synthetic lambda$notifyMessageReceiveError$3(Ljava/lang/String;I)V
    .registers 4

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyMessageReceiveError: viaTransactionId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", reason: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SipDelegateImpl"

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$notifyMessageReceived$2(Ljava/lang/String;)V
    .registers 3

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyMessageReceived: viaTransactionId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SipDelegateImpl"

    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$notifyRegistrationChanged$5(Landroid/telephony/ims/DelegateRegistrationState$Builder;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    .line 242
    invoke-virtual {p0, p1, v0}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addDeregisteredFeatureTag(Ljava/lang/String;I)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    return-void
.end method

.method private synthetic lambda$notifyRegistrationChanged$6(Ljava/util/Set;)V
    .registers 5

    .line 237
    new-instance v0, Landroid/telephony/ims/DelegateRegistrationState$Builder;

    invoke-direct {v0}, Landroid/telephony/ims/DelegateRegistrationState$Builder;-><init>()V

    .line 238
    invoke-virtual {v0, p1}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addRegisteredFeatureTags(Ljava/util/Set;)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    move-result-object v0

    .line 240
    new-instance v1, Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/sec/internal/imsphone/SipDelegateImpl;->mFeatureTags:Ljava/util/Set;

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 241
    invoke-interface {v1, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 242
    new-instance p1, Lcom/sec/internal/imsphone/SipDelegateImpl$$ExternalSyntheticLambda0;

    invoke-direct {p1, v0}, Lcom/sec/internal/imsphone/SipDelegateImpl$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/ims/DelegateRegistrationState$Builder;)V

    invoke-interface {v1, p1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 245
    iget-object p0, p0, Lcom/sec/internal/imsphone/SipDelegateImpl;->mStateCallback:Landroid/telephony/ims/DelegateStateCallback;

    invoke-virtual {v0}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->build()Landroid/telephony/ims/DelegateRegistrationState;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/telephony/ims/DelegateStateCallback;->onFeatureTagRegistrationChanged(Landroid/telephony/ims/DelegateRegistrationState;)V

    return-void
.end method

.method private synthetic lambda$sendMessage$0(Landroid/telephony/ims/SipMessage;J)V
    .registers 7

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SipDelegate.sendMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/ims/SipMessage;->getStartLine()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SipDelegateImpl"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-direct {p0, p2, p3}, Lcom/sec/internal/imsphone/SipDelegateImpl;->isSipDelegateStale(J)Z

    move-result p2

    if-eqz p2, :cond_37

    const-string/jumbo p2, "sendMessage is null"

    .line 169
    invoke-static {v1, p2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object p0, p0, Lcom/sec/internal/imsphone/SipDelegateImpl;->mMessageCallback:Landroid/telephony/ims/DelegateMessageCallback;

    invoke-virtual {p1}, Landroid/telephony/ims/SipMessage;->getViaBranchParameter()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0xa

    invoke-interface {p0, p1, p2}, Landroid/telephony/ims/DelegateMessageCallback;->onMessageSendFailure(Ljava/lang/String;I)V

    return-void

    .line 175
    :cond_37
    iget-object p2, p0, Lcom/sec/internal/imsphone/SipDelegateImpl;->mCallIds:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/telephony/ims/SipMessage;->getCallIdParameter()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 177
    iget-object p2, p0, Lcom/sec/internal/imsphone/SipDelegateImpl;->mRawSipSender:Lcom/sec/internal/interfaces/ims/core/IRawSipSender;

    iget p0, p0, Lcom/sec/internal/imsphone/SipDelegateImpl;->mPhoneId:I

    new-instance p3, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/telephony/ims/SipMessage;->toEncodedMessage()[B

    move-result-object p1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p3, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const/4 p1, 0x0

    invoke-interface {p2, p0, p3, p1}, Lcom/sec/internal/interfaces/ims/core/IRawSipSender;->send(ILjava/lang/String;Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public cleanupSession(Ljava/lang/String;)V
    .registers 4

    .line 194
    iget-object v0, p0, Lcom/sec/internal/imsphone/SipDelegateImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/sec/internal/imsphone/SipDelegateImpl$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/imsphone/SipDelegateImpl$$ExternalSyntheticLambda4;-><init>(Lcom/sec/internal/imsphone/SipDelegateImpl;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getFeatureTags()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 87
    new-instance v0, Landroid/util/ArraySet;

    iget-object p0, p0, Lcom/sec/internal/imsphone/SipDelegateImpl;->mFeatureTags:Ljava/util/Set;

    invoke-direct {v0, p0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public isMatched(Lcom/sec/ims/settings/ImsProfile;)Z
    .registers 2

    .line 142
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getAllServiceSetFromAllNetwork()Ljava/util/Set;

    move-result-object p1

    .line 141
    invoke-static {p1}, Lcom/sec/internal/constants/ims/SipMsg;->getTagsForServices(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    .line 143
    invoke-virtual {p0}, Lcom/sec/internal/imsphone/SipDelegateImpl;->getFeatureTags()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public isMatched(Lcom/sec/internal/constants/ims/SipMsg;)Z
    .registers 7

    .line 100
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/SipMsg;->getStartLine()Lcom/sec/internal/constants/ims/SipMsg$StartLine;

    move-result-object v0

    .line 101
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/SipMsg;->getCallIds()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 104
    iget-object v3, p0, Lcom/sec/internal/imsphone/SipDelegateImpl;->mCallIds:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_4f

    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isMatched: Known callid ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SipDelegateImpl"

    invoke-static {v3, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/SipMsg;->isNonDialogMethod()Z

    move-result p1

    if-eqz p1, :cond_4e

    if-eqz v0, :cond_4e

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/SipMsg$StartLine;->asStatusLine()Lcom/sec/internal/constants/ims/SipMsg$StatusLine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/SipMsg$StatusLine;->getCode()I

    move-result p1

    const/16 v0, 0xc8

    if-lt p1, v0, :cond_4e

    const-string/jumbo p1, "remove non dialog callId from mCallIds"

    .line 108
    invoke-static {v3, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object p0, p0, Lcom/sec/internal/imsphone/SipDelegateImpl;->mCallIds:Ljava/util/Set;

    invoke-interface {p0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_4e
    return v4

    .line 115
    :cond_4f
    instance-of v3, v0, Lcom/sec/internal/constants/ims/SipMsg$StatusLine;

    if-nez v3, :cond_a3

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/SipMsg;->isOutGoing()Z

    move-result v3

    if-eqz v3, :cond_5a

    goto :goto_a3

    .line 120
    :cond_5a
    instance-of v3, v0, Lcom/sec/internal/constants/ims/SipMsg$RequestLine;

    if-eqz v3, :cond_86

    .line 121
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/SipMsg$StartLine;->asRequestLine()Lcom/sec/internal/constants/ims/SipMsg$RequestLine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/SipMsg$RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v0

    const-string v3, "OPTIONS"

    .line 122
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_85

    const-string v3, "NOTIFY"

    .line 123
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_86

    const-string/jumbo v0, "reg"

    const-string v3, "presence"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/internal/constants/ims/SipMsg;->isOneOfEvent([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_86

    :cond_85
    return v2

    .line 129
    :cond_86
    iget-object v0, p0, Lcom/sec/internal/imsphone/SipDelegateImpl;->mFeatureTags:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v3, Lcom/sec/internal/imsphone/SipDelegateImpl$$ExternalSyntheticLambda9;

    invoke-direct {v3, p1}, Lcom/sec/internal/imsphone/SipDelegateImpl$$ExternalSyntheticLambda9;-><init>(Lcom/sec/internal/constants/ims/SipMsg;)V

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 131
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/SipMsg;->isOutGoing()Z

    move-result p1

    if-nez p1, :cond_a2

    .line 132
    iget-object p0, p0, Lcom/sec/internal/imsphone/SipDelegateImpl;->mCallIds:Ljava/util/Set;

    invoke-interface {p0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_a2
    return v4

    :cond_a3
    :goto_a3
    return v2
.end method

.method public notifyAlreadyRegistered(Lcom/sec/internal/imsphone/RegistrationTracker$RegisteredToken;)V
    .registers 3

    .line 222
    invoke-virtual {p1}, Lcom/sec/internal/imsphone/RegistrationTracker$RegisteredToken;->getDelegateConfig()Lcom/sec/internal/imsphone/SipDelegateConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/imsphone/SipDelegateImpl;->notifyConfigurationChanged(Lcom/sec/internal/imsphone/SipDelegateConfig;)V

    .line 223
    invoke-virtual {p1}, Lcom/sec/internal/imsphone/RegistrationTracker$RegisteredToken;->getRegisteredFeatureTags()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/imsphone/SipDelegateImpl;->notifyRegistrationChanged(Ljava/util/Set;)V

    return-void
.end method

.method public notifyConfigurationChanged(Lcom/sec/internal/imsphone/SipDelegateConfig;)V
    .registers 4

    .line 227
    iget-object v0, p0, Lcom/sec/internal/imsphone/SipDelegateImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/sec/internal/imsphone/SipDelegateImpl$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/imsphone/SipDelegateImpl$$ExternalSyntheticLambda3;-><init>(Lcom/sec/internal/imsphone/SipDelegateImpl;Lcom/sec/internal/imsphone/SipDelegateConfig;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public notifyCreated(Ljava/util/Set;Ljava/util/Set;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/FeatureTagState;",
            ">;)V"
        }
    .end annotation

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyCreated: Allowed tags "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SipDelegateImpl"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyCreated: Denied tags "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/sec/internal/imsphone/SipDelegateImpl;->mFeatureTags:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 83
    iget-object p1, p0, Lcom/sec/internal/imsphone/SipDelegateImpl;->mStateCallback:Landroid/telephony/ims/DelegateStateCallback;

    invoke-interface {p1, p0, p2}, Landroid/telephony/ims/DelegateStateCallback;->onCreated(Landroid/telephony/ims/stub/SipDelegate;Ljava/util/Set;)V

    return-void
.end method

.method public notifyDeRegistering(I)V
    .registers 5

    .line 250
    new-instance v0, Landroid/telephony/ims/DelegateRegistrationState$Builder;

    invoke-direct {v0}, Landroid/telephony/ims/DelegateRegistrationState$Builder;-><init>()V

    .line 251
    iget-object v1, p0, Lcom/sec/internal/imsphone/SipDelegateImpl;->mFeatureTags:Ljava/util/Set;

    new-instance v2, Lcom/sec/internal/imsphone/SipDelegateImpl$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0, v0, p1}, Lcom/sec/internal/imsphone/SipDelegateImpl$$ExternalSyntheticLambda8;-><init>(Lcom/sec/internal/imsphone/SipDelegateImpl;Landroid/telephony/ims/DelegateRegistrationState$Builder;I)V

    invoke-interface {v1, v2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 252
    iget-object p0, p0, Lcom/sec/internal/imsphone/SipDelegateImpl;->mStateCallback:Landroid/telephony/ims/DelegateStateCallback;

    invoke-virtual {v0}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->build()Landroid/telephony/ims/DelegateRegistrationState;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/telephony/ims/DelegateStateCallback;->onFeatureTagRegistrationChanged(Landroid/telephony/ims/DelegateRegistrationState;)V

    return-void
.end method

.method public notifyDestroy(I)V
    .registers 4

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyDestroy: reason "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SipDelegateImpl"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object p0, p0, Lcom/sec/internal/imsphone/SipDelegateImpl;->mStateCallback:Landroid/telephony/ims/DelegateStateCallback;

    invoke-interface {p0, p1}, Landroid/telephony/ims/DelegateStateCallback;->onDestroyed(I)V

    return-void
.end method

.method public notifyMessageReceiveError(Ljava/lang/String;I)V
    .registers 4

    .line 217
    iget-object p0, p0, Lcom/sec/internal/imsphone/SipDelegateImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/sec/internal/imsphone/SipDelegateImpl$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p2}, Lcom/sec/internal/imsphone/SipDelegateImpl$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;I)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public notifyMessageReceived(Ljava/lang/String;)V
    .registers 3

    .line 207
    iget-object p0, p0, Lcom/sec/internal/imsphone/SipDelegateImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/sec/internal/imsphone/SipDelegateImpl$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/sec/internal/imsphone/SipDelegateImpl$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public notifyRegistrationChanged(Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 236
    iget-object v0, p0, Lcom/sec/internal/imsphone/SipDelegateImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/sec/internal/imsphone/SipDelegateImpl$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/imsphone/SipDelegateImpl$$ExternalSyntheticLambda5;-><init>(Lcom/sec/internal/imsphone/SipDelegateImpl;Ljava/util/Set;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public notifySipMessage(Lcom/sec/internal/constants/ims/SipMsg;)V
    .registers 5

    .line 147
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/SipMsg;->isOutGoing()Z

    move-result v0

    const-string v1, "notifySipMessage: "

    const-string v2, "SipDelegateImpl"

    if-eqz v0, :cond_26

    .line 148
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/SipMsg;->getViaBranch()Ljava/lang/String;

    move-result-object p1

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object p0, p0, Lcom/sec/internal/imsphone/SipDelegateImpl;->mMessageCallback:Landroid/telephony/ims/DelegateMessageCallback;

    invoke-interface {p0, p1}, Landroid/telephony/ims/DelegateMessageCallback;->onMessageSent(Ljava/lang/String;)V

    goto :goto_45

    .line 152
    :cond_26
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/SipMsg;->getTelephonySipMessage()Landroid/telephony/ims/SipMessage;

    move-result-object p1

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/ims/SipMessage;->getCallIdParameter()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object p0, p0, Lcom/sec/internal/imsphone/SipDelegateImpl;->mMessageCallback:Landroid/telephony/ims/DelegateMessageCallback;

    invoke-interface {p0, p1}, Landroid/telephony/ims/DelegateMessageCallback;->onMessageReceived(Landroid/telephony/ims/SipMessage;)V

    :goto_45
    return-void
.end method

.method public sendMessage(Landroid/telephony/ims/SipMessage;J)V
    .registers 6

    if-nez p1, :cond_b

    const-string p0, "SipDelegateImpl"

    const-string/jumbo p1, "sendMessage is null"

    .line 161
    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 165
    :cond_b
    iget-object v0, p0, Lcom/sec/internal/imsphone/SipDelegateImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/sec/internal/imsphone/SipDelegateImpl$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/sec/internal/imsphone/SipDelegateImpl$$ExternalSyntheticLambda7;-><init>(Lcom/sec/internal/imsphone/SipDelegateImpl;Landroid/telephony/ims/SipMessage;J)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
