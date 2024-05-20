.class public Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;
.super Ljava/lang/Object;
.source "ImsCallSessionManager.java"


# static fields
.field private static final INVALID_PHONE_ID:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "ImsCallSessionManager"


# instance fields
.field private mImsCallSessionBuilder:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;

.field private mIncomingCallSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

.field private mIncomingCallSession2:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

.field private final mNetworkStateListener:Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;

.field private mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

.field private mPendingOutgoingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

.field private final mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

.field private mSessionFactory:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionFactory;

.field private final mSessionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;",
            ">;"
        }
    .end annotation
.end field

.field private mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

.field private final mUnmodifiableSessionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;",
            ">;"
        }
    .end annotation
.end field

.field private mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;


# direct methods
.method public static synthetic $r8$lambda$0fdqJl2eZPlWhvv3gQ69kxV5FV8(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)Z
    .locals 0

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->lambda$getEpsFbCallCount$4(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$5jW9R57jOOfcS4yHtI2kysb8ZL8(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)Z
    .locals 0

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->lambda$getDowngradedCallCount$2(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$JrhQcRmlJGbeq76s8zevgX2lwcs(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)Z
    .locals 0

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->lambda$getNrSaCallCount$5(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$h_OXJehMBeqM_P3s4xIvDX-1Erk(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)Z
    .locals 0

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->lambda$getEpdgCallCount$6(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$kGkJzMjmf9Dz3MihTNHs_YHKmZw(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)Z
    .locals 0

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->lambda$getVideoCallCount$0(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$sYfPkmxDCwEQbdwGrT7vux3mWcY(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)Z
    .locals 0

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->lambda$getE911CallCount$3(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$uuf8Ohvw0kIN6yxJ2CUn6cs7mNM(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)Z
    .locals 0

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->lambda$getDowngradedCallCount$1(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSessionMap(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/interfaces/ims/core/IPdnController;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Landroid/os/Looper;)V
    .locals 10

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    .line 60
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mUnmodifiableSessionMap:Ljava/util/Map;

    const/4 v1, 0x0

    .line 69
    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mIncomingCallSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 70
    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mIncomingCallSession2:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 71
    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mPendingOutgoingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 85
    new-instance v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$1;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$1;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mNetworkStateListener:Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;

    .line 75
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    .line 76
    new-instance v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionFactory;

    invoke-direct {v2, p1, p5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionFactory;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionFactory:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionFactory;

    .line 77
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 78
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    .line 79
    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    .line 80
    invoke-interface {p3, v1}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->registerForNetworkState(Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;)V

    .line 81
    new-instance v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;

    move-object v3, v1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-direct/range {v3 .. v9}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/interfaces/ims/core/IPdnController;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mImsCallSessionBuilder:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;

    .line 82
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private getActiveCallSession(I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;",
            ">;"
        }
    .end annotation

    .line 435
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 436
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    if-eqz v1, :cond_0

    const/4 v2, -0x1

    if-eq p1, v2, :cond_1

    .line 437
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v2

    if-eq v2, p1, :cond_1

    goto :goto_0

    .line 441
    :cond_1
    :try_start_0
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->Idle:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/helper/ImsCallUtil;->isEndCallState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 444
    :cond_2
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_0

    .line 447
    :cond_3
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 449
    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getActiveCallSession : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private ignoreCsfbByEpsOnlyNw(Lcom/sec/ims/ImsRegistration;ILcom/sec/internal/constants/Mno;)Z
    .locals 2

    .line 933
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKTTOmcCode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    invoke-interface {v0, p2}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpsOnlyReg(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 934
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    const-string p1, "EPS only registered for KT LTE Preferred model!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    if-eqz p1, :cond_1

    .line 938
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/Mno;->DOCOMO:Lcom/sec/internal/constants/Mno;

    if-eq p3, v0, :cond_1

    .line 939
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getSupportLtePreferred()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    invoke-interface {p0, p2}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpsOnlyReg(I)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 940
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    const-string p1, "EPS only registered for LTE Preferred model!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private isServerSipError(Lcom/sec/ims/util/SipError;)Z
    .locals 1

    .line 1134
    sget-object p0, Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;->ERROR_5XX:Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;

    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;->equals(Lcom/sec/ims/util/SipError;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;->ERROR_6XX:Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;

    .line 1135
    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;->equals(Lcom/sec/ims/util/SipError;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 1136
    invoke-virtual {p1}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result p0

    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->FORBIDDEN:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v0

    if-eq p0, v0, :cond_1

    .line 1137
    invoke-virtual {p1}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result p0

    sget-object p1, Lcom/sec/internal/constants/ims/SipErrorBase;->REQUEST_TIMEOUT:Lcom/sec/ims/util/SipError;

    invoke-virtual {p1}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result p1

    if-ne p0, p1, :cond_0

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

.method private static synthetic lambda$getDowngradedCallCount$1(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)Z
    .locals 0

    .line 477
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result p0

    invoke-static {p0}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic lambda$getDowngradedCallCount$2(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)Z
    .locals 0

    .line 478
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/volte2/data/CallProfile;->isDowngradedVideoCall()Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getE911CallCount$3(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)Z
    .locals 0

    .line 484
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result p0

    invoke-static {p0}, Lcom/sec/internal/helper/ImsCallUtil;->isE911Call(I)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getEpdgCallCount$6(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)Z
    .locals 0

    .line 502
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->isEpdgCall()Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getEpsFbCallCount$4(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)Z
    .locals 0

    .line 490
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getEpsFallback()Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getNrSaCallCount$5(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)Z
    .locals 0

    .line 496
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getIsNrSaMode()Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getVideoCallCount$0(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)Z
    .locals 0

    .line 471
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result p0

    invoke-static {p0}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public addCallSession(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V
    .locals 5

    .line 186
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 188
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v1

    .line 190
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 191
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 192
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v3

    if-eq v3, v1, :cond_2

    .line 193
    :cond_1
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->EndedCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v3, v4, :cond_0

    .line 194
    :cond_2
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 196
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "same CallSession has been found : Session id is:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " And corresponding CallId is:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 196
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 201
    :cond_3
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 205
    :cond_4
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public convertToSessionId(I)I
    .locals 0

    .line 548
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    .line 549
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result p0

    :goto_0
    return p0
.end method

.method public createSession(Landroid/content/Context;Lcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/ImsRegistration;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 182
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mImsCallSessionBuilder:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->createSession(Landroid/content/Context;Lcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/ImsRegistration;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p0

    return-object p0
.end method

.method public endCallByDeregistered(Lcom/sec/ims/ImsRegistration;)V
    .locals 5

    .line 678
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v0

    .line 679
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 681
    :try_start_0
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 682
    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 683
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->IncomingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v2, v3, :cond_1

    const/4 v2, 0x2

    .line 684
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->reject(I)V

    goto :goto_0

    .line 686
    :cond_1
    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "end call "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " by MMTEL deregistered"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getDeregiReason()I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/helper/ImsCallUtil;->convertDeregiReason(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->terminate(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 692
    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "endCallByDeregistered: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    return-void
.end method

.method public endcallByNwHandover(Lcom/sec/ims/ImsRegistration;)V
    .locals 4

    .line 698
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 699
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 704
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->IncomingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    const/4 v3, 0x4

    if-ne v1, v2, :cond_1

    .line 705
    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->reject(I)V

    goto :goto_0

    .line 707
    :cond_1
    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->terminate(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 710
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "endcallByNwHandover: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    return-void
.end method

.method public forceNotifyCurrentCodec()V
    .locals 1

    .line 569
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 570
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->forceNotifyCurrentCodec()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getActiveExtCallCount()I
    .locals 4

    .line 508
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 510
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v2, v3, :cond_1

    iget-boolean v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mIsEstablished:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public getDowngradedCallCount(I)I
    .locals 0

    .line 476
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getActiveCallSession(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$$ExternalSyntheticLambda3;

    invoke-direct {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$$ExternalSyntheticLambda3;-><init>()V

    .line 477
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$$ExternalSyntheticLambda4;

    invoke-direct {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$$ExternalSyntheticLambda4;-><init>()V

    .line 478
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 479
    invoke-interface {p0}, Ljava/util/stream/Stream;->count()J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method public getE911CallCount(I)I
    .locals 0

    .line 483
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getActiveCallSession(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$$ExternalSyntheticLambda5;

    invoke-direct {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$$ExternalSyntheticLambda5;-><init>()V

    .line 484
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 485
    invoke-interface {p0}, Ljava/util/stream/Stream;->count()J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method public getEmergencySession()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;",
            ">;"
        }
    .end annotation

    .line 381
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 382
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 383
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 385
    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/helper/ImsCallUtil;->isE911Call(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 386
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getEmergencySession(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;",
            ">;"
        }
    .end annotation

    .line 394
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 395
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 396
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 398
    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/helper/ImsCallUtil;->isE911Call(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 399
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 400
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getEpdgCallCount(I)I
    .locals 0

    .line 501
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getActiveCallSession(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$$ExternalSyntheticLambda1;-><init>()V

    .line 502
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 503
    invoke-interface {p0}, Ljava/util/stream/Stream;->count()J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method public getEpsFbCallCount(I)I
    .locals 0

    .line 489
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getActiveCallSession(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$$ExternalSyntheticLambda6;

    invoke-direct {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$$ExternalSyntheticLambda6;-><init>()V

    .line 490
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 491
    invoke-interface {p0}, Ljava/util/stream/Stream;->count()J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method public getExtMoCall()Z
    .locals 2

    .line 518
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 519
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v1

    if-nez v1, :cond_0

    .line 520
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/volte2/data/CallProfile;->isMOCall()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getForegroundSession()Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 1

    const/4 v0, -0x1

    .line 244
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getForegroundSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p0

    return-object p0
.end method

.method public getForegroundSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 3

    .line 248
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    .line 249
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    if-eq v1, p1, :cond_1

    goto :goto_0

    .line 253
    :cond_1
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v1, v2, :cond_0

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getImsRegistration(I)Lcom/sec/ims/ImsRegistration;
    .locals 5

    .line 1114
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1118
    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    if-eqz v3, :cond_1

    .line 1119
    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v4

    if-ne v4, p1, :cond_1

    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1120
    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v4

    if-nez v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getIncomingCallSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 0

    if-nez p1, :cond_0

    .line 907
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mIncomingCallSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mIncomingCallSession2:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    :goto_0
    return-object p0
.end method

.method public getIncomingSessionPhoneIdForCmc()I
    .locals 3

    .line 457
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 458
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->IncomingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v1, v2, :cond_0

    .line 459
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public getMergeCallType(IZ)I
    .locals 3

    .line 1162
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 1164
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    .line 1165
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->hasRttCall()Z

    move-result v2

    .line 1166
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->hasVideoCall()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getSupportMergeVideoConference()Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 1168
    :goto_0
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object p1

    if-eqz p0, :cond_2

    .line 1170
    sget-object p0, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-eq p1, p0, :cond_1

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move p0, v0

    goto :goto_2

    :cond_2
    :goto_1
    move p0, v1

    :goto_2
    if-eqz p2, :cond_4

    if-ne p0, v1, :cond_3

    const/4 p0, 0x5

    goto :goto_3

    :cond_3
    if-ne p0, v0, :cond_4

    const/4 p0, 0x6

    :cond_4
    :goto_3
    return p0
.end method

.method public getNrSaCallCount(I)I
    .locals 0

    .line 495
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getActiveCallSession(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$$ExternalSyntheticLambda2;-><init>()V

    .line 496
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 497
    invoke-interface {p0}, Ljava/util/stream/Stream;->count()J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method public getParticipantIdForMerge(II)I
    .locals 2

    .line 1222
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HeldCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSessionByState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Ljava/util/List;

    move-result-object p0

    .line 1223
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    .line 1224
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    const-string p1, "No Hold Call : conference fail"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1228
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 1229
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallId()I

    move-result v1

    if-eq v1, p2, :cond_1

    .line 1230
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallId()I

    move-result v0

    :cond_2
    return v0
.end method

.method public getPhoneIdByCallId(I)I
    .locals 0

    .line 1213
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSessionByCallId(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1215
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getSIPMSGInfo(Lcom/sec/internal/ims/servicemodules/volte2/data/SIPDataEvent;)V
    .locals 3

    .line 861
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 862
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/SIPDataEvent;->getSipMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/SIPDataEvent;->getIsRequest()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->onReceiveSIPMSG(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 2

    .line 277
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 278
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v1

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSessionByCallId(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 0

    .line 286
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    return-object p0
.end method

.method public getSessionByCallType(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;",
            ">;"
        }
    .end annotation

    const/4 v0, -0x1

    .line 325
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSessionByCallType(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSessionByCallType(II)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;",
            ">;"
        }
    .end annotation

    .line 329
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 332
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 333
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 334
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    const/4 v2, -0x1

    if-eq p1, v2, :cond_1

    .line 336
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v2

    if-eq v2, p1, :cond_1

    goto :goto_0

    .line 340
    :cond_1
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 341
    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->isConferenceCall()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_0

    .line 345
    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v2

    if-ne v2, p2, :cond_0

    .line 346
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public getSessionByRegId(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 2

    .line 372
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 373
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v1

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSessionBySipCallId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 2

    if-eqz p1, :cond_1

    .line 291
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 292
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getSipCallId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSessionByState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;",
            ">;"
        }
    .end annotation

    .line 305
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 308
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 309
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 310
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 311
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 312
    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->isConferenceCall()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    const/4 v2, -0x1

    if-eq p1, v2, :cond_2

    .line 313
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v2

    if-eq v2, p1, :cond_2

    goto :goto_0

    .line 316
    :cond_2
    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSessionByState("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v2

    if-ne v2, p2, :cond_0

    .line 318
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public getSessionByState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;",
            ">;"
        }
    .end annotation

    const/4 v0, -0x1

    .line 301
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSessionByState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSessionCount()I
    .locals 0

    .line 211
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    return p0
.end method

.method public getSessionCount(I)I
    .locals 2

    .line 216
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 217
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    if-ne v1, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getSessionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;",
            ">;"
        }
    .end annotation

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 227
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getSessionList(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;",
            ">;"
        }
    .end annotation

    .line 232
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 234
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 235
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 236
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getSessionMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;",
            ">;"
        }
    .end annotation

    .line 208
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    return-object p0
.end method

.method public getTotalCallCount(I)I
    .locals 0

    .line 466
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getActiveCallSession(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getUnmodifiableSessionMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;",
            ">;"
        }
    .end annotation

    .line 1374
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mUnmodifiableSessionMap:Ljava/util/Map;

    return-object p0
.end method

.method public getVideoCallCount(I)I
    .locals 0

    .line 470
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getActiveCallSession(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$$ExternalSyntheticLambda0;-><init>()V

    .line 471
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 472
    invoke-interface {p0}, Ljava/util/stream/Stream;->count()J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method public handleDeregistered(Landroid/content/Context;IILcom/sec/internal/constants/Mno;)V
    .locals 1

    .line 918
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mPendingOutgoingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    if-eqz v0, :cond_1

    .line 919
    invoke-virtual {p4}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne p4, v0, :cond_1

    invoke-static {p1, p2}, Lcom/sec/internal/ims/util/ImsUtil;->isCdmalessEnabled(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x1f7

    if-ne p3, p1, :cond_1

    .line 921
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mPendingOutgoingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->handleRegistrationFailed()V

    const/4 p1, 0x0

    .line 922
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mPendingOutgoingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    :cond_1
    return-void
.end method

.method public handleEpdgHandover(ILcom/sec/ims/ImsRegistration;Lcom/sec/internal/constants/Mno;)V
    .locals 4

    .line 657
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 658
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v2

    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->isE911Call()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 661
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    invoke-interface {v2, p1}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpdgConnected(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 662
    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getEpdgStatus()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    .line 663
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setEpdgState(Z)V

    goto :goto_1

    :cond_2
    if-nez v2, :cond_3

    const/4 v2, 0x0

    .line 665
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setEpdgState(Z)V

    .line 667
    :cond_3
    :goto_1
    sget-object v2, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-eq p3, v2, :cond_4

    sget-object v2, Lcom/sec/internal/constants/Mno;->ROGERS:Lcom/sec/internal/constants/Mno;

    if-ne p3, v2, :cond_0

    .line 669
    :cond_4
    :try_start_0
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->reinvite()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 671
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_5
    return-void
.end method

.method public handleEpdnSetupFail(I)V
    .locals 3

    .line 1192
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getEmergencySession()Ljava/util/List;

    move-result-object p0

    .line 1194
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleEpdnSetupFail Emergency Session Count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " phoneId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 1198
    :try_start_0
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 1199
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1200
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getNetworkType()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    .line 1201
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleEpdnSetupFail : skip terminate because this session uses ims pdn"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/16 v1, 0x16

    .line 1204
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->terminate(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1207
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public handleSrvccStateChange(IILcom/sec/internal/constants/Mno;)V
    .locals 7

    .line 621
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    if-eqz v3, :cond_0

    .line 623
    :try_start_0
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v5

    if-ne v5, p1, :cond_0

    if-nez p2, :cond_1

    .line 625
    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setSrvccStarted(Z)V

    const/16 v4, 0x64

    const-string v5, "SRVCC HO STARTED"

    .line 626
    invoke-virtual {v3, v1, v4, v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->update(Lcom/sec/ims/volte2/data/CallProfile;ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    if-ne p2, v4, :cond_2

    .line 628
    invoke-virtual {v3, v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setSrvccStarted(Z)V

    const/16 v4, 0x8

    .line 629
    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->terminate(I)V

    if-nez v2, :cond_0

    .line 631
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    goto :goto_0

    :cond_2
    const/4 v4, 0x2

    if-eq p2, v4, :cond_3

    const/4 v4, 0x3

    if-ne p2, v4, :cond_0

    :cond_3
    const-string v4, "failure to transition to CS domain"

    .line 636
    invoke-virtual {p3}, Lcom/sec/internal/constants/Mno;->isOrangeGPG()Z

    move-result v6

    if-nez v6, :cond_4

    sget-object v6, Lcom/sec/internal/constants/Mno;->ORANGE_MOLDOVA:Lcom/sec/internal/constants/Mno;

    if-ne p3, v6, :cond_5

    :cond_4
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSrvccStarted()Z

    move-result v6

    if-nez v6, :cond_5

    const-string v4, "handover cancelled"

    .line 639
    :cond_5
    invoke-virtual {v3, v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setSrvccStarted(Z)V

    const/16 v5, 0x1e7

    .line 640
    invoke-virtual {v3, v1, v5, v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->update(Lcom/sec/ims/volte2/data/CallProfile;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 644
    sget-object v4, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleReinvite: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    if-ne p2, v4, :cond_7

    if-eqz v2, :cond_7

    .line 649
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationGovernor(I)Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 651
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onSrvccComplete()V

    :cond_7
    return-void
.end method

.method public hasActiveCall(I)Z
    .locals 2

    .line 262
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 263
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    if-eq v1, p1, :cond_1

    goto :goto_0

    .line 267
    :cond_1
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v0

    .line 268
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->Idle:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->EndingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->EndedCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public hasDsdaDialingOrIncomingVtOnOtherSlot(I)Z
    .locals 2

    .line 1355
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isDSDAMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1356
    sget v0, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    if-ne p1, v0, :cond_0

    sget v0, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_2:I

    .line 1357
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 1358
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 1359
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v1

    .line 1360
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result p1

    invoke-static {p1}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->IncomingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v1, p1, :cond_2

    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->OutGoingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v1, p1, :cond_2

    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->AlertingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v1, p1, :cond_1

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public hasEmergencyCall(I)Z
    .locals 2

    .line 818
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 819
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    if-eq v1, p1, :cond_1

    goto :goto_0

    .line 823
    :cond_1
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 824
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isE911Call(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public hasPendingCall(I)Z
    .locals 2

    .line 1378
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 1379
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    if-ne v1, p1, :cond_0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPendingCall()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public hasRingingCall()Z
    .locals 1

    const/4 v0, -0x1

    .line 553
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->hasRingingCall(I)Z

    move-result p0

    return p0
.end method

.method public hasRingingCall(I)Z
    .locals 3

    .line 557
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    .line 558
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 559
    :cond_1
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->IncomingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v1, v2, :cond_2

    .line 560
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPreAlerting()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 561
    :cond_2
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "session("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") is in IncomingCall"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public hasRttCall()Z
    .locals 1

    .line 539
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 540
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isRttCall(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public hasSipCallId(Ljava/lang/String;)Z
    .locals 3

    .line 357
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 358
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 359
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 360
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 361
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 362
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getSipCallId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getSipCallId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 363
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exclude the dialog with sipCallId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " sessionId: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 363
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public hasVideoCall()Z
    .locals 1

    .line 530
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 531
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isCsfbErrorCode(Landroid/content/Context;IILcom/sec/ims/util/SipError;)Z
    .locals 6

    const/16 v5, 0xa

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 948
    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->isCsfbErrorCode(Landroid/content/Context;IILcom/sec/ims/util/SipError;I)Z

    move-result p0

    return p0
.end method

.method public isCsfbErrorCode(Landroid/content/Context;IILcom/sec/ims/util/SipError;I)Z
    .locals 9

    const/4 p5, 0x0

    if-nez p4, :cond_0

    .line 953
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    const-string p1, "SipError was null!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p5

    .line 957
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isSilentRedialEnabled(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 958
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    const-string p1, "isSilentRedialEnabled was false!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p5

    .line 962
    :cond_1
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    if-nez v0, :cond_2

    .line 963
    invoke-static {p2}, Lcom/sec/internal/helper/SimUtil;->getMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    :goto_0
    move-object v6, v1

    const/16 v1, 0xc

    const/4 v2, 0x1

    if-ne p3, v1, :cond_4

    .line 965
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSessionCount()I

    move-result v3

    if-gt v3, v2, :cond_3

    sget-object v3, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v6, v3, :cond_4

    .line 966
    :cond_3
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Already activated call exist when USSD call run!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p5

    .line 970
    :cond_4
    invoke-direct {p0, v0, p2, v6}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->ignoreCsfbByEpsOnlyNw(Lcom/sec/ims/ImsRegistration;ILcom/sec/internal/constants/Mno;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 971
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    const-string p1, "ignore CSFB due to only EPS network!"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p5

    .line 975
    :cond_5
    sget-object v3, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CallType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " SipError : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    sget-object v4, Lcom/sec/internal/constants/ims/SipErrorBase;->SIP_INVITE_TIMEOUT:Lcom/sec/ims/util/SipError;

    invoke-virtual {p4, v4}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "Timer B expired convert to INVITE_TIMEOUT"

    .line 978
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x45a

    .line 979
    invoke-virtual {p4, v4}, Lcom/sec/ims/util/SipError;->setCode(I)V

    :cond_6
    const/4 v8, 0x0

    .line 987
    invoke-virtual {v6}, Lcom/sec/internal/constants/Mno;->isOrangeGPG()Z

    move-result v4

    if-nez v4, :cond_7

    sget-object v4, Lcom/sec/internal/constants/Mno;->ORANGE_MOLDOVA:Lcom/sec/internal/constants/Mno;

    if-ne v6, v4, :cond_8

    :cond_7
    if-eqz v0, :cond_8

    const/16 v4, 0x12

    .line 988
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getRegiRat()I

    move-result v5

    if-ne v4, v5, :cond_8

    const-string v4, "isCsfbErrorCode ORANGE GROUP customization in VoWIFI"

    .line 989
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    invoke-direct {p0, p4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->isServerSipError(Lcom/sec/ims/util/SipError;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 991
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v4, p2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isRoaming(I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 993
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v4

    iget-boolean v4, v4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    if-nez v4, :cond_8

    .line 994
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result p1

    const p2, 0x1d4c0

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->blockVoWifiRegisterOnRoaminByCsfbError(II)V

    return p5

    .line 1001
    :cond_8
    sget-object v0, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    if-eq v6, v0, :cond_9

    sget-object v0, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-ne v6, v0, :cond_a

    :cond_9
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isRoaming(I)Z

    move-result v0

    if-nez v0, :cond_a

    const-string p0, "LGU/KDDI - Do not use CSFB in home network"

    .line 1002
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p5

    .line 1004
    :cond_a
    sget-object v0, Lcom/sec/internal/constants/Mno;->MTS_RUSSIA:Lcom/sec/internal/constants/Mno;

    if-ne v6, v0, :cond_b

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isRoaming(I)Z

    move-result v0

    if-ne v0, v2, :cond_b

    const-string p0, "MTS Russia - Do not use CSFB in roaming"

    .line 1005
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p5

    .line 1007
    :cond_b
    invoke-virtual {p4}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v0

    const/16 v4, 0x45d

    if-ne v0, v4, :cond_c

    const-string p0, "CALL_ENDED_BY_NW_HANDOVER_BEFORE_100_TRYING is always trigger CSFB"

    .line 1008
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1010
    :cond_c
    invoke-virtual {v6}, Lcom/sec/internal/constants/Mno;->isTmobile()Z

    move-result v0

    if-nez v0, :cond_d

    sget-object v0, Lcom/sec/internal/constants/Mno;->TELEKOM_ALBANIA:Lcom/sec/internal/constants/Mno;

    if-ne v6, v0, :cond_e

    :cond_d
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->MEDIA_BEARER_OR_QOS_LOST:Lcom/sec/ims/util/SipError;

    invoke-virtual {p4, v0}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string p0, "CSFB condition for T-Mobile EUR"

    .line 1012
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1014
    :cond_e
    sget-object v0, Lcom/sec/internal/constants/Mno;->VIVO_BRAZIL:Lcom/sec/internal/constants/Mno;

    if-ne v6, v0, :cond_f

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isRoaming(I)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string p0, "VIVO doesn\'t support CSFB under roaming area"

    .line 1015
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p5

    .line 1018
    :cond_f
    sget-object v0, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v6, v0, :cond_11

    .line 1019
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSessionCount()I

    move-result v0

    if-le v0, v2, :cond_10

    .line 1020
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "has another call "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSessionCount()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p5

    .line 1022
    :cond_10
    invoke-static {p4}, Lcom/sec/internal/helper/ImsCallUtil;->isClientError(Lcom/sec/ims/util/SipError;)Z

    move-result p5

    if-eqz p5, :cond_1a

    const-string p0, "TMO - Stack return -1 trigger CSFB"

    .line 1023
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1026
    :cond_11
    sget-object v0, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v6, v0, :cond_19

    .line 1027
    invoke-static {p1, p2}, Lcom/sec/internal/ims/util/ImsUtil;->isCdmalessEnabled(Landroid/content/Context;I)Z

    move-result v0

    .line 1028
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VZW - roaming("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v4, p2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isRoaming(I)Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ") CDMAless("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ") getLteEpsOnlyAttached("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    .line 1029
    invoke-interface {v4, p2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getLteEpsOnlyAttached(I)Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1028
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isRoaming(I)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getLteEpsOnlyAttached(I)Z

    move-result v1

    if-nez v1, :cond_13

    :cond_12
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isRoaming(I)Z

    move-result v1

    if-nez v1, :cond_14

    if-eqz v0, :cond_14

    :cond_13
    return p5

    .line 1033
    :cond_14
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isRoaming(I)Z

    move-result v1

    if-eqz v1, :cond_15

    if-eqz v0, :cond_15

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getLteEpsOnlyAttached(I)Z

    move-result v1

    if-nez v1, :cond_15

    .line 1034
    invoke-virtual {p4}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v1

    const/16 v3, 0x9cf

    if-ne v1, v3, :cond_15

    return v2

    .line 1036
    :cond_15
    invoke-static {p4}, Lcom/sec/internal/helper/ImsCallUtil;->isImsOutageError(Lcom/sec/ims/util/SipError;)Z

    move-result v1

    if-nez v1, :cond_17

    invoke-virtual {p4}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v1

    const/16 v3, 0x9c6

    if-ne v1, v3, :cond_16

    goto :goto_1

    :cond_16
    if-eqz v0, :cond_1a

    .line 1038
    invoke-virtual {p4}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result p5

    const/16 v0, 0x641

    if-ne p5, v0, :cond_1a

    return v2

    .line 1037
    :cond_17
    :goto_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isRoaming(I)Z

    move-result p0

    if-nez p0, :cond_18

    if-nez v0, :cond_18

    move p5, v2

    :cond_18
    return p5

    .line 1041
    :cond_19
    sget-object p5, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne v6, p5, :cond_1a

    invoke-virtual {p4}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result p5

    const/16 v0, 0x193

    if-ne p5, v0, :cond_1a

    if-ne p3, v1, :cond_1a

    .line 1042
    iget-object p5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {p5, p2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isRegisteredOver3gppPsVoice(I)Z

    move-result p5

    if-eqz p5, :cond_1a

    iget-object p5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    .line 1043
    invoke-interface {p5, p2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getNetwork(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object p5

    iget-object p5, p5, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceOverPs:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    sget-object v0, Lcom/sec/internal/constants/ims/os/VoPsIndication;->NOT_SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    if-ne p5, v0, :cond_1a

    return v2

    :cond_1a
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v7, p4

    .line 1049
    invoke-virtual/range {v2 .. v8}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->isCsfbErrorCodeOnList(Landroid/content/Context;IILcom/sec/internal/constants/Mno;Lcom/sec/ims/util/SipError;Z)Z

    move-result p0

    return p0
.end method

.method public isCsfbErrorCodeOnList(Landroid/content/Context;IILcom/sec/internal/constants/Mno;Lcom/sec/ims/util/SipError;Z)Z
    .locals 6

    .line 1056
    invoke-static {p3}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "video_csfb_error_code_list"

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "voice_csfb_error_code_list"

    .line 1061
    :goto_0
    :try_start_0
    invoke-static {p1, p2}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/GlobalSettingsManager;

    move-result-object v1

    const-string v2, "all_csfb_error_code_list"

    const/4 v3, 0x0

    .line 1062
    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getStringArray(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1064
    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "all_csfb_error_code_list "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1065
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1064
    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    invoke-virtual {p5}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v4

    invoke-virtual {p0, v1, v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->isMatchWithErrorCodeList([Ljava/lang/String;I)Z

    move-result p6
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, " "

    if-nez p6, :cond_1

    .line 1069
    :try_start_1
    invoke-static {p1, p2}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/GlobalSettingsManager;

    move-result-object v4

    .line 1070
    invoke-virtual {v4, v0, v3}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getStringArray(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1072
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    invoke-virtual {p5}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v0

    invoke-virtual {p0, v3, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->isMatchWithErrorCodeList([Ljava/lang/String;I)Z

    move-result p6

    .line 1077
    :cond_1
    sget-object v0, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    const/4 v3, 0x0

    if-ne p4, v0, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getLteEpsOnlyAttached(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    .line 1078
    invoke-interface {v0, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v0

    iget v0, v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    const/16 v4, 0x14

    if-ne v0, v4, :cond_3

    :cond_2
    if-eqz p6, :cond_3

    .line 1079
    invoke-static {p3}, Lcom/sec/internal/helper/ImsCallUtil;->isE911Call(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1080
    invoke-virtual {p5}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v0

    sget-object v4, Lcom/sec/internal/constants/ims/SipErrorBase;->ALTERNATIVE_SERVICE:Lcom/sec/ims/util/SipError;

    invoke-virtual {v4}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v4

    if-eq v0, v4, :cond_3

    move p6, v3

    :cond_3
    if-nez p6, :cond_5

    .line 1084
    invoke-static {p3}, Lcom/sec/internal/helper/ImsCallUtil;->isE911Call(I)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "e911_csfb_error_code_list"

    .line 1086
    invoke-static {p1, p2}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/GlobalSettingsManager;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/String;

    .line 1087
    invoke-virtual {p1, v0, p2}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getStringArray(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1088
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    invoke-virtual {p5}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->isMatchWithErrorCodeList([Ljava/lang/String;I)Z

    move-result p6

    .line 1091
    invoke-virtual {p4}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 1092
    invoke-virtual {p5}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result p0

    const/16 p1, 0x17d

    if-eq p0, p1, :cond_4

    invoke-virtual {p5}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result p0

    const/16 p1, 0x17e

    if-ne p0, p1, :cond_5

    .line 1093
    :cond_4
    invoke-virtual {p5}, Lcom/sec/ims/util/SipError;->getReason()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/internal/helper/ImsCallUtil;->convertUrnToEccCat(Ljava/lang/String;)I

    move-result p0

    const/16 p1, 0xfe

    if-ne p0, p1, :cond_5

    const-string p0, "Unrecognized service urn."

    .line 1094
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    :cond_5
    invoke-virtual {p4}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-virtual {p5}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result p0

    const/16 p1, 0x1e7

    if-ne p0, p1, :cond_6

    .line 1101
    invoke-virtual {p5}, Lcom/sec/ims/util/SipError;->getReason()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-virtual {p5}, Lcom/sec/ims/util/SipError;->getReason()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Destination out of order"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p0, "need CSFB for call forwarding"

    .line 1102
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 p6, 0x1

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1106
    sget-object p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isCsfbErrorCode fail "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    :cond_6
    :goto_1
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "isCsfbErrorCode Mno "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " callType "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " error "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " ==> "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p6
.end method

.method public isDsdaVtOnOtherSlot(I)Z
    .locals 1

    .line 1344
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isDSDAMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1345
    sget v0, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    if-ne p1, v0, :cond_0

    sget v0, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_2:I

    .line 1346
    :cond_0
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getVideoCallCount(I)I

    move-result p0

    if-lez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isMatchWithErrorCodeList([Ljava/lang/String;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 p0, 0x0

    if-eqz p1, :cond_2

    move v0, p0

    .line 1145
    :goto_0
    array-length v1, p1

    if-ge p0, v1, :cond_1

    .line 1146
    aget-object v0, p1, p0

    const-string/jumbo v1, "x"

    const-string v2, "[0-9]"

    .line 1147
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1148
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1150
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "match with "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move p0, v1

    goto :goto_1

    :cond_0
    add-int/lit8 p0, p0, 0x1

    move v0, v1

    goto :goto_0

    :cond_1
    move p0, v0

    :cond_2
    :goto_1
    return p0
.end method

.method public isRttCall(I)Z
    .locals 3

    .line 1332
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSessionByCallId(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1334
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1336
    invoke-virtual {p0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result p0

    invoke-static {p0}, Lcom/sec/internal/helper/ImsCallUtil;->isRttCall(I)Z

    move-result p0

    .line 1337
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRttCall, sessionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", result="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onCallEndByCS(I)V
    .locals 3

    .line 716
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onCallEndByCS"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 718
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    .line 719
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    if-ne v1, p1, :cond_0

    const/4 v1, 0x4

    .line 721
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->terminate(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 723
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "onCallEndByCS: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onCallEnded()V
    .locals 1

    .line 927
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mPendingOutgoingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 928
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mPendingOutgoingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    :cond_0
    return-void
.end method

.method public onImsIncomingCallEvent(Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;Lcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/ImsRegistration;II)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 2

    .line 874
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionFactory:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionFactory;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionFactory;->create(Lcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/ImsRegistration;Z)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p2

    if-nez p2, :cond_0

    .line 877
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    const-string p1, "onImsIncomingCallEvent: IncomingCallSession create failed"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 880
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getSessionID()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setSessionId(I)V

    .line 881
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getParams()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->updateCallProfile(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;)V

    .line 882
    invoke-virtual {p3}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getTtyType()I

    move-result p1

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    .line 883
    invoke-virtual {p3}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getTtyType()I

    move-result p1

    if-eq p1, v0, :cond_1

    .line 884
    invoke-virtual {p2, p5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setTtyMode(I)V

    .line 887
    :cond_1
    invoke-virtual {p3}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getTtyType()I

    move-result p1

    if-eq p1, v0, :cond_2

    .line 888
    invoke-virtual {p3}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getTtyType()I

    move-result p1

    const/4 p5, 0x4

    if-ne p1, p5, :cond_4

    .line 889
    :cond_2
    invoke-static {p4}, Lcom/sec/internal/helper/ImsCallUtil;->isRttCall(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 890
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    invoke-virtual {p3}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p4

    invoke-interface {p1, p4}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpdgConnected(I)Z

    move-result p1

    if-nez p1, :cond_3

    .line 891
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-virtual {p3}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p4

    invoke-interface {p1, p4}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getRttDbrTimer(I)J

    move-result-wide p4

    invoke-virtual {p2, p4, p5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->startRttDedicatedBearerTimer(J)V

    .line 893
    :cond_3
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/sec/ims/volte2/data/MediaProfile;->setRttMode(I)V

    .line 895
    :cond_4
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setPreAlerting()V

    .line 896
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->addCallSession(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V

    .line 897
    invoke-virtual {p3}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p1

    if-nez p1, :cond_5

    .line 898
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mIncomingCallSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    goto :goto_0

    .line 900
    :cond_5
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mIncomingCallSession2:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    :goto_0
    return-object p2
.end method

.method public onPSBarred(Z)V
    .locals 3

    .line 840
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPSBarred: on ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    const p1, 0x30000021

    .line 843
    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->c(I)V

    .line 844
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 845
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v0

    .line 847
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->IncomingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->OutGoingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->AlertingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v0, v1, :cond_0

    :cond_1
    const/16 v0, 0xd

    .line 851
    :try_start_0
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->terminate(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 853
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onNetworkChanged: "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onRegistered(Lcom/sec/ims/ImsRegistration;)V
    .locals 1

    .line 911
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mPendingOutgoingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    if-eqz v0, :cond_0

    .line 912
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->handleRegistrationDone(Lcom/sec/ims/ImsRegistration;)V

    const/4 p1, 0x0

    .line 913
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mPendingOutgoingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    :cond_0
    return-void
.end method

.method public onReleaseWfcBeforeHO(I)V
    .locals 4

    .line 777
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    if-eqz v0, :cond_0

    .line 779
    :try_start_0
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 780
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 782
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v1

    invoke-static {v1}, Lcom/sec/internal/helper/ImsCallUtil;->isE911Call(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 783
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->IncomingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v1, v2, :cond_1

    const/4 v1, 0x2

    .line 784
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->reject(I)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x5

    const/4 v2, 0x1

    .line 786
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->terminate(IZ)V

    .line 789
    :goto_1
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "end call "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " Before HO"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 793
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReleaseWfcBeforeHO: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onUpdateGeolocation()V
    .locals 1

    .line 867
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 868
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->onUpdateGeolocation()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onUssdEndByCS(I)V
    .locals 3

    .line 730
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onUssdEndByCS"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 732
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 733
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    if-ne v1, p1, :cond_0

    const/4 v1, 0x4

    .line 735
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->terminate(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 737
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "onUssdEndByCS: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    return-void
.end method

.method public releaseAllSession(I)V
    .locals 4

    .line 744
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    if-eqz v0, :cond_0

    .line 746
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    if-eq v1, p1, :cond_1

    goto :goto_0

    .line 751
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->IncomingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v1, v2, :cond_2

    const/4 v1, 0x2

    .line 752
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->reject(I)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x5

    const/4 v2, 0x1

    .line 754
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->terminate(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 757
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "release all session in F/W layer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    return-void
.end method

.method public releaseAllVideoCall()V
    .locals 3

    .line 764
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSessionList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 765
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    .line 769
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->terminate(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 771
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public releaseSessionByState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)V
    .locals 3

    .line 1238
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSessionList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 1239
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    if-ne v1, p1, :cond_0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v1

    if-ne v1, p2, :cond_0

    const/4 v1, 0x5

    const/4 v2, 0x1

    .line 1241
    :try_start_0
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->terminate(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1243
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 3

    .line 408
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 409
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 410
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 411
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 412
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 414
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 415
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {p0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public removeSessionByCmcType(I)V
    .locals 5

    .line 422
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeSessionByCmcType cmcType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 425
    :try_start_0
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v2

    if-ne p1, v2, :cond_0

    .line 426
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->removeSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 429
    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeSessionByCmcType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    return-void
.end method

.method public sendRttMessage(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 576
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 577
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->sendText(Ljava/lang/String;I)V

    goto :goto_0

    .line 580
    :cond_0
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    const-string p1, "sendRttMessage: receive null string / do nothing"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public sendRttSessionModifyRequest(IZ)I
    .locals 6

    .line 1250
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendRttSessionModifyRequest:callId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSessionByCallId(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1255
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "callId("

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") is invalid"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    :cond_0
    const v2, 0x30000017

    .line 1259
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1260
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1259
    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1261
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v2

    .line 1262
    invoke-static {v2}, Lcom/sec/internal/helper/ImsCallUtil;->isRttCall(I)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    if-eqz p2, :cond_1

    .line 1263
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    const/4 v0, 0x1

    invoke-interface {p0, p1, p2, v0}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->onSendRttSessionModifyResponse(IZZ)V

    return v4

    .line 1265
    :cond_1
    invoke-static {v2}, Lcom/sec/internal/helper/ImsCallUtil;->isRttCall(I)Z

    move-result v3

    if-nez v3, :cond_2

    if-nez p2, :cond_2

    .line 1266
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {p0, p1, p2, v4}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->onSendRttSessionModifyResponse(IZZ)V

    return v4

    .line 1270
    :cond_2
    new-instance p1, Lcom/sec/ims/volte2/data/CallProfile;

    invoke-direct {p1}, Lcom/sec/ims/volte2/data/CallProfile;-><init>()V

    .line 1271
    invoke-virtual {p1, v4}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    .line 1273
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SessionId : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", currCallType : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    invoke-static {v2, p2}, Lcom/sec/internal/helper/ImsCallUtil;->getCallTypeForRtt(IZ)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    if-eqz p2, :cond_3

    .line 1278
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result p2

    .line 1279
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getPdnController()Lcom/sec/internal/interfaces/ims/core/IPdnController;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpdgConnected(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1280
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getRttDbrTimer(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->startRttDedicatedBearerTimer(J)V

    :cond_3
    :try_start_0
    const-string p0, ""

    .line 1285
    invoke-virtual {v1, p1, v4, p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->update(Lcom/sec/ims/volte2/data/CallProfile;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1287
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return v4
.end method

.method public sendRttSessionModifyResponse(IZ)V
    .locals 6

    .line 1294
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendRttSessionModifyResponse: callId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", accept : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSessionByCallId(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1298
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "callId("

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") is invalid"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const p1, 0x3000001a

    .line 1302
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1303
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1302
    invoke-static {p1, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1304
    new-instance p1, Lcom/sec/ims/volte2/data/CallProfile;

    invoke-direct {p1}, Lcom/sec/ims/volte2/data/CallProfile;-><init>()V

    const/4 v2, 0x0

    .line 1305
    invoke-virtual {p1, v2}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    .line 1306
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v3

    .line 1307
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SessionId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", currCallType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 1308
    invoke-static {v3, v0}, Lcom/sec/internal/helper/ImsCallUtil;->getCallTypeForRtt(IZ)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    .line 1311
    :try_start_0
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v3

    if-eqz p2, :cond_3

    .line 1313
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result p2

    invoke-static {p2}, Lcom/sec/internal/helper/ImsCallUtil;->isRttCall(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1314
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getPdnController()Lcom/sec/internal/interfaces/ims/core/IPdnController;

    move-result-object p2

    invoke-interface {p2, v3}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpdgConnected(I)Z

    move-result p2

    if-nez p2, :cond_1

    .line 1315
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {p0, v3}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getRttDbrTimer(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->startRttDedicatedBearerTimer(J)V

    .line 1317
    :cond_1
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sec/ims/volte2/data/MediaProfile;->setRttMode(I)V

    goto :goto_0

    .line 1319
    :cond_2
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/sec/ims/volte2/data/MediaProfile;->setRttMode(I)V

    .line 1321
    :goto_0
    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->accept(Lcom/sec/ims/volte2/data/CallProfile;)V

    goto :goto_1

    .line 1323
    :cond_3
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->reject(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1326
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public setPendingOutgoingCall(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V
    .locals 0

    .line 353
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mPendingOutgoingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    return-void
.end method

.method public setTtyMode(II)V
    .locals 2

    .line 832
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 833
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 834
    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setTtyMode(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public terminateMoWfcWhenWfcSettingOff(I)V
    .locals 4

    .line 799
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 800
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    if-eq v1, p1, :cond_1

    goto :goto_0

    .line 804
    :cond_1
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 806
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 807
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->isDowngradedVideoCall()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->isMOCall()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->isConferenceCall()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x5

    .line 809
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->terminate(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 811
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public triggerPsRedial(IIILcom/sec/ims/ImsRegistration;)Z
    .locals 3

    .line 585
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    const-string v0, "TMO_E911 triggerPsRedial = false"

    const/4 v1, 0x0

    if-eqz p4, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 592
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    if-nez v2, :cond_1

    .line 594
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    const-string p1, "TMO_E911 triggerPsRedial = false, origProfile is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 598
    :cond_1
    invoke-virtual {v2, p3}, Lcom/sec/ims/volte2/data/CallProfile;->setNetworkType(I)V

    .line 599
    iget-object p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionFactory:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionFactory;

    invoke-virtual {p3, v2, p4, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionFactory;->create(Lcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/ImsRegistration;Z)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p3

    if-nez p3, :cond_2

    return v1

    .line 604
    :cond_2
    :try_start_0
    invoke-virtual {p3, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->replaceSessionEventListener(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V

    .line 605
    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object p4

    const/4 v2, 0x0

    invoke-virtual {p3, p4, v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->start(Ljava/lang/String;Lcom/sec/ims/volte2/data/CallProfile;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 612
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p0, p4, p1, p3}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 613
    invoke-virtual {p3, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setCallId(I)V

    .line 614
    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->notifySessionChanged(I)V

    .line 615
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    const-string p1, "TMO_E911 triggerPsRedial = true"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 607
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 608
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 587
    :cond_3
    :goto_0
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    const-string p1, "TMO_E911 Call session or IMS Registration is not exist!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
