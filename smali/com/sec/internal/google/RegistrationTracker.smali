.class Lcom/sec/internal/google/RegistrationTracker;
.super Ljava/lang/Object;
.source "RegistrationTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/google/RegistrationTracker$State;
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "RegTracker"


# instance fields
.field mCallId:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mCurrentState:Lcom/sec/internal/google/RegistrationTracker$State;

.field mDelegateConfig:Lcom/sec/internal/google/SipDelegateConfig;

.field final mFeatureTags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    sget-object v0, Lcom/sec/internal/google/RegistrationTracker$State;->DE_REGISTERED:Lcom/sec/internal/google/RegistrationTracker$State;

    iput-object v0, p0, Lcom/sec/internal/google/RegistrationTracker;->mCurrentState:Lcom/sec/internal/google/RegistrationTracker$State;

    .line 42
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/google/RegistrationTracker;->mFeatureTags:Ljava/util/Set;

    const-string v0, ""

    .line 44
    iput-object v0, p0, Lcom/sec/internal/google/RegistrationTracker;->mCallId:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Lcom/sec/internal/google/RegistrationTracker;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/sec/internal/google/RegistrationTracker;->mContext:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/sec/internal/google/RegistrationTracker;->mCallId:Ljava/lang/String;

    .line 52
    iget-object p1, p0, Lcom/sec/internal/google/RegistrationTracker;->mFeatureTags:Ljava/util/Set;

    invoke-interface {p1, p3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 54
    new-instance p1, Lcom/sec/internal/google/SipDelegateConfig;

    invoke-direct {p1, p3}, Lcom/sec/internal/google/SipDelegateConfig;-><init>(Ljava/util/Set;)V

    iput-object p1, p0, Lcom/sec/internal/google/RegistrationTracker;->mDelegateConfig:Lcom/sec/internal/google/SipDelegateConfig;

    return-void
.end method


# virtual methods
.method getCallId()Ljava/lang/String;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/sec/internal/google/RegistrationTracker;->mCallId:Ljava/lang/String;

    return-object p0
.end method

.method getFeatureTags()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/sec/internal/google/RegistrationTracker;->mFeatureTags:Ljava/util/Set;

    monitor-enter v0

    .line 81
    :try_start_0
    new-instance v1, Landroid/util/ArraySet;

    iget-object p0, p0, Lcom/sec/internal/google/RegistrationTracker;->mFeatureTags:Ljava/util/Set;

    invoke-direct {v1, p0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 82
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method getRegisteredDelegateConfig()Lcom/sec/internal/google/SipDelegateConfig;
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/sec/internal/google/RegistrationTracker;->mCurrentState:Lcom/sec/internal/google/RegistrationTracker$State;

    sget-object v1, Lcom/sec/internal/google/RegistrationTracker$State;->REGISTERED:Lcom/sec/internal/google/RegistrationTracker$State;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/sec/internal/google/RegistrationTracker;->mDelegateConfig:Lcom/sec/internal/google/SipDelegateConfig;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getState()Lcom/sec/internal/google/RegistrationTracker$State;
    .locals 1

    .line 58
    monitor-enter p0

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/google/RegistrationTracker;->mCurrentState:Lcom/sec/internal/google/RegistrationTracker$State;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 60
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method onRegistrationDone(Lcom/sec/ims/ImsRegistration;)Lcom/sec/internal/google/SipDelegateConfig;
    .locals 4

    .line 158
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    .line 159
    iget-object v1, p0, Lcom/sec/internal/google/RegistrationTracker;->mDelegateConfig:Lcom/sec/internal/google/SipDelegateConfig;

    invoke-virtual {v1}, Lcom/sec/internal/google/SipDelegateConfig;->getBuilder()Lcom/sec/internal/google/SipDelegateConfig$Builder;

    move-result-object v1

    .line 160
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPcscf()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/google/SipDelegateConfig$Builder;->setPcscfAddress(Ljava/lang/String;)Lcom/sec/internal/google/SipDelegateConfig$Builder;

    move-result-object v1

    .line 161
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPreferredImpu()Lcom/sec/ims/util/NameAddr;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lcom/sec/internal/google/RegistrationTracker$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/sec/internal/google/RegistrationTracker$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lcom/sec/internal/google/RegistrationTracker$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/sec/internal/google/RegistrationTracker$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/internal/google/SipDelegateConfig$Builder;->setPublicUserIdentifier(Ljava/lang/String;)Lcom/sec/internal/google/SipDelegateConfig$Builder;

    move-result-object v1

    .line 162
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImpi()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/sec/internal/google/SipDelegateConfig$Builder;->setPrivateUserIdentifier(Ljava/lang/String;)Lcom/sec/internal/google/SipDelegateConfig$Builder;

    move-result-object p1

    .line 163
    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getMssSize()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/internal/google/SipDelegateConfig$Builder;->setMaxUdpPayloadSizeBytes(I)Lcom/sec/internal/google/SipDelegateConfig$Builder;

    move-result-object p1

    .line 164
    invoke-virtual {p1}, Lcom/sec/internal/google/SipDelegateConfig$Builder;->build()Lcom/sec/internal/google/SipDelegateConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/google/RegistrationTracker;->mDelegateConfig:Lcom/sec/internal/google/SipDelegateConfig;

    return-object p1
.end method

.method setCallId(Ljava/lang/String;)V
    .locals 6

    .line 68
    iget-object v0, p0, Lcom/sec/internal/google/RegistrationTracker;->mCallId:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/sec/internal/google/RegistrationTracker;->mCurrentState:Lcom/sec/internal/google/RegistrationTracker$State;

    sget-object v1, Lcom/sec/internal/google/RegistrationTracker$State;->DE_REGISTERED:Lcom/sec/internal/google/RegistrationTracker$State;

    const/4 v2, 0x0

    const-string v3, "RegTracker"

    if-eq v0, v1, :cond_0

    .line 70
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v2

    const-string v0, "setCallId: Call-Id has changed in [%s] state! Changed to DE_REGISTERED"

    invoke-static {v4, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iput-object v1, p0, Lcom/sec/internal/google/RegistrationTracker;->mCurrentState:Lcom/sec/internal/google/RegistrationTracker$State;

    .line 74
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCallId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iput-object p1, p0, Lcom/sec/internal/google/RegistrationTracker;->mCallId:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RegTracker(state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/google/RegistrationTracker;->mCurrentState:Lcom/sec/internal/google/RegistrationTracker$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") callId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/google/RegistrationTracker;->mCallId:Ljava/lang/String;

    const-string v1, "@"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    aget-object p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method updateState(Lcom/sec/internal/constants/ims/SipMsg;I)V
    .locals 5

    .line 102
    sget-object v0, Lcom/sec/internal/google/RegistrationTracker$1;->$SwitchMap$com$sec$internal$google$RegistrationTracker$State:[I

    iget-object v1, p0, Lcom/sec/internal/google/RegistrationTracker;->mCurrentState:Lcom/sec/internal/google/RegistrationTracker$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 p2, 0x5

    if-eq v0, p2, :cond_0

    goto/16 :goto_2

    .line 150
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/SipMsg;->isOutGoing()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 151
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/SipMsg;->getExpire()I

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/sec/internal/google/RegistrationTracker$State;->DE_REGISTERING:Lcom/sec/internal/google/RegistrationTracker$State;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/sec/internal/google/RegistrationTracker$State;->RE_REGISTERING:Lcom/sec/internal/google/RegistrationTracker$State;

    :goto_0
    iput-object p1, p0, Lcom/sec/internal/google/RegistrationTracker;->mCurrentState:Lcom/sec/internal/google/RegistrationTracker$State;

    goto/16 :goto_2

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/google/RegistrationTracker;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->isImsSingleRegiRequired(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "REGISTER"

    .line 113
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/SipMsg;->getStartLine()Lcom/sec/internal/constants/ims/SipMsg$StartLine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/SipMsg$StartLine;->asRequestLine()Lcom/sec/internal/constants/ims/SipMsg$RequestLine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/SipMsg$RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/SipMsg;->getExpire()I

    move-result v0

    if-eqz v0, :cond_3

    .line 114
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/SipMsg;->getViaHostPort()Landroid/util/Pair;

    move-result-object v0

    .line 115
    iget-object v1, p0, Lcom/sec/internal/google/RegistrationTracker;->mDelegateConfig:Lcom/sec/internal/google/SipDelegateConfig;

    invoke-virtual {v1}, Lcom/sec/internal/google/SipDelegateConfig;->getBuilder()Lcom/sec/internal/google/SipDelegateConfig$Builder;

    move-result-object v1

    .line 116
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/SipMsg;->getStartLine()Lcom/sec/internal/constants/ims/SipMsg$StartLine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/SipMsg$StartLine;->asRequestLine()Lcom/sec/internal/constants/ims/SipMsg$RequestLine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/SipMsg$RequestLine;->getUri()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "sip:"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/google/SipDelegateConfig$Builder;->setHomeDomain(Ljava/lang/String;)Lcom/sec/internal/google/SipDelegateConfig$Builder;

    move-result-object v1

    .line 117
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/SipMsg;->getViaTransport()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/google/SipDelegateConfig$Builder;->setTransport(Ljava/lang/String;)Lcom/sec/internal/google/SipDelegateConfig$Builder;

    move-result-object v1

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 118
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/sec/internal/google/SipDelegateConfig$Builder;->setLocalAddress(Ljava/lang/String;I)Lcom/sec/internal/google/SipDelegateConfig$Builder;

    move-result-object v0

    .line 119
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/SipMsg;->getContactUser()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/google/SipDelegateConfig$Builder;->setSipContactUserParameter(Ljava/lang/String;)Lcom/sec/internal/google/SipDelegateConfig$Builder;

    move-result-object v0

    .line 120
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/SipMsg;->getContactImei()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/google/SipDelegateConfig$Builder;->setImei(Ljava/lang/String;)Lcom/sec/internal/google/SipDelegateConfig$Builder;

    move-result-object v0

    .line 121
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/SipMsg;->getUserAgent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/google/SipDelegateConfig$Builder;->setSipUserAgentHeader(Ljava/lang/String;)Lcom/sec/internal/google/SipDelegateConfig$Builder;

    move-result-object v0

    const-string v1, ","

    .line 122
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/SipMsg;->getSecurityVerify()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/google/SipDelegateConfig$Builder;->setSecurityVerifyHeader(Ljava/lang/String;)Lcom/sec/internal/google/SipDelegateConfig$Builder;

    move-result-object v0

    .line 123
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/SipMsg;->getPAccessNetworkInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/google/SipDelegateConfig$Builder;->setSipPaniHeader(Ljava/lang/String;)Lcom/sec/internal/google/SipDelegateConfig$Builder;

    move-result-object v0

    .line 124
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/SipMsg;->getPLastAccessNetworkInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/google/SipDelegateConfig$Builder;->setSipPlaniHeader(Ljava/lang/String;)Lcom/sec/internal/google/SipDelegateConfig$Builder;

    .line 129
    :cond_3
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/SipMsg;->getStartLine()Lcom/sec/internal/constants/ims/SipMsg$StartLine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/SipMsg$StartLine;->asStatusLine()Lcom/sec/internal/constants/ims/SipMsg$StatusLine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/SipMsg$StatusLine;->getCode()I

    move-result v0

    const/16 v1, 0x191

    if-eq v0, v1, :cond_5

    const/16 v1, 0x197

    if-ne v0, v1, :cond_4

    goto :goto_1

    :cond_4
    const/16 v1, 0xc8

    if-ne v0, v1, :cond_8

    .line 136
    iget-object v0, p0, Lcom/sec/internal/google/RegistrationTracker;->mFeatureTags:Ljava/util/Set;

    monitor-enter v0

    .line 137
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/google/RegistrationTracker;->mFeatureTags:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 138
    iget-object v1, p0, Lcom/sec/internal/google/RegistrationTracker;->mFeatureTags:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/SipMsg;->getFeatureTags()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 139
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    iget-object v0, p0, Lcom/sec/internal/google/RegistrationTracker;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->isImsSingleRegiRequired(Landroid/content/Context;I)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 142
    iget-object p0, p0, Lcom/sec/internal/google/RegistrationTracker;->mDelegateConfig:Lcom/sec/internal/google/SipDelegateConfig;

    invoke-virtual {p0}, Lcom/sec/internal/google/SipDelegateConfig;->getBuilder()Lcom/sec/internal/google/SipDelegateConfig$Builder;

    move-result-object p0

    const-string p2, ","

    .line 143
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/SipMsg;->getServiceRoutes()[Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/sec/internal/google/SipDelegateConfig$Builder;->setSipServiceRouteHeader(Ljava/lang/String;)Lcom/sec/internal/google/SipDelegateConfig$Builder;

    move-result-object p0

    const-string p2, ","

    .line 144
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/SipMsg;->getPAssociatedUris()[Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/google/SipDelegateConfig$Builder;->setSipAssociatedUriHeader(Ljava/lang/String;)Lcom/sec/internal/google/SipDelegateConfig$Builder;

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 139
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 131
    :cond_5
    :goto_1
    iget-object p2, p0, Lcom/sec/internal/google/RegistrationTracker;->mDelegateConfig:Lcom/sec/internal/google/SipDelegateConfig;

    invoke-virtual {p2}, Lcom/sec/internal/google/SipDelegateConfig;->getBuilder()Lcom/sec/internal/google/SipDelegateConfig$Builder;

    move-result-object p2

    .line 132
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/SipMsg;->getAuthenticate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/sec/internal/google/SipDelegateConfig$Builder;->setSipAuthenticationHeader(Ljava/lang/String;)Lcom/sec/internal/google/SipDelegateConfig$Builder;

    move-result-object p2

    .line 133
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/SipMsg;->getAuthenticateNonce()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/sec/internal/google/SipDelegateConfig$Builder;->setSipAuthenticationNonce(Ljava/lang/String;)Lcom/sec/internal/google/SipDelegateConfig$Builder;

    .line 134
    sget-object p1, Lcom/sec/internal/google/RegistrationTracker$State;->AUTHORIZING:Lcom/sec/internal/google/RegistrationTracker$State;

    iput-object p1, p0, Lcom/sec/internal/google/RegistrationTracker;->mCurrentState:Lcom/sec/internal/google/RegistrationTracker$State;

    goto :goto_2

    .line 104
    :cond_6
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/SipMsg;->isOutGoing()Z

    move-result p2

    if-nez p2, :cond_7

    const-string p2, "RegTracker"

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DE_REGISTERED: updateState: Unexpected SIP ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_7
    sget-object p1, Lcom/sec/internal/google/RegistrationTracker$State;->REGISTERING:Lcom/sec/internal/google/RegistrationTracker$State;

    iput-object p1, p0, Lcom/sec/internal/google/RegistrationTracker;->mCurrentState:Lcom/sec/internal/google/RegistrationTracker$State;

    :cond_8
    :goto_2
    return-void
.end method

.method updateState(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 87
    monitor-enter p0

    .line 88
    :try_start_0
    sget-object p1, Lcom/sec/internal/google/RegistrationTracker$State;->REGISTERED:Lcom/sec/internal/google/RegistrationTracker$State;

    iput-object p1, p0, Lcom/sec/internal/google/RegistrationTracker;->mCurrentState:Lcom/sec/internal/google/RegistrationTracker$State;

    .line 89
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 91
    :cond_0
    monitor-enter p0

    .line 92
    :try_start_1
    sget-object p1, Lcom/sec/internal/google/RegistrationTracker$State;->DE_REGISTERED:Lcom/sec/internal/google/RegistrationTracker$State;

    iput-object p1, p0, Lcom/sec/internal/google/RegistrationTracker;->mCurrentState:Lcom/sec/internal/google/RegistrationTracker$State;

    .line 93
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 94
    iget-object p1, p0, Lcom/sec/internal/google/RegistrationTracker;->mFeatureTags:Ljava/util/Set;

    monitor-enter p1

    .line 95
    :try_start_2
    iget-object v0, p0, Lcom/sec/internal/google/RegistrationTracker;->mFeatureTags:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 96
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-string p1, ""

    .line 97
    iput-object p1, p0, Lcom/sec/internal/google/RegistrationTracker;->mCallId:Ljava/lang/String;

    :goto_0
    return-void

    :catchall_1
    move-exception p0

    .line 96
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :catchall_2
    move-exception p1

    .line 93
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1
.end method
