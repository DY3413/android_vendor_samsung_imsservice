.class public Lcom/sec/internal/google/ImsSipDelegate;
.super Ljava/lang/Object;
.source "ImsSipDelegate.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ImsSipDelegate"


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

.field mDelegateWrapper:Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;

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

.field mLocalSipDelegate:Landroid/telephony/ims/stub/SipDelegate;

.field mNotifier:Lcom/sec/internal/interfaces/google/ISipTransportNotifier;

.field mPhoneId:I


# direct methods
.method public static synthetic $r8$lambda$1vmWU370EqbzLi7XHW3r2KTWaNE(Landroid/telephony/ims/DelegateRegistrationState$Builder;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/internal/google/ImsSipDelegate;->lambda$notifyDeregistering$2(Landroid/telephony/ims/DelegateRegistrationState$Builder;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$II8pgPcsQKuA0A8_xeX78u4Vedg(Lcom/sec/internal/constants/ims/SipMsg;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/internal/google/ImsSipDelegate;->lambda$isMatched$0(Lcom/sec/internal/constants/ims/SipMsg;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$pVreyi6WeXubGhNjBEVS3oaSwLM(Landroid/telephony/ims/DelegateRegistrationState$Builder;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/internal/google/ImsSipDelegate;->lambda$notifyRegistration$1(Landroid/telephony/ims/DelegateRegistrationState$Builder;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILcom/sec/internal/interfaces/google/ISipTransportNotifier;Ljava/util/concurrent/Executor;Landroid/telephony/ims/aidl/ISipDelegateStateCallback;Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;)V
    .locals 1

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/google/ImsSipDelegate;->mFeatureTags:Ljava/util/Set;

    .line 53
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/google/ImsSipDelegate;->mCallIds:Ljava/util/Set;

    .line 59
    new-instance v0, Lcom/sec/internal/google/ImsSipDelegate$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/google/ImsSipDelegate$1;-><init>(Lcom/sec/internal/google/ImsSipDelegate;)V

    iput-object v0, p0, Lcom/sec/internal/google/ImsSipDelegate;->mLocalSipDelegate:Landroid/telephony/ims/stub/SipDelegate;

    .line 137
    iput p1, p0, Lcom/sec/internal/google/ImsSipDelegate;->mPhoneId:I

    .line 138
    iput-object p2, p0, Lcom/sec/internal/google/ImsSipDelegate;->mNotifier:Lcom/sec/internal/interfaces/google/ISipTransportNotifier;

    .line 139
    new-instance p1, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;

    invoke-direct {p1, p3, p4, p5}, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;-><init>(Ljava/util/concurrent/Executor;Landroid/telephony/ims/aidl/ISipDelegateStateCallback;Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;)V

    iput-object p1, p0, Lcom/sec/internal/google/ImsSipDelegate;->mDelegateWrapper:Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;

    return-void
.end method

.method private isMatched(Lcom/sec/internal/constants/ims/SipMsg;)Z
    .locals 5

    .line 184
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/SipMsg;->getStartLine()Lcom/sec/internal/constants/ims/SipMsg$StartLine;

    move-result-object v0

    .line 185
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/SipMsg;->getCallIds()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 188
    iget-object v3, p0, Lcom/sec/internal/google/ImsSipDelegate;->mCallIds:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isMatched: Known callid ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImsSipDelegate"

    invoke-static {v3, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/SipMsg;->isNonDialogMethod()Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/SipMsg$StartLine;->asStatusLine()Lcom/sec/internal/constants/ims/SipMsg$StatusLine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/SipMsg$StatusLine;->getCode()I

    move-result p1

    const/16 v0, 0xc8

    if-lt p1, v0, :cond_0

    const-string p1, "remove non dialog callId from mCallIds"

    .line 192
    invoke-static {v3, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object p0, p0, Lcom/sec/internal/google/ImsSipDelegate;->mCallIds:Ljava/util/Set;

    invoke-interface {p0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return v4

    .line 199
    :cond_1
    instance-of v3, v0, Lcom/sec/internal/constants/ims/SipMsg$StatusLine;

    if-nez v3, :cond_6

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/SipMsg;->isOutGoing()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 204
    :cond_2
    instance-of v3, v0, Lcom/sec/internal/constants/ims/SipMsg$RequestLine;

    if-eqz v3, :cond_4

    .line 205
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/SipMsg$StartLine;->asRequestLine()Lcom/sec/internal/constants/ims/SipMsg$RequestLine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/SipMsg$RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v0

    const-string v3, "OPTIONS"

    .line 206
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "NOTIFY"

    .line 207
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "reg"

    const-string v3, "presence"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/internal/constants/ims/SipMsg;->isOneOfEvent([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    return v2

    .line 213
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/google/ImsSipDelegate;->mFeatureTags:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v3, Lcom/sec/internal/google/ImsSipDelegate$$ExternalSyntheticLambda4;

    invoke-direct {v3, p1}, Lcom/sec/internal/google/ImsSipDelegate$$ExternalSyntheticLambda4;-><init>(Lcom/sec/internal/constants/ims/SipMsg;)V

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 215
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/SipMsg;->isOutGoing()Z

    move-result p1

    if-nez p1, :cond_5

    .line 216
    iget-object p0, p0, Lcom/sec/internal/google/ImsSipDelegate;->mCallIds:Ljava/util/Set;

    invoke-interface {p0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_5
    return v4

    :cond_6
    :goto_0
    return v2
.end method

.method private static synthetic lambda$isMatched$0(Lcom/sec/internal/constants/ims/SipMsg;Ljava/lang/String;)Z
    .locals 1

    .line 213
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/SipMsg;->getFeatureTags()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/SipMsg;->getFeatureTagsFromAcceptContact()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static synthetic lambda$notifyDeregistering$2(Landroid/telephony/ims/DelegateRegistrationState$Builder;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x4

    .line 249
    invoke-virtual {p0, p1, v0}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addDeregisteringFeatureTag(Ljava/lang/String;I)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    return-void
.end method

.method private static synthetic lambda$notifyRegistration$1(Landroid/telephony/ims/DelegateRegistrationState$Builder;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 238
    invoke-virtual {p0, p1, v0}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addDeregisteredFeatureTag(Ljava/lang/String;I)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    return-void
.end method


# virtual methods
.method public getFeatureTags()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 143
    new-instance v0, Landroid/util/ArraySet;

    iget-object p0, p0, Lcom/sec/internal/google/ImsSipDelegate;->mFeatureTags:Ljava/util/Set;

    invoke-direct {v0, p0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getLocalSipDelegate()Landroid/telephony/ims/aidl/ISipDelegate;
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/sec/internal/google/ImsSipDelegate;->mDelegateWrapper:Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;

    invoke-virtual {p0}, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->getDelegateBinder()Landroid/telephony/ims/aidl/ISipDelegate;

    move-result-object p0

    return-object p0
.end method

.method public notifyCreated(Ljava/util/Set;Ljava/util/Set;)V
    .locals 1
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

    .line 151
    iput-object p1, p0, Lcom/sec/internal/google/ImsSipDelegate;->mFeatureTags:Ljava/util/Set;

    .line 152
    iget-object p1, p0, Lcom/sec/internal/google/ImsSipDelegate;->mDelegateWrapper:Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;

    iget-object v0, p0, Lcom/sec/internal/google/ImsSipDelegate;->mLocalSipDelegate:Landroid/telephony/ims/stub/SipDelegate;

    invoke-virtual {p1, v0, p2}, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->onCreated(Landroid/telephony/ims/stub/SipDelegate;Ljava/util/Set;)V

    .line 153
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCreated: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/google/ImsSipDelegate;->mFeatureTags:Ljava/util/Set;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", Denied: "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ImsSipDelegate"

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method notifyDeregistering()V
    .locals 3

    .line 248
    new-instance v0, Landroid/telephony/ims/DelegateRegistrationState$Builder;

    invoke-direct {v0}, Landroid/telephony/ims/DelegateRegistrationState$Builder;-><init>()V

    .line 249
    iget-object v1, p0, Lcom/sec/internal/google/ImsSipDelegate;->mFeatureTags:Ljava/util/Set;

    new-instance v2, Lcom/sec/internal/google/ImsSipDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/sec/internal/google/ImsSipDelegate$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/ims/DelegateRegistrationState$Builder;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 250
    iget-object p0, p0, Lcom/sec/internal/google/ImsSipDelegate;->mDelegateWrapper:Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;

    invoke-virtual {v0}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->build()Landroid/telephony/ims/DelegateRegistrationState;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->onFeatureTagRegistrationChanged(Landroid/telephony/ims/DelegateRegistrationState;)V

    return-void
.end method

.method public notifyDestroy(I)V
    .locals 1

    .line 157
    iget-object p0, p0, Lcom/sec/internal/google/ImsSipDelegate;->mDelegateWrapper:Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;

    invoke-virtual {p0, p1}, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->onDestroyed(I)V

    .line 158
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "notifyDestroy: reason "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ImsSipDelegate"

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method notifyRegistration(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 233
    new-instance v0, Landroid/telephony/ims/DelegateRegistrationState$Builder;

    invoke-direct {v0}, Landroid/telephony/ims/DelegateRegistrationState$Builder;-><init>()V

    .line 234
    invoke-virtual {v0, p1}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addRegisteredFeatureTags(Ljava/util/Set;)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    move-result-object v0

    .line 236
    new-instance v1, Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/sec/internal/google/ImsSipDelegate;->mFeatureTags:Ljava/util/Set;

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 237
    invoke-interface {v1, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 238
    new-instance p1, Lcom/sec/internal/google/ImsSipDelegate$$ExternalSyntheticLambda2;

    invoke-direct {p1, v0}, Lcom/sec/internal/google/ImsSipDelegate$$ExternalSyntheticLambda2;-><init>(Landroid/telephony/ims/DelegateRegistrationState$Builder;)V

    invoke-interface {v1, p1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 239
    iget-object p0, p0, Lcom/sec/internal/google/ImsSipDelegate;->mDelegateWrapper:Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;

    invoke-virtual {v0}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->build()Landroid/telephony/ims/DelegateRegistrationState;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->onFeatureTagRegistrationChanged(Landroid/telephony/ims/DelegateRegistrationState;)V

    return-void
.end method

.method notifySipDelegateConfig(Lcom/sec/internal/google/SipDelegateConfig;)V
    .locals 2

    .line 225
    monitor-enter p0

    .line 226
    :try_start_0
    invoke-virtual {p1}, Lcom/sec/internal/google/SipDelegateConfig;->convert()Landroid/telephony/ims/SipDelegateConfiguration;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/google/ImsSipDelegate;->mLatestDelegateConfig:Landroid/telephony/ims/SipDelegateConfiguration;

    const-string p1, "ImsSipDelegate"

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifySipDelegateConfig: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/google/ImsSipDelegate;->mLatestDelegateConfig:Landroid/telephony/ims/SipDelegateConfiguration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object p1, p0, Lcom/sec/internal/google/ImsSipDelegate;->mDelegateWrapper:Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;

    iget-object v0, p0, Lcom/sec/internal/google/ImsSipDelegate;->mLatestDelegateConfig:Landroid/telephony/ims/SipDelegateConfiguration;

    invoke-virtual {p1, v0}, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->onConfigurationChanged(Landroid/telephony/ims/SipDelegateConfiguration;)V

    .line 229
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public notifySipMessage(Lcom/sec/internal/constants/ims/SipMsg;)V
    .locals 3

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifySipMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImsSipDelegate"

    invoke-static {v2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-direct {p0, p1}, Lcom/sec/internal/google/ImsSipDelegate;->isMatched(Lcom/sec/internal/constants/ims/SipMsg;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 168
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/SipMsg;->isOutGoing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/SipMsg;->getViaBranch()Ljava/lang/String;

    move-result-object p1

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object p0, p0, Lcom/sec/internal/google/ImsSipDelegate;->mDelegateWrapper:Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;

    invoke-virtual {p0, p1}, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->onMessageSent(Ljava/lang/String;)V

    goto :goto_0

    .line 173
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/SipMsg;->getTelephonySipMessage()Landroid/telephony/ims/SipMessage;

    move-result-object p1

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMessageReceived: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/ims/SipMessage;->getCallIdParameter()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object p0, p0, Lcom/sec/internal/google/ImsSipDelegate;->mDelegateWrapper:Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;

    invoke-virtual {p0, p1}, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->onMessageReceived(Landroid/telephony/ims/SipMessage;)V

    :goto_0
    return-void
.end method

.method onImsConfigFeatureTagChanged(Lcom/sec/internal/google/SipDelegateConfig;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/google/SipDelegateConfig;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 243
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/sec/internal/google/ImsSipDelegate$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/sec/internal/google/ImsSipDelegate$$ExternalSyntheticLambda3;-><init>(Lcom/sec/internal/google/ImsSipDelegate;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 244
    invoke-virtual {p0, p2}, Lcom/sec/internal/google/ImsSipDelegate;->notifyRegistration(Ljava/util/Set;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 256
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/sec/internal/google/ImsSipDelegate;->mFeatureTags:Ljava/util/Set;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/sec/internal/google/ImsSipDelegate;->mCallIds:Ljava/util/Set;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object p0, p0, Lcom/sec/internal/google/ImsSipDelegate;->mLatestDelegateConfig:Landroid/telephony/ims/SipDelegateConfiguration;

    .line 257
    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v2, Lcom/sec/internal/google/ImsSipDelegate$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/sec/internal/google/ImsSipDelegate$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const-string v2, "Empty"

    invoke-virtual {p0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const/4 v2, 0x2

    aput-object p0, v1, v2

    const-string p0, "ImsSipDelegate {features: %s, callIds: %s, last config: %s}"

    .line 256
    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
