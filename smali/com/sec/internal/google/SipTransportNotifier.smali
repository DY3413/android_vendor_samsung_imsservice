.class public Lcom/sec/internal/google/SipTransportNotifier;
.super Ljava/lang/Object;
.source "SipTransportNotifier.java"

# interfaces
.implements Lcom/sec/internal/interfaces/google/ISipTransportNotifier;


# static fields
.field static final EVENT_SIP_MESSAGE_RECEIVED:I = 0x1

.field static final EVENT_SIP_MESSAGE_SENT:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "SipTransportNotifier"


# instance fields
.field final mAdhocDomains:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final mAllocatedTags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field final mDelegates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/sec/internal/google/ImsSipDelegate;",
            ">;>;"
        }
    .end annotation
.end field

.field mRawSipHandler:Landroid/os/Handler;

.field mRawSipHandlerThread:Landroid/os/HandlerThread;

.field mRawSipInterface:Lcom/sec/internal/interfaces/ims/core/handler/ISipDialogInterface;

.field final mRegTrackers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/google/RegistrationTracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$5Mi5JG3dad1boz4Pir5A0If86KU(ILcom/sec/internal/google/ImsSipDelegate;Lcom/sec/internal/google/RegistrationTracker;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/internal/google/SipTransportNotifier;->lambda$addSipDelegate$3(ILcom/sec/internal/google/ImsSipDelegate;Lcom/sec/internal/google/RegistrationTracker;)V

    return-void
.end method

.method public static synthetic $r8$lambda$61ga8PPhXorhLoxo-o7lR-8HWuE(Lcom/sec/ims/settings/ImsProfile;Lcom/sec/internal/google/ImsSipDelegate;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/internal/google/SipTransportNotifier;->lambda$notifyDeregistering$17(Lcom/sec/ims/settings/ImsProfile;Lcom/sec/internal/google/ImsSipDelegate;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$66elBgAJdacoL-d59uIBYI1nm6k(Lcom/sec/internal/constants/ims/SipMsg;Lcom/sec/internal/google/ImsSipDelegate;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/internal/google/SipTransportNotifier;->lambda$onSipMessageEvent$11(Lcom/sec/internal/constants/ims/SipMsg;Lcom/sec/internal/google/ImsSipDelegate;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6Ygv_lMEGlZf-pG-ADA6qyCgDmM(Lcom/sec/internal/google/RegistrationTracker;Lcom/sec/internal/google/ImsSipDelegate;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/internal/google/SipTransportNotifier;->lambda$onUpdateRegistrationTimeout$18(Lcom/sec/internal/google/RegistrationTracker;Lcom/sec/internal/google/ImsSipDelegate;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6gWjYML4ebFsa8UHIMcmX4euzck(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/internal/google/SipTransportNotifier;->lambda$isAdhocProfileRegister$13(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$DLh0vYb_GjVQcOxfZ7gFH9flYWU(Lcom/sec/internal/google/RegistrationTracker;)Z
    .locals 0

    invoke-static {p0}, Lcom/sec/internal/google/SipTransportNotifier;->lambda$addSipDelegate$1(Lcom/sec/internal/google/RegistrationTracker;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$E5y9kEEEl5ids87Gta_n5E_KuwU(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/google/SipDelegateConfig$Builder;)Lcom/sec/internal/google/SipDelegateConfig;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/internal/google/SipTransportNotifier;->lambda$onPaniUpdated$20(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/google/SipDelegateConfig$Builder;)Lcom/sec/internal/google/SipDelegateConfig;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$H_PO86rKewgE36E4TOh94tHY588(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/sec/internal/google/SipTransportNotifier;->lambda$updateAdhocProfile$25(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Kx6NcAHaWxvPJw7M7tv5myEXOkU(Lcom/sec/ims/settings/ImsProfile;Lcom/sec/internal/google/ImsSipDelegate;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/internal/google/SipTransportNotifier;->lambda$onRegistrationChanged$14(Lcom/sec/ims/settings/ImsProfile;Lcom/sec/internal/google/ImsSipDelegate;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$N2DxLAjU89PYzgMCa2ckRvOnCZs(Lcom/sec/internal/google/SipTransportNotifier;ILandroid/telephony/ims/DelegateRequest;Lcom/sec/internal/google/ImsSipDelegate;Ljava/util/concurrent/Executor;Ljava/util/Set;Ljava/util/Set;Ljava/util/List;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/sec/internal/google/SipTransportNotifier;->lambda$addSipDelegate$6(ILandroid/telephony/ims/DelegateRequest;Lcom/sec/internal/google/ImsSipDelegate;Ljava/util/concurrent/Executor;Ljava/util/Set;Ljava/util/Set;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OcNcZ6GRbHE3FH6jNNacgErXmxg(Lcom/sec/internal/google/SipTransportNotifier;Landroid/telephony/ims/aidl/ISipDelegate;ILjava/util/concurrent/Executor;ILjava/util/List;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/sec/internal/google/SipTransportNotifier;->lambda$removeSipDelegate$10(Landroid/telephony/ims/aidl/ISipDelegate;ILjava/util/concurrent/Executor;ILjava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RJHjOe3zgA_nzzZbm18KLdMSUI8(Lcom/sec/internal/google/SipDelegateConfig;Ljava/util/Set;Lcom/sec/internal/google/ImsSipDelegate;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/internal/google/SipTransportNotifier;->lambda$onRegistrationChanged$15(Lcom/sec/internal/google/SipDelegateConfig;Ljava/util/Set;Lcom/sec/internal/google/ImsSipDelegate;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RnuNdLfhGTDuUVu2wThq5ZYmcjk(Lcom/sec/internal/google/ImsSipDelegate;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/internal/google/SipTransportNotifier;->lambda$onRegistrationChanged$16(Lcom/sec/internal/google/ImsSipDelegate;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TcFGTdqUmiS6VhBFXwAjWUqGNbU(Lcom/sec/internal/google/SipTransportNotifier;ILcom/sec/internal/google/ImsSipDelegate;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/google/SipTransportNotifier;->lambda$removeSipDelegate$9(ILcom/sec/internal/google/ImsSipDelegate;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$XTWi311WbXjIUPsfQxIr2XpBaAI(Lcom/sec/internal/google/ImsSipDelegate;Ljava/util/Set;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/internal/google/SipTransportNotifier;->lambda$removeSipDelegate$8(Lcom/sec/internal/google/ImsSipDelegate;Ljava/util/Set;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_V6tQqLCLMMrMG3W1tMExiNETu4(Ljava/util/List;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/internal/google/SipTransportNotifier;->lambda$dump$27(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bzct2T9sjKvVWGaIEdpeQZcuh-s(Lcom/sec/internal/constants/ims/SipMsg;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/internal/google/SipTransportNotifier;->lambda$onSipMessageEvent$12(Lcom/sec/internal/constants/ims/SipMsg;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fzIig451UL-gRn8KK0mWk4jUs_k(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/sec/internal/google/SipTransportNotifier;->lambda$addSipDelegate$0(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gjeS1QCJRkLJMP1C3f61TVHcDrk(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/sec/internal/google/SipTransportNotifier;->lambda$updateAdhocProfile$24(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$hAkuQbjYlTyCqIbKkpVOwfbgaZo(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/sec/internal/google/SipTransportNotifier;->lambda$updateAdhocProfile$23(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$h_rzG_enxyG1qbIynZ4aU_etGBw(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/sec/internal/google/SipTransportNotifier;->lambda$updateAdhocProfile$26(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$lQ-gqyfW8ZRNJ8d-9J326tSy8nc(Lcom/sec/internal/google/SipTransportNotifier;ILandroid/telephony/ims/DelegateRequest;Ljava/util/Set;Ljava/util/Set;Lcom/sec/internal/google/ImsSipDelegate;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/sec/internal/google/SipTransportNotifier;->lambda$addSipDelegate$5(ILandroid/telephony/ims/DelegateRequest;Ljava/util/Set;Ljava/util/Set;Lcom/sec/internal/google/ImsSipDelegate;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oH5-p1Mh-95Xz13UeERZYECoQIM(Landroid/telephony/ims/aidl/ISipDelegate;Lcom/sec/internal/google/ImsSipDelegate;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/internal/google/SipTransportNotifier;->lambda$removeSipDelegate$7(Landroid/telephony/ims/aidl/ISipDelegate;Lcom/sec/internal/google/ImsSipDelegate;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$pIdqYsAEpmv9gRE0uN8zcUQYaUc(Lcom/sec/internal/google/SipDelegateConfig;Lcom/sec/internal/google/ImsSipDelegate;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/internal/google/SipTransportNotifier;->lambda$onPaniUpdated$21(Lcom/sec/internal/google/SipDelegateConfig;Lcom/sec/internal/google/ImsSipDelegate;)V

    return-void
.end method

.method public static synthetic $r8$lambda$udTUCQNUX8B66z22_6iawvyxOFY(Ljava/util/Set;Lcom/sec/internal/google/RegistrationTracker;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/internal/google/SipTransportNotifier;->lambda$addSipDelegate$2(Ljava/util/Set;Lcom/sec/internal/google/RegistrationTracker;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$vTdI9lDJQkJNTG9lK4nXT6WdvS0(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/google/SipDelegateConfig;)Lcom/sec/internal/google/SipDelegateConfig$Builder;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/internal/google/SipTransportNotifier;->lambda$onPaniUpdated$19(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/google/SipDelegateConfig;)Lcom/sec/internal/google/SipDelegateConfig$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$wVY7hiWorQuGMUsUgQkPwDbli8Q(ILjava/util/List;Lcom/sec/internal/google/SipDelegateConfig;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/internal/google/SipTransportNotifier;->lambda$onPaniUpdated$22(ILjava/util/List;Lcom/sec/internal/google/SipDelegateConfig;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zs7HahiUw6BZvQ4EPhGhOowDlyU(Lcom/sec/internal/google/SipTransportNotifier;Landroid/telephony/ims/DelegateRequest;Ljava/util/Set;Ljava/util/Set;Lcom/sec/internal/google/ImsSipDelegate;ILjava/util/Set;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/sec/internal/google/SipTransportNotifier;->lambda$addSipDelegate$4(Landroid/telephony/ims/DelegateRequest;Ljava/util/Set;Ljava/util/Set;Lcom/sec/internal/google/ImsSipDelegate;ILjava/util/Set;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/handler/ISipDialogInterface;)V
    .locals 3

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/google/SipTransportNotifier;->mDelegates:Ljava/util/Map;

    .line 56
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/google/SipTransportNotifier;->mAllocatedTags:Ljava/util/Map;

    .line 57
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/sec/internal/google/SipTransportNotifier;->mRegTrackers:Ljava/util/Map;

    .line 59
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/sec/internal/google/SipTransportNotifier;->mAdhocDomains:Ljava/util/Map;

    .line 62
    iput-object p1, p0, Lcom/sec/internal/google/SipTransportNotifier;->mContext:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lcom/sec/internal/google/SipTransportNotifier;->mRawSipInterface:Lcom/sec/internal/interfaces/ims/core/handler/ISipDialogInterface;

    const/4 p0, 0x0

    .line 65
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    invoke-interface {v2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    .line 69
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    invoke-interface {v2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private isAdhocProfileRegister(ILcom/sec/internal/constants/ims/SipMsg;)Z
    .locals 2

    .line 226
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/SipMsg;->getStartLine()Lcom/sec/internal/constants/ims/SipMsg$StartLine;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/SipMsg$StartLine;->asRequestLine()Lcom/sec/internal/constants/ims/SipMsg$RequestLine;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/SipMsg$RequestLine;->getUri()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string v1, "isAdhocProfileRegister: domain from StartLine is [%s]"

    .line 227
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SipTransportNotifier"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object p0, p0, Lcom/sec/internal/google/SipTransportNotifier;->mAdhocDomains:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda7;

    invoke-direct {p1, p2}, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda7;-><init>(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$addSipDelegate$0(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V
    .locals 0

    .line 127
    invoke-interface {p0, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 128
    invoke-interface {p1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 130
    :cond_0
    new-instance p0, Landroid/telephony/ims/FeatureTagState;

    const/4 p1, 0x1

    invoke-direct {p0, p3, p1}, Landroid/telephony/ims/FeatureTagState;-><init>(Ljava/lang/String;I)V

    invoke-interface {p2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private static synthetic lambda$addSipDelegate$1(Lcom/sec/internal/google/RegistrationTracker;)Z
    .locals 1

    .line 138
    invoke-virtual {p0}, Lcom/sec/internal/google/RegistrationTracker;->getState()Lcom/sec/internal/google/RegistrationTracker$State;

    move-result-object p0

    sget-object v0, Lcom/sec/internal/google/RegistrationTracker$State;->REGISTERED:Lcom/sec/internal/google/RegistrationTracker$State;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$addSipDelegate$2(Ljava/util/Set;Lcom/sec/internal/google/RegistrationTracker;)Z
    .locals 0

    .line 139
    invoke-virtual {p1}, Lcom/sec/internal/google/RegistrationTracker;->getFeatureTags()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$addSipDelegate$3(ILcom/sec/internal/google/ImsSipDelegate;Lcom/sec/internal/google/RegistrationTracker;)V
    .locals 2

    const-string v0, "SipTransportNotifier"

    const-string v1, "Already registered. notify config and registration"

    .line 141
    invoke-static {v0, p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Lcom/sec/internal/google/RegistrationTracker;->getRegisteredDelegateConfig()Lcom/sec/internal/google/SipDelegateConfig;

    move-result-object p0

    .line 143
    invoke-virtual {p2}, Lcom/sec/internal/google/RegistrationTracker;->getFeatureTags()Ljava/util/Set;

    move-result-object p2

    .line 142
    invoke-virtual {p1, p0, p2}, Lcom/sec/internal/google/ImsSipDelegate;->onImsConfigFeatureTagChanged(Lcom/sec/internal/google/SipDelegateConfig;Ljava/util/Set;)V

    return-void
.end method

.method private synthetic lambda$addSipDelegate$4(Landroid/telephony/ims/DelegateRequest;Ljava/util/Set;Ljava/util/Set;Lcom/sec/internal/google/ImsSipDelegate;ILjava/util/Set;)V
    .locals 1

    .line 126
    invoke-virtual {p1}, Landroid/telephony/ims/DelegateRequest;->getFeatureTags()Ljava/util/Set;

    move-result-object p1

    new-instance v0, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda2;

    invoke-direct {v0, p6, p2, p3}, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda2;-><init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    invoke-interface {p1, v0}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 133
    invoke-interface {p6, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 135
    invoke-virtual {p4, p2, p3}, Lcom/sec/internal/google/ImsSipDelegate;->notifyCreated(Ljava/util/Set;Ljava/util/Set;)V

    .line 137
    iget-object p0, p0, Lcom/sec/internal/google/SipTransportNotifier;->mRegTrackers:Ljava/util/Map;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/google/RegistrationTracker;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda3;

    invoke-direct {p1}, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda3;-><init>()V

    .line 138
    invoke-virtual {p0, p1}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda4;

    invoke-direct {p1, p2}, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda4;-><init>(Ljava/util/Set;)V

    .line 139
    invoke-virtual {p0, p1}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda5;

    invoke-direct {p1, p5, p4}, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda5;-><init>(ILcom/sec/internal/google/ImsSipDelegate;)V

    .line 140
    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$addSipDelegate$5(ILandroid/telephony/ims/DelegateRequest;Ljava/util/Set;Ljava/util/Set;Lcom/sec/internal/google/ImsSipDelegate;)V
    .locals 9

    .line 125
    iget-object v0, p0, Lcom/sec/internal/google/SipTransportNotifier;->mAllocatedTags:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v8, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda1;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda1;-><init>(Lcom/sec/internal/google/SipTransportNotifier;Landroid/telephony/ims/DelegateRequest;Ljava/util/Set;Ljava/util/Set;Lcom/sec/internal/google/ImsSipDelegate;I)V

    invoke-virtual {v0, v8}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$addSipDelegate$6(ILandroid/telephony/ims/DelegateRequest;Lcom/sec/internal/google/ImsSipDelegate;Ljava/util/concurrent/Executor;Ljava/util/Set;Ljava/util/Set;Ljava/util/List;)V
    .locals 10

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addSipDelegate: request "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v1, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SipTransportNotifier"

    move v4, p1

    invoke-static {v2, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    move-object v0, p3

    move-object/from16 v2, p7

    .line 122
    invoke-interface {v2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    new-instance v9, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda8;

    move-object v2, v9

    move-object v3, p0

    move-object v5, p2

    move-object v6, p5

    move-object/from16 v7, p6

    move-object v8, p3

    invoke-direct/range {v2 .. v8}, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda8;-><init>(Lcom/sec/internal/google/SipTransportNotifier;ILandroid/telephony/ims/DelegateRequest;Ljava/util/Set;Ljava/util/Set;Lcom/sec/internal/google/ImsSipDelegate;)V

    move-object v0, p4

    invoke-interface {p4, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$dump$27(Ljava/util/List;)V
    .locals 2

    .line 403
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SipTransportNotifier"

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private static synthetic lambda$isAdhocProfileRegister$13(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/Boolean;
    .locals 0

    .line 230
    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$notifyDeregistering$17(Lcom/sec/ims/settings/ImsProfile;Lcom/sec/internal/google/ImsSipDelegate;)Z
    .locals 0

    .line 296
    invoke-virtual {p1}, Lcom/sec/internal/google/ImsSipDelegate;->getFeatureTags()Ljava/util/Set;

    move-result-object p1

    .line 297
    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getAllServiceSetFromAllNetwork()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/internal/constants/ims/SipMsg;->getTagsForServices(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    .line 296
    invoke-interface {p1, p0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$onPaniUpdated$19(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/google/SipDelegateConfig;)Lcom/sec/internal/google/SipDelegateConfig$Builder;
    .locals 1

    .line 345
    invoke-virtual {p2}, Lcom/sec/internal/google/SipDelegateConfig;->getPaniHeader()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 346
    invoke-virtual {p2}, Lcom/sec/internal/google/SipDelegateConfig;->getLastPaniHeader()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 349
    :cond_0
    invoke-virtual {p2}, Lcom/sec/internal/google/SipDelegateConfig;->getBuilder()Lcom/sec/internal/google/SipDelegateConfig$Builder;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$onPaniUpdated$20(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/google/SipDelegateConfig$Builder;)Lcom/sec/internal/google/SipDelegateConfig;
    .locals 0

    .line 352
    invoke-virtual {p2, p0}, Lcom/sec/internal/google/SipDelegateConfig$Builder;->setSipPaniHeader(Ljava/lang/String;)Lcom/sec/internal/google/SipDelegateConfig$Builder;

    .line 353
    invoke-virtual {p2, p1}, Lcom/sec/internal/google/SipDelegateConfig$Builder;->setSipPlaniHeader(Ljava/lang/String;)Lcom/sec/internal/google/SipDelegateConfig$Builder;

    .line 354
    invoke-virtual {p2}, Lcom/sec/internal/google/SipDelegateConfig$Builder;->build()Lcom/sec/internal/google/SipDelegateConfig;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$onPaniUpdated$21(Lcom/sec/internal/google/SipDelegateConfig;Lcom/sec/internal/google/ImsSipDelegate;)V
    .locals 0

    .line 358
    invoke-virtual {p1, p0}, Lcom/sec/internal/google/ImsSipDelegate;->notifySipDelegateConfig(Lcom/sec/internal/google/SipDelegateConfig;)V

    return-void
.end method

.method private static synthetic lambda$onPaniUpdated$22(ILjava/util/List;Lcom/sec/internal/google/SipDelegateConfig;)V
    .locals 2

    const-string v0, "SipTransportNotifier"

    const-string v1, "onPaniUpdated: notifySipDelegateConfig"

    .line 357
    invoke-static {v0, p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 358
    new-instance p0, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda29;

    invoke-direct {p0, p2}, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda29;-><init>(Lcom/sec/internal/google/SipDelegateConfig;)V

    invoke-interface {p1, p0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static synthetic lambda$onRegistrationChanged$14(Lcom/sec/ims/settings/ImsProfile;Lcom/sec/internal/google/ImsSipDelegate;)Z
    .locals 0

    .line 259
    invoke-virtual {p1}, Lcom/sec/internal/google/ImsSipDelegate;->getFeatureTags()Ljava/util/Set;

    move-result-object p1

    .line 260
    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getAllServiceSetFromAllNetwork()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/internal/constants/ims/SipMsg;->getTagsForServices(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    .line 259
    invoke-interface {p1, p0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$onRegistrationChanged$15(Lcom/sec/internal/google/SipDelegateConfig;Ljava/util/Set;Lcom/sec/internal/google/ImsSipDelegate;)V
    .locals 0

    .line 265
    invoke-virtual {p2, p0, p1}, Lcom/sec/internal/google/ImsSipDelegate;->onImsConfigFeatureTagChanged(Lcom/sec/internal/google/SipDelegateConfig;Ljava/util/Set;)V

    return-void
.end method

.method private static synthetic lambda$onRegistrationChanged$16(Lcom/sec/internal/google/ImsSipDelegate;)V
    .locals 1

    .line 268
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/google/ImsSipDelegate;->notifyRegistration(Ljava/util/Set;)V

    return-void
.end method

.method private static synthetic lambda$onSipMessageEvent$11(Lcom/sec/internal/constants/ims/SipMsg;Lcom/sec/internal/google/ImsSipDelegate;)V
    .locals 0

    .line 192
    invoke-virtual {p1, p0}, Lcom/sec/internal/google/ImsSipDelegate;->notifySipMessage(Lcom/sec/internal/constants/ims/SipMsg;)V

    return-void
.end method

.method private static synthetic lambda$onSipMessageEvent$12(Lcom/sec/internal/constants/ims/SipMsg;Ljava/util/List;)V
    .locals 1

    .line 192
    new-instance v0, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda9;-><init>(Lcom/sec/internal/constants/ims/SipMsg;)V

    invoke-interface {p1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static synthetic lambda$onUpdateRegistrationTimeout$18(Lcom/sec/internal/google/RegistrationTracker;Lcom/sec/internal/google/ImsSipDelegate;)V
    .locals 0

    .line 323
    invoke-virtual {p0}, Lcom/sec/internal/google/RegistrationTracker;->getFeatureTags()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/internal/google/ImsSipDelegate;->notifyRegistration(Ljava/util/Set;)V

    return-void
.end method

.method private synthetic lambda$removeSipDelegate$10(Landroid/telephony/ims/aidl/ISipDelegate;ILjava/util/concurrent/Executor;ILjava/util/List;)V
    .locals 2

    .line 155
    invoke-interface {p5}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda10;

    invoke-direct {v1, p1}, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda10;-><init>(Landroid/telephony/ims/aidl/ISipDelegate;)V

    .line 156
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    const/4 v0, 0x0

    .line 157
    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/google/ImsSipDelegate;

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeSipDelegate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SipTransportNotifier"

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-eqz p1, :cond_0

    .line 161
    new-instance v0, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, p2, p1, p4}, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda11;-><init>(Lcom/sec/internal/google/SipTransportNotifier;ILcom/sec/internal/google/ImsSipDelegate;I)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 166
    invoke-interface {p5, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private static synthetic lambda$removeSipDelegate$7(Landroid/telephony/ims/aidl/ISipDelegate;Lcom/sec/internal/google/ImsSipDelegate;)Z
    .locals 0

    .line 156
    invoke-virtual {p1}, Lcom/sec/internal/google/ImsSipDelegate;->getLocalSipDelegate()Landroid/telephony/ims/aidl/ISipDelegate;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$removeSipDelegate$8(Lcom/sec/internal/google/ImsSipDelegate;Ljava/util/Set;)V
    .locals 0

    .line 163
    invoke-virtual {p0}, Lcom/sec/internal/google/ImsSipDelegate;->getFeatureTags()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private synthetic lambda$removeSipDelegate$9(ILcom/sec/internal/google/ImsSipDelegate;I)V
    .locals 0

    .line 162
    iget-object p0, p0, Lcom/sec/internal/google/SipTransportNotifier;->mAllocatedTags:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda22;

    invoke-direct {p1, p2}, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda22;-><init>(Lcom/sec/internal/google/ImsSipDelegate;)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 164
    invoke-virtual {p2, p3}, Lcom/sec/internal/google/ImsSipDelegate;->notifyDestroy(I)V

    return-void
.end method

.method private static synthetic lambda$updateAdhocProfile$23(Ljava/lang/String;)Z
    .locals 0

    .line 377
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic lambda$updateAdhocProfile$24(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "@"

    .line 378
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$updateAdhocProfile$25(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "sip"

    .line 378
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$updateAdhocProfile$26(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "@"

    .line 379
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addSipDelegate(Ljava/util/concurrent/Executor;ILandroid/telephony/ims/DelegateRequest;Landroid/telephony/ims/aidl/ISipDelegateStateCallback;Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;)V
    .locals 10

    .line 114
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .line 115
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    .line 116
    new-instance v8, Lcom/sec/internal/google/ImsSipDelegate;

    move-object v0, v8

    move v1, p2

    move-object v2, p0

    move-object v3, p1

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/google/ImsSipDelegate;-><init>(ILcom/sec/internal/interfaces/google/ISipTransportNotifier;Ljava/util/concurrent/Executor;Landroid/telephony/ims/aidl/ISipDelegateStateCallback;Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;)V

    .line 118
    iget-object p4, p0, Lcom/sec/internal/google/SipTransportNotifier;->mDelegates:Ljava/util/Map;

    monitor-enter p4

    .line 119
    :try_start_0
    iget-object p5, p0, Lcom/sec/internal/google/SipTransportNotifier;->mDelegates:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/util/List;

    invoke-static {p5}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p5

    new-instance v9, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda18;

    move-object v0, v9

    move-object v1, p0

    move v2, p2

    move-object v3, p3

    move-object v4, v8

    move-object v5, p1

    invoke-direct/range {v0 .. v7}, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda18;-><init>(Lcom/sec/internal/google/SipTransportNotifier;ILandroid/telephony/ims/DelegateRequest;Lcom/sec/internal/google/ImsSipDelegate;Ljava/util/concurrent/Executor;Ljava/util/Set;Ljava/util/Set;)V

    invoke-virtual {p5, v9}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 147
    monitor-exit p4

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public dump()V
    .locals 9

    const-string v0, "SipTransportNotifier"

    .line 395
    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->increaseIndent(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    .line 396
    :goto_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    const-string v2, "SipTransportNotifier"

    const-string v3, "Dump of SipTransportNotifier:"

    .line 397
    invoke-static {v2, v1, v3}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;ILjava/lang/String;)V

    const-string v2, "SipTransportNotifier"

    .line 398
    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->increaseIndent(Ljava/lang/String;)V

    const-string v2, "SipTransportNotifier"

    .line 399
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "Allocated tags: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/internal/google/SipTransportNotifier;->mAllocatedTags:Ljava/util/Map;

    .line 400
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v0

    .line 399
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;ILjava/lang/String;)V

    .line 401
    iget-object v2, p0, Lcom/sec/internal/google/SipTransportNotifier;->mDelegates:Ljava/util/Map;

    monitor-enter v2

    .line 402
    :try_start_0
    iget-object v3, p0, Lcom/sec/internal/google/SipTransportNotifier;->mDelegates:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda17;

    invoke-direct {v4}, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda17;-><init>()V

    .line 403
    invoke-virtual {v3, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 404
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "SipTransportNotifier"

    .line 405
    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->decreaseIndent(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 404
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    const-string p0, "SipTransportNotifier"

    .line 407
    invoke-static {p0}, Lcom/sec/internal/log/IMSLog;->decreaseIndent(Ljava/lang/String;)V

    return-void
.end method

.method public getAllocatedFeatureTags(I)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 91
    iget-object p0, p0, Lcom/sec/internal/google/SipTransportNotifier;->mAllocatedTags:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public getRegisteredFeatureTags(I)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 328
    iget-object p0, p0, Lcom/sec/internal/google/SipTransportNotifier;->mRegTrackers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/google/RegistrationTracker;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda30;

    invoke-direct {p1}, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda30;-><init>()V

    .line 329
    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda3;

    invoke-direct {p1}, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public getServiceList(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 95
    invoke-virtual {p0, p1}, Lcom/sec/internal/google/SipTransportNotifier;->getAllocatedFeatureTags(I)Ljava/util/Set;

    move-result-object p0

    .line 96
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 97
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 98
    invoke-static {v0}, Lcom/sec/internal/constants/ims/SipMsg;->getServicefromTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 99
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 100
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getServiceList feature : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", service : "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SipTransportNotifier"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public hasSipDelegate(I)Z
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/sec/internal/google/SipTransportNotifier;->mDelegates:Ljava/util/Map;

    monitor-enter v0

    .line 109
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/google/SipTransportNotifier;->mDelegates:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 110
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public init()V
    .locals 4

    .line 75
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SipTransportNotifier-RawSipHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/internal/google/SipTransportNotifier;->mRawSipHandlerThread:Landroid/os/HandlerThread;

    .line 76
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 77
    new-instance v0, Lcom/sec/internal/google/SipTransportNotifier$1;

    iget-object v1, p0, Lcom/sec/internal/google/SipTransportNotifier;->mRawSipHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/google/SipTransportNotifier$1;-><init>(Lcom/sec/internal/google/SipTransportNotifier;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/internal/google/SipTransportNotifier;->mRawSipHandler:Landroid/os/Handler;

    .line 85
    iget-object v1, p0, Lcom/sec/internal/google/SipTransportNotifier;->mRawSipInterface:Lcom/sec/internal/interfaces/ims/core/handler/ISipDialogInterface;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v1, v0, v2, v3}, Lcom/sec/internal/interfaces/ims/core/handler/ISipDialogInterface;->registerForIncomingMessages(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 86
    iget-object v0, p0, Lcom/sec/internal/google/SipTransportNotifier;->mRawSipInterface:Lcom/sec/internal/interfaces/ims/core/handler/ISipDialogInterface;

    iget-object p0, p0, Lcom/sec/internal/google/SipTransportNotifier;->mRawSipHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1, v3}, Lcom/sec/internal/interfaces/ims/core/handler/ISipDialogInterface;->registerForOutgoingMessages(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public notifyDeregistering(Lcom/sec/ims/ImsRegistration;)V
    .locals 4

    .line 281
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    .line 282
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    const-string v1, "SipTransportNotifier"

    .line 283
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyDeregistering: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 285
    iget-object v1, p0, Lcom/sec/internal/google/SipTransportNotifier;->mRegTrackers:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/google/RegistrationTracker;

    if-nez v1, :cond_0

    const-string p0, "SipTransportNotifier"

    const-string p1, "onRegistrationChanged: No RegistrationTracker!!"

    .line 287
    invoke-static {p0, v0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 291
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/google/SipTransportNotifier;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->isImsSingleRegiRequired(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 292
    iget-object v1, p0, Lcom/sec/internal/google/SipTransportNotifier;->mDelegates:Ljava/util/Map;

    monitor-enter v1

    .line 293
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/google/SipTransportNotifier;->mDelegates:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 294
    invoke-static {p0}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 295
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda23;

    invoke-direct {v0, p1}, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda23;-><init>(Lcom/sec/ims/settings/ImsProfile;)V

    .line 296
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda24;

    invoke-direct {p1}, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda24;-><init>()V

    .line 298
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 300
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_0
    return-void
.end method

.method public onMessageSendFailure(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public onPaniUpdated(ILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 334
    iget-object v0, p0, Lcom/sec/internal/google/SipTransportNotifier;->mDelegates:Ljava/util/Map;

    monitor-enter v0

    .line 335
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/google/SipTransportNotifier;->mDelegates:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 336
    invoke-static {v1}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 337
    monitor-exit v0

    return-void

    :cond_0
    const-string v2, "SipTransportNotifier"

    .line 340
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "onPaniUpdated: pani=%s, last pani=%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    const/4 v6, 0x1

    aput-object p3, v5, v6

    .line 341
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 340
    invoke-static {v2, p1, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 342
    iget-object p0, p0, Lcom/sec/internal/google/SipTransportNotifier;->mRegTrackers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/google/RegistrationTracker;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v2, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda12;

    invoke-direct {v2}, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda12;-><init>()V

    .line 343
    invoke-virtual {p0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v2, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda13;

    invoke-direct {v2, p2, p3}, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda13;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    invoke-virtual {p0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v2, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda14;

    invoke-direct {v2, p2, p3}, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda14;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    invoke-virtual {p0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance p2, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda15;

    invoke-direct {p2, p1, v1}, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda15;-><init>(ILjava/util/List;)V

    .line 356
    invoke-virtual {p0, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 360
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method onRegistrationChanged(Lcom/sec/ims/ImsRegistration;ZLcom/sec/ims/ImsRegistrationError;)V
    .locals 5

    .line 239
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p3

    .line 240
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    const-string v1, "SipTransportNotifier"

    .line 241
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

    invoke-static {v1, p3, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 242
    iget-object v1, p0, Lcom/sec/internal/google/SipTransportNotifier;->mRegTrackers:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/google/RegistrationTracker;

    if-nez v1, :cond_0

    const-string p0, "SipTransportNotifier"

    const-string p1, "onRegistrationChanged: No RegistrationTracker!!"

    .line 244
    invoke-static {p0, p3, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 248
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/google/SipTransportNotifier;->mContext:Landroid/content/Context;

    invoke-static {v2, p3}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->isImsSingleRegiRequired(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 249
    iget-object v2, p0, Lcom/sec/internal/google/SipTransportNotifier;->mDelegates:Ljava/util/Map;

    monitor-enter v2

    .line 250
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/google/SipTransportNotifier;->mDelegates:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p2, :cond_1

    .line 253
    invoke-virtual {v1, p1}, Lcom/sec/internal/google/RegistrationTracker;->onRegistrationDone(Lcom/sec/ims/ImsRegistration;)Lcom/sec/internal/google/SipDelegateConfig;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 256
    :goto_0
    invoke-static {p0}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 258
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p3, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda19;

    invoke-direct {p3, v0}, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda19;-><init>(Lcom/sec/ims/settings/ImsProfile;)V

    invoke-interface {p0, p3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    if-eqz p2, :cond_2

    .line 262
    invoke-virtual {v1}, Lcom/sec/internal/google/RegistrationTracker;->getFeatureTags()Ljava/util/Set;

    move-result-object p3

    const-string v0, "SipTransportNotifier"

    .line 263
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRegistrationChanged: registered tags: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    new-instance v0, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda20;

    invoke-direct {v0, p1, p3}, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda20;-><init>(Lcom/sec/internal/google/SipDelegateConfig;Ljava/util/Set;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_1

    .line 267
    :cond_2
    new-instance p1, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda21;

    invoke-direct {p1}, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda21;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_1

    :cond_3
    const-string p0, "SipTransportNotifier"

    const-string p1, "onRegistrationChanged: No SipDelegate!"

    .line 271
    invoke-static {p0, p3, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 273
    :goto_1
    monitor-exit v2

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 276
    :cond_4
    :goto_2
    invoke-virtual {v1, p2}, Lcom/sec/internal/google/RegistrationTracker;->updateState(Z)V

    return-void
.end method

.method onSipMessageEvent(IILjava/lang/String;[B)V
    .locals 2

    .line 177
    new-instance v0, Lcom/sec/internal/constants/ims/SipMsg;

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {v0, p3, p1, p4}, Lcom/sec/internal/constants/ims/SipMsg;-><init>(Ljava/lang/String;Z[B)V

    .line 178
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/SipMsg;->isWellFormed()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p0, "SipTransportNotifier"

    .line 179
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onSipMessageEvent: Wrong SIP message! SIP Message = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/SipMsg;->getStartLine()Lcom/sec/internal/constants/ims/SipMsg$StartLine;

    move-result-object p3

    invoke-static {p3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p3

    new-instance p4, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda0;

    invoke-direct {p4}, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p3, p4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p3

    const-string p4, "Unknown!"

    invoke-virtual {p3, p4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 179
    invoke-static {p0, p2, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 185
    :cond_1
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/SipMsg;->isRegister()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 186
    invoke-virtual {p0, p2, v0}, Lcom/sec/internal/google/SipTransportNotifier;->onSipRegisterTransaction(ILcom/sec/internal/constants/ims/SipMsg;)V

    return-void

    .line 190
    :cond_2
    iget-object p1, p0, Lcom/sec/internal/google/SipTransportNotifier;->mDelegates:Ljava/util/Map;

    monitor-enter p1

    .line 191
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/google/SipTransportNotifier;->mDelegates:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p2, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda6;

    invoke-direct {p2, v0}, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda6;-><init>(Lcom/sec/internal/constants/ims/SipMsg;)V

    invoke-virtual {p0, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 193
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method onSipRegisterTransaction(ILcom/sec/internal/constants/ims/SipMsg;)V
    .locals 5

    .line 198
    iget-object v0, p0, Lcom/sec/internal/google/SipTransportNotifier;->mRegTrackers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/google/RegistrationTracker;

    .line 199
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/SipMsg;->getCallIds()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 200
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/SipMsg;->getFeatureTags()Ljava/util/Set;

    move-result-object v2

    .line 202
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/SipMsg;->isOutGoing()Z

    move-result v3

    const-string v4, "SipTransportNotifier"

    if-eqz v3, :cond_1

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/SipMsg;->isContactUriHasSos()Z

    move-result v3

    if-nez v3, :cond_0

    .line 203
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/google/SipTransportNotifier;->isAdhocProfileRegister(ILcom/sec/internal/constants/ims/SipMsg;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 204
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 205
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onSipRegisterTransaction: Ignore ("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "), Call-ID: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    if-nez v0, :cond_2

    .line 210
    new-instance v0, Lcom/sec/internal/google/RegistrationTracker;

    iget-object v2, p0, Lcom/sec/internal/google/SipTransportNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/SipMsg;->getFeatureTags()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v0, v2, v1, v3}, Lcom/sec/internal/google/RegistrationTracker;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;)V

    .line 211
    iget-object p0, p0, Lcom/sec/internal/google/SipTransportNotifier;->mRegTrackers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 213
    :cond_2
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/SipMsg;->isOutGoing()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    .line 214
    invoke-virtual {v0, v1}, Lcom/sec/internal/google/RegistrationTracker;->setCallId(Ljava/lang/String;)V

    goto :goto_0

    .line 215
    :cond_3
    invoke-virtual {v0}, Lcom/sec/internal/google/RegistrationTracker;->getCallId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    .line 216
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onSipRegisterTransaction: Ignore this reg. Call-ID: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 221
    :cond_4
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSipRegisterTransaction: Find matched tracker. Update "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-virtual {v0, p2, p1}, Lcom/sec/internal/google/RegistrationTracker;->updateState(Lcom/sec/internal/constants/ims/SipMsg;I)V

    return-void
.end method

.method public onUpdateRegistrationTimeout(I)V
    .locals 3

    .line 310
    iget-object v0, p0, Lcom/sec/internal/google/SipTransportNotifier;->mRegTrackers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/google/RegistrationTracker;

    if-nez v0, :cond_0

    const-string p0, "SipTransportNotifier"

    const-string v0, "onUpdateRegistrationFailed: No RegistrationTracker!!"

    .line 312
    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 316
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/google/SipTransportNotifier;->mDelegates:Ljava/util/Map;

    monitor-enter v1

    .line 317
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/google/SipTransportNotifier;->mDelegates:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 318
    invoke-static {p0}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p0, "SipTransportNotifier"

    const-string v0, "onUpdateRegistrationFailed: No SipDelegate!"

    .line 319
    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 320
    monitor-exit v1

    return-void

    .line 323
    :cond_1
    new-instance p1, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda0;

    invoke-direct {p1, v0}, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/google/RegistrationTracker;)V

    invoke-interface {p0, p1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 324
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeSipDelegate(Ljava/util/concurrent/Executor;ILandroid/telephony/ims/aidl/ISipDelegate;I)V
    .locals 9

    .line 151
    iget-object v0, p0, Lcom/sec/internal/google/SipTransportNotifier;->mDelegates:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    const-string v1, "SipTransportNotifier"

    .line 152
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeSipDelegate: reason code ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p2, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 154
    iget-object v1, p0, Lcom/sec/internal/google/SipTransportNotifier;->mDelegates:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v8, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda16;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p3

    move v5, p2

    move-object v6, p1

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda16;-><init>(Lcom/sec/internal/google/SipTransportNotifier;Landroid/telephony/ims/aidl/ISipDelegate;ILjava/util/concurrent/Executor;I)V

    invoke-virtual {v1, v8}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 169
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public sendSip(ILjava/lang/String;Landroid/os/Message;)V
    .locals 0

    .line 173
    iget-object p0, p0, Lcom/sec/internal/google/SipTransportNotifier;->mRawSipInterface:Lcom/sec/internal/interfaces/ims/core/handler/ISipDialogInterface;

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/internal/interfaces/ims/core/handler/ISipDialogInterface;->sendSip(ILjava/lang/String;Landroid/os/Message;)Z

    return-void
.end method

.method public updateAdhocProfile(ILcom/sec/ims/settings/ImsProfile;Z)V
    .locals 2

    .line 365
    iget-object p0, p0, Lcom/sec/internal/google/SipTransportNotifier;->mAdhocDomains:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    .line 371
    invoke-virtual {p2}, Lcom/sec/ims/settings/ImsProfile;->isSamsungMdmnEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez p0, :cond_0

    goto :goto_0

    .line 375
    :cond_0
    invoke-virtual {p2}, Lcom/sec/ims/settings/ImsProfile;->getDomain()Ljava/lang/String;

    move-result-object v0

    .line 376
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 377
    invoke-virtual {p2}, Lcom/sec/ims/settings/ImsProfile;->getImpuList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda25;

    invoke-direct {v1}, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda25;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda26;

    invoke-direct {v1}, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda26;-><init>()V

    .line 378
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda27;

    invoke-direct {v1}, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda27;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda28;

    invoke-direct {v1}, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda28;-><init>()V

    .line 379
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 382
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 383
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "updateAdhocProfile: No domain for "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "SipTransportNotifier"

    invoke-static {p2, p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_2
    if-eqz p3, :cond_3

    .line 388
    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 390
    :cond_3
    invoke-interface {p0, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_4
    :goto_0
    return-void
.end method
