.class Lcom/sec/internal/google/ImsSipDelegate$1;
.super Ljava/lang/Object;
.source "ImsSipDelegate.java"

# interfaces
.implements Landroid/telephony/ims/stub/SipDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/google/ImsSipDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/google/ImsSipDelegate;


# direct methods
.method public static synthetic $r8$lambda$LOrAlEqZ2NCAcIoMFNCJhXfM7tY(JLandroid/telephony/ims/SipDelegateConfiguration;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/internal/google/ImsSipDelegate$1;->lambda$sendMessage$0(JLandroid/telephony/ims/SipDelegateConfiguration;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/sec/internal/google/ImsSipDelegate;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/sec/internal/google/ImsSipDelegate$1;->this$0:Lcom/sec/internal/google/ImsSipDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getImsRegistration(I)Lcom/sec/ims/ImsRegistration;
    .locals 5

    const/4 p0, 0x0

    new-array v0, p0, [Lcom/sec/ims/ImsRegistration;

    .line 97
    :try_start_0
    invoke-static {p1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 103
    :cond_0
    array-length v2, v0

    :goto_0
    if-ge p0, v2, :cond_2

    aget-object v3, v0, p0

    if-eqz v3, :cond_1

    .line 104
    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v4

    if-ne v4, p1, :cond_1

    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v4

    if-nez v4, :cond_1

    .line 105
    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v4

    if-nez v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private static synthetic lambda$sendMessage$0(JLandroid/telephony/ims/SipDelegateConfiguration;)Ljava/lang/Boolean;
    .locals 2

    .line 65
    invoke-virtual {p2}, Landroid/telephony/ims/SipDelegateConfiguration;->getVersion()J

    move-result-wide v0

    cmp-long p0, v0, p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public cleanupSession(Ljava/lang/String;)V
    .locals 2

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SipDelegate.cleanupSession: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsSipDelegate"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object p0, p0, Lcom/sec/internal/google/ImsSipDelegate$1;->this$0:Lcom/sec/internal/google/ImsSipDelegate;

    iget-object p0, p0, Lcom/sec/internal/google/ImsSipDelegate;->mCallIds:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public notifyMessageReceiveError(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public notifyMessageReceived(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public sendMessage(Landroid/telephony/ims/SipMessage;J)V
    .locals 3

    .line 64
    monitor-enter p0

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/google/ImsSipDelegate$1;->this$0:Lcom/sec/internal/google/ImsSipDelegate;

    iget-object v0, v0, Lcom/sec/internal/google/ImsSipDelegate;->mLatestDelegateConfig:Landroid/telephony/ims/SipDelegateConfiguration;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/google/ImsSipDelegate$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2, p3}, Lcom/sec/internal/google/ImsSipDelegate$1$$ExternalSyntheticLambda0;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ImsSipDelegate"

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SipDelegate.sendMessage: Failed due to stale config ver ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object p2, p0, Lcom/sec/internal/google/ImsSipDelegate$1;->this$0:Lcom/sec/internal/google/ImsSipDelegate;

    iget-object p2, p2, Lcom/sec/internal/google/ImsSipDelegate;->mDelegateWrapper:Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;

    invoke-virtual {p1}, Landroid/telephony/ims/SipMessage;->getViaBranchParameter()Ljava/lang/String;

    move-result-object p1

    const/16 p3, 0xa

    invoke-virtual {p2, p1, p3}, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->onMessageSendFailure(Ljava/lang/String;I)V

    .line 68
    monitor-exit p0

    return-void

    .line 70
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    const-string p0, "ImsSipDelegate"

    const-string p1, "sendMessage is null"

    .line 73
    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 77
    :cond_1
    iget-object p2, p0, Lcom/sec/internal/google/ImsSipDelegate$1;->this$0:Lcom/sec/internal/google/ImsSipDelegate;

    iget p2, p2, Lcom/sec/internal/google/ImsSipDelegate;->mPhoneId:I

    invoke-direct {p0, p2}, Lcom/sec/internal/google/ImsSipDelegate$1;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object p2

    if-nez p2, :cond_2

    const-string p2, "ImsSipDelegate"

    const-string p3, "ignore sendMessage without registration"

    .line 79
    invoke-static {p2, p3}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object p0, p0, Lcom/sec/internal/google/ImsSipDelegate$1;->this$0:Lcom/sec/internal/google/ImsSipDelegate;

    iget-object p0, p0, Lcom/sec/internal/google/ImsSipDelegate;->mDelegateWrapper:Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;

    invoke-virtual {p1}, Landroid/telephony/ims/SipMessage;->getViaBranchParameter()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x9

    invoke-virtual {p0, p1, p2}, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->onMessageSendFailure(Ljava/lang/String;I)V

    return-void

    .line 84
    :cond_2
    iget-object p3, p0, Lcom/sec/internal/google/ImsSipDelegate$1;->this$0:Lcom/sec/internal/google/ImsSipDelegate;

    iget-object p3, p3, Lcom/sec/internal/google/ImsSipDelegate;->mCallIds:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/telephony/ims/SipMessage;->getCallIdParameter()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string p3, "ImsSipDelegate"

    .line 86
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

    invoke-static {p3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :try_start_1
    iget-object p0, p0, Lcom/sec/internal/google/ImsSipDelegate$1;->this$0:Lcom/sec/internal/google/ImsSipDelegate;

    iget-object p0, p0, Lcom/sec/internal/google/ImsSipDelegate;->mNotifier:Lcom/sec/internal/interfaces/google/ISipTransportNotifier;

    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result p2

    new-instance p3, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/telephony/ims/SipMessage;->toEncodedMessage()[B

    move-result-object p1

    const-string v0, "UTF-8"

    invoke-direct {p3, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const/4 p1, 0x0

    invoke-interface {p0, p2, p3, p1}, Lcom/sec/internal/interfaces/google/ISipTransportNotifier;->sendSip(ILjava/lang/String;Landroid/os/Message;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 90
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 70
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
