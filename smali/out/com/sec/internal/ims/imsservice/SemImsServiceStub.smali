.class public Lcom/sec/internal/ims/imsservice/SemImsServiceStub;
.super Lcom/samsung/android/ims/SemImsService$Stub;
.source "SemImsServiceStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsRegistrationCallBack;,
        Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsOngoingFtEventCallBack;,
        Lcom/sec/internal/ims/imsservice/SemImsServiceStub$SemImsFtCallBack;,
        Lcom/sec/internal/ims/imsservice/SemImsServiceStub$SimMobilityStatusCallBack;,
        Lcom/sec/internal/ims/imsservice/SemImsServiceStub$AutoConfigCallBack;,
        Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsDmConfigCallBack;,
        Lcom/sec/internal/ims/imsservice/SemImsServiceStub$EpdgListenerCallback;,
        Lcom/sec/internal/ims/imsservice/SemImsServiceStub$SemEpdgCallBack;
    }
.end annotation


# static fields
.field public static final AUTO_CONFIGURATION_VERS_URI:Landroid/net/Uri;

.field private static final IMS_SEAPI_SERVICE:Ljava/lang/String; = "ImsBase"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final PERMISSION:Ljava/lang/String; = "com.sec.imsservice.PERMISSION"

.field public static final RCS_AUTOCONFIG_URI:Ljava/lang/String; = "com.samsung.rcs.autoconfigurationprovider"

.field private static sInstance:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;


# instance fields
.field private mCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mCoreThread:Landroid/os/HandlerThread;

.field private mDmConfigCallbacks:Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsDmConfigCallBack;

.field private mDmConfigListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/samsung/android/ims/SemImsDmConfigListener;",
            ">;"
        }
    .end annotation
.end field

.field private mEpdgAvailable:[Z

.field private mEpdgHandoverCallback:Lcom/sec/internal/ims/imsservice/SemImsServiceStub$EpdgListenerCallback;

.field private mEpdgListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/internal/ims/imsservice/SemImsServiceStub$SemEpdgCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private mOngoingFtEventCallback:Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsOngoingFtEventCallBack;

.field private mOngoingFtEventListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/internal/ims/imsservice/SemImsServiceStub$SemImsFtCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private mRcsConfigVers:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmCallbacks(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;)Ljava/util/Map;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mCallbacks:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDmConfigListeners(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;)Landroid/os/RemoteCallbackList;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mDmConfigListeners:Landroid/os/RemoteCallbackList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEpdgAvailable(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;)[Z
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mEpdgAvailable:[Z

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEpdgListeners(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;)Ljava/util/Map;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mEpdgListeners:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOngoingFtEventListeners(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;)Ljava/util/Map;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mOngoingFtEventListeners:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mbuildSemImsRegistration(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;Lcom/sec/ims/ImsRegistration;)Lcom/samsung/android/ims/SemImsRegistration;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->buildSemImsRegistration(Lcom/sec/ims/ImsRegistration;)Lcom/samsung/android/ims/SemImsRegistration;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mbuildSemImsRegistrationError(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;Lcom/sec/ims/ImsRegistrationError;)Lcom/samsung/android/ims/SemImsRegistrationError;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->buildSemImsRegistrationError(Lcom/sec/ims/ImsRegistrationError;)Lcom/samsung/android/ims/SemImsRegistrationError;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 74
    const-class v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 77
    sput-object v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->sInstance:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    const-string v0, "content://com.samsung.rcs.autoconfigurationprovider/"

    .line 89
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->AUTO_CONFIGURATION_VERS_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 92
    invoke-direct {p0}, Lcom/samsung/android/ims/SemImsService$Stub;-><init>()V

    .line 81
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mCallbacks:Ljava/util/Map;

    .line 82
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mEpdgListeners:Ljava/util/Map;

    .line 84
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mOngoingFtEventListeners:Ljava/util/Map;

    .line 85
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mEpdgAvailable:[Z

    .line 86
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mDmConfigListeners:Landroid/os/RemoteCallbackList;

    const/4 v0, 0x0

    .line 90
    iput v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mRcsConfigVers:I

    .line 93
    iput-object p1, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mContext:Landroid/content/Context;

    .line 94
    new-instance p1, Landroid/os/HandlerThread;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mCoreThread:Landroid/os/HandlerThread;

    const-string p1, "ImsBase"

    .line 95
    invoke-static {p1, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 96
    sget-object p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string p1, "SemImsServiceStub added"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private buildSemImsProfile(Lcom/sec/ims/settings/ImsProfile;)Lcom/samsung/android/ims/settings/SemImsProfile;
    .registers 2

    if-eqz p1, :cond_c

    .line 666
    new-instance p0, Lcom/samsung/android/ims/settings/SemImsProfile;

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->toJson()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/ims/settings/SemImsProfile;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_c
    const/4 p0, 0x0

    return-object p0
.end method

.method private buildSemImsRegistration(Lcom/sec/ims/ImsRegistration;)Lcom/samsung/android/ims/SemImsRegistration;
    .registers 5

    if-eqz p1, :cond_a7

    .line 634
    invoke-static {}, Lcom/samsung/android/ims/SemImsRegistration;->getBuilder()Lcom/samsung/android/ims/SemImsRegistration$Builder;

    move-result-object p0

    .line 635
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getCurrentRat()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ims/SemImsRegistration$Builder;->setRegiRat(I)Lcom/samsung/android/ims/SemImsRegistration$Builder;

    .line 636
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getNetworkType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ims/SemImsRegistration$Builder;->setPdnType(I)Lcom/samsung/android/ims/SemImsRegistration$Builder;

    .line 637
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ims/SemImsRegistration$Builder;->setPhoneId(I)Lcom/samsung/android/ims/SemImsRegistration$Builder;

    .line 638
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getServices()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ims/SemImsRegistration$Builder;->setServices(Ljava/util/Set;)Lcom/samsung/android/ims/SemImsRegistration$Builder;

    .line 639
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPAssociatedUri2nd()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ims/SemImsRegistration$Builder;->setPAssociatedUri2nd(Ljava/lang/String;)Lcom/samsung/android/ims/SemImsRegistration$Builder;

    .line 640
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getEpdgStatus()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ims/SemImsRegistration$Builder;->setEpdgStatus(Z)Lcom/samsung/android/ims/SemImsRegistration$Builder;

    .line 641
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->isEpdgOverCellularData()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ims/SemImsRegistration$Builder;->setEpdgOverCellularData(Z)Lcom/samsung/android/ims/SemImsRegistration$Builder;

    .line 642
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ims/SemImsRegistration$Builder;->setSubscriptionId(I)Lcom/samsung/android/ims/SemImsRegistration$Builder;

    .line 643
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getRegisteredImpu()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/ims/SemImsRegistration$Builder;->setRegisteredPublicUserId(Ljava/lang/String;)Lcom/samsung/android/ims/SemImsRegistration$Builder;

    .line 644
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPreferredImpu()Lcom/sec/ims/util/NameAddr;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v2, Lcom/sec/internal/ims/core/RegistrationManager$$ExternalSyntheticLambda8;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/RegistrationManager$$ExternalSyntheticLambda8;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/ims/SemImsRegistration$Builder;->setPreferredPublicUserId(Ljava/lang/String;)Lcom/samsung/android/ims/SemImsRegistration$Builder;

    .line 645
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getOwnNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 647
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p1

    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p1

    if-eqz p1, :cond_9d

    .line 649
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object p1

    .line 651
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9d

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9d

    goto :goto_9e

    :cond_9d
    move-object v1, v0

    .line 657
    :goto_9e
    invoke-virtual {p0, v1}, Lcom/samsung/android/ims/SemImsRegistration$Builder;->setOwnNumber(Ljava/lang/String;)Lcom/samsung/android/ims/SemImsRegistration$Builder;

    .line 658
    new-instance p1, Lcom/samsung/android/ims/SemImsRegistration;

    invoke-direct {p1, p0}, Lcom/samsung/android/ims/SemImsRegistration;-><init>(Lcom/samsung/android/ims/SemImsRegistration$Builder;)V

    return-object p1

    :cond_a7
    const/4 p0, 0x0

    return-object p0
.end method

.method private buildSemImsRegistrationError(Lcom/sec/ims/ImsRegistrationError;)Lcom/samsung/android/ims/SemImsRegistrationError;
    .registers 5

    .line 673
    new-instance p0, Lcom/samsung/android/ims/SemImsRegistrationError;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistrationError;->getSipErrorCode()I

    move-result v0

    .line 674
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistrationError;->getSipErrorReason()Ljava/lang/String;

    move-result-object v1

    .line 675
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistrationError;->getDetailedDeregiReason()I

    move-result v2

    .line 676
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistrationError;->getDeregistrationReason()I

    move-result p1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/samsung/android/ims/SemImsRegistrationError;-><init>(ILjava/lang/String;II)V

    return-object p0
.end method

.method public static getInstance()Lcom/sec/internal/ims/imsservice/SemImsServiceStub;
    .registers 2

    .line 120
    sget-object v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "trying to get valid instance..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :goto_8
    invoke-static {}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->getInstanceInternal()Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    move-result-object v0

    if-nez v0, :cond_19

    const-wide/16 v0, 0x3e8

    .line 125
    :try_start_10
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_13} :catch_14

    goto :goto_8

    :catch_14
    move-exception v0

    .line 127
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_8

    .line 130
    :cond_19
    sget-object v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "returning valid instance..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-static {}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->getInstanceInternal()Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized getInstanceInternal()Lcom/sec/internal/ims/imsservice/SemImsServiceStub;
    .registers 2

    const-class v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    monitor-enter v0

    .line 135
    :try_start_3
    sget-object v1, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->sInstance:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getRcsAutoConfigCompl(I)Ljava/lang/String;
    .registers 9

    .line 386
    sget-object v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->AUTO_CONFIGURATION_VERS_URI:Landroid/net/Uri;

    .line 389
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "#simslot\\d"

    const-string v2, ""

    const-string v3, "info/completed"

    .line 390
    invoke-virtual {v3, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 389
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 390
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "simslot"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 p1, 0x0

    .line 394
    :try_start_42
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mContext:Landroid/content/Context;

    if-eqz p0, :cond_53

    .line 395
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_52
    .catchall {:try_start_42 .. :try_end_52} :catchall_6d

    goto :goto_54

    :cond_53
    move-object p0, p1

    :goto_54
    if-eqz p0, :cond_67

    .line 397
    :try_start_56
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_67

    const/4 p1, 0x0

    .line 398
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_61
    .catchall {:try_start_56 .. :try_end_61} :catchall_62

    goto :goto_67

    :catchall_62
    move-exception p1

    move-object v6, p1

    move-object p1, p0

    move-object p0, v6

    goto :goto_6e

    :cond_67
    :goto_67
    if-eqz p0, :cond_6c

    .line 402
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_6c
    return-object p1

    :catchall_6d
    move-exception p0

    :goto_6e
    if-eqz p1, :cond_73

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 404
    :cond_73
    throw p0
.end method

.method private getRcsAutoconfigVers(I)Z
    .registers 8

    .line 411
    sget-object v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->AUTO_CONFIGURATION_VERS_URI:Landroid/net/Uri;

    .line 413
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "#simslot\\d"

    const-string v2, ""

    const-string v3, "parameter/version"

    .line 414
    invoke-virtual {v3, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 413
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 414
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "simslot"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 p1, 0x0

    .line 418
    :try_start_42
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_53

    .line 419
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_52
    .catchall {:try_start_42 .. :try_end_52} :catchall_87

    goto :goto_54

    :cond_53
    move-object v0, p1

    :goto_54
    const/4 v1, 0x0

    if-eqz v0, :cond_65

    .line 422
    :try_start_57
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_65

    .line 423
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_61
    .catchall {:try_start_57 .. :try_end_61} :catchall_62

    goto :goto_65

    :catchall_62
    move-exception p0

    move-object p1, v0

    goto :goto_88

    :cond_65
    :goto_65
    if-eqz p1, :cond_81

    .line 427
    :try_start_67
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mRcsConfigVers:I
    :try_end_6d
    .catch Ljava/lang/NumberFormatException; {:try_start_67 .. :try_end_6d} :catch_74
    .catchall {:try_start_67 .. :try_end_6d} :catchall_62

    if-eqz v0, :cond_72

    .line 436
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_72
    const/4 p0, 0x1

    return p0

    .line 430
    :catch_74
    :try_start_74
    sget-object p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Error while parsing integer in getIntValue() - NumberFormatException"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7b
    .catchall {:try_start_74 .. :try_end_7b} :catchall_62

    if-eqz v0, :cond_80

    .line 436
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_80
    return v1

    :cond_81
    if-eqz v0, :cond_86

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_86
    return v1

    :catchall_87
    move-exception p0

    :goto_88
    if-eqz p1, :cond_8d

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 438
    :cond_8d
    throw p0
.end method

.method private init()V
    .registers 4

    .line 115
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mCoreThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V

    return-void
.end method

.method public static declared-synchronized makeSemImsService(Landroid/content/Context;)Lcom/sec/internal/ims/imsservice/SemImsServiceStub;
    .registers 4

    const-class v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    monitor-enter v0

    .line 100
    :try_start_3
    sget-object v1, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->sInstance:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    if-eqz v1, :cond_12

    .line 101
    sget-object p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Already created."

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    sget-object p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->sInstance:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_2c

    monitor-exit v0

    return-object p0

    .line 105
    :cond_12
    :try_start_12
    sget-object v1, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Creating SemImsService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    new-instance v2, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->sInstance:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    .line 108
    invoke-direct {v2}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->init()V

    const-string p0, "Done."

    .line 110
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    sget-object p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->sInstance:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;
    :try_end_2a
    .catchall {:try_start_12 .. :try_end_2a} :catchall_2c

    monitor-exit v0

    return-object p0

    :catchall_2c
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public enableRcsByPhoneId(ZI)V
    .registers 3

    .line 443
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->enableRcsByPhoneId(ZI)V

    return-void
.end method

.method public getBinder()Landroid/os/Binder;
    .registers 1

    .line 139
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getSemBinder()Landroid/os/Binder;

    move-result-object p0

    return-object p0
.end method

.method public getBooleanConfig(Ljava/lang/String;I)Z
    .registers 7

    .line 457
    sget-object p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getBooleanConfig : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p2, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "mmtel"

    .line 460
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "81"

    const/4 v3, 0x0

    if-eqz v1, :cond_34

    .line 462
    invoke-static {p2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object p1

    sget-object v1, Lcom/sec/internal/constants/Mno;->USCC:Lcom/sec/internal/constants/Mno;

    if-ne p1, v1, :cond_2f

    aput-object v2, v0, v3

    goto :goto_40

    :cond_2f
    const-string p1, "93"

    aput-object p1, v0, v3

    goto :goto_40

    :cond_34
    const-string v1, "mmtel-video"

    .line 467
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_73

    const-string p1, "94"

    aput-object p1, v0, v3

    .line 474
    :goto_40
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getConfigValues([Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object p1

    if-eqz p1, :cond_6e

    aget-object p0, v0, v3

    .line 476
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 477
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_73

    aget-object p1, v0, v3

    .line 478
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_67

    const-string p1, "3"

    .line 481
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_67
    const-string p1, "1"

    .line 483
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_6e
    const-string p1, "can not read DM values"

    .line 487
    invoke-static {p0, p2, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    :cond_73
    return v3
.end method

.method public getConfigValues([Ljava/lang/String;I)Landroid/content/ContentValues;
    .registers 3

    .line 159
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getConfigValues([Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentProfileForSlot(I)[Lcom/samsung/android/ims/settings/SemImsProfile;
    .registers 7

    .line 185
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 187
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getCurrentProfileForSlot(I)[Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_29

    .line 189
    array-length v2, p1

    move v3, v1

    :goto_1b
    if-ge v3, v2, :cond_29

    aget-object v4, p1, v3

    .line 190
    invoke-direct {p0, v4}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->buildSemImsProfile(Lcom/sec/ims/settings/ImsProfile;)Lcom/samsung/android/ims/settings/SemImsProfile;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_29
    new-array p0, v1, [Lcom/samsung/android/ims/settings/SemImsProfile;

    .line 193
    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/samsung/android/ims/settings/SemImsProfile;

    return-object p0
.end method

.method public getRcsProfileType(I)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 154
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getRcsProfileType(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRegistrationInfoByPhoneId(I)[Lcom/samsung/android/ims/SemImsRegistration;
    .registers 9

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 171
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_26

    .line 174
    array-length v3, v1

    move v4, v2

    :goto_12
    if-ge v4, v3, :cond_26

    aget-object v5, v1, v4

    .line 175
    invoke-virtual {v5}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v6

    if-ne v6, p1, :cond_23

    .line 176
    invoke-direct {p0, v5}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->buildSemImsRegistration(Lcom/sec/ims/ImsRegistration;)Lcom/samsung/android/ims/SemImsRegistration;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_23
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    :cond_26
    new-array p0, v2, [Lcom/samsung/android/ims/SemImsRegistration;

    .line 180
    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/samsung/android/ims/SemImsRegistration;

    return-object p0
.end method

.method public getRegistrationInfoByServiceType(Ljava/lang/String;I)Lcom/samsung/android/ims/SemImsRegistration;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 198
    sget-object v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRegistrationInfoByServiceType: phoneId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " serviceType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 199
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getRegistrationInfoByServiceType(Ljava/lang/String;I)Lcom/sec/ims/ImsRegistration;

    move-result-object p1

    .line 200
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->buildSemImsRegistration(Lcom/sec/ims/ImsRegistration;)Lcom/samsung/android/ims/SemImsRegistration;

    move-result-object p0

    return-object p0
.end method

.method public hasCrossSimCallingSupport(I)Z
    .registers 2

    .line 629
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isCrossSimCallingSupportedByPhoneId(I)Z

    move-result p0

    return p0
.end method

.method public isCmcEmergencyCallSupported()Z
    .registers 2

    .line 539
    sget-object p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v0, "isCmcEmergencyCallSupported"

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object p0

    if-nez p0, :cond_13

    const/4 p0, 0x0

    return p0

    .line 543
    :cond_13
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->isEmergencyCallSupported()Z

    move-result p0

    return p0
.end method

.method public isCmcEmergencyNumber(Ljava/lang/String;I)Z
    .registers 4

    .line 548
    sget-object p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v0, "isCmcEmergencyNumber: "

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object p0

    if-nez p0, :cond_13

    const/4 p0, 0x0

    return p0

    .line 552
    :cond_13
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->isEmergencyNumber(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public isCmcPotentialEmergencyNumber(Ljava/lang/String;)Z
    .registers 2

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public isCmcPotentialEmergencyNumber(Ljava/lang/String;I)Z
    .registers 4

    .line 557
    sget-object p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v0, "isCmcPotentialEmergencyNumber: "

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object p0

    if-nez p0, :cond_13

    const/4 p0, 0x0

    return p0

    .line 561
    :cond_13
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->isPotentialEmergencyNumber(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public isCrossSimCallingRegistered(I)Z
    .registers 2

    .line 624
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isCrossSimCallingRegistered(I)Z

    move-result p0

    return p0
.end method

.method public isForbiddenByPhoneId(I)Z
    .registers 2

    .line 165
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isForbiddenByPhoneId(I)Z

    move-result p0

    return p0
.end method

.method public isRcsEnabled(ZI)Z
    .registers 13

    const-string v0, "]"

    const-string v1, "["

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 355
    :try_start_6
    iget-object v4, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "rcs_user_setting"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4
    :try_end_13
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_6 .. :try_end_13} :catch_17

    if-ne v4, v2, :cond_33

    move v4, v2

    goto :goto_34

    .line 357
    :catch_17
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "isRcsEnabled: rcs_user_setting is not exist."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    move v4, v3

    :goto_34
    if-nez p1, :cond_37

    return v4

    .line 364
    :cond_37
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 366
    :try_start_3b
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->getRcsAutoconfigVers(I)Z

    move-result p1

    if-eqz p1, :cond_44

    .line 367
    iget p1, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mRcsConfigVers:I
    :try_end_43
    .catch Ljava/lang/IllegalStateException; {:try_start_3b .. :try_end_43} :catch_8c
    .catchall {:try_start_3b .. :try_end_43} :catchall_8a

    goto :goto_45

    :cond_44
    move p1, v3

    .line 369
    :goto_45
    :try_start_45
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->getRcsAutoConfigCompl(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_53

    const-string/jumbo v7, "true"

    .line 371
    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_52
    .catch Ljava/lang/IllegalStateException; {:try_start_45 .. :try_end_52} :catch_88
    .catchall {:try_start_45 .. :try_end_52} :catchall_8a

    goto :goto_54

    :cond_53
    move p0, v3

    .line 373
    :goto_54
    :try_start_54
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isRcsEnabled: version "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " autoConfigComplete "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_87
    .catch Ljava/lang/IllegalStateException; {:try_start_54 .. :try_end_87} :catch_8e
    .catchall {:try_start_54 .. :try_end_87} :catchall_8a

    goto :goto_aa

    :catch_88
    move p0, v3

    goto :goto_8e

    :catchall_8a
    move-exception p0

    goto :goto_b6

    :catch_8c
    move p0, v3

    move p1, p0

    .line 376
    :catch_8e
    :goto_8e
    :try_start_8e
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "isRcsEnabled: AutoConfiguration is not completed."

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_aa
    .catchall {:try_start_8e .. :try_end_aa} :catchall_8a

    .line 378
    :goto_aa
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v4, :cond_b4

    if-eqz p0, :cond_b5

    if-lez p1, :cond_b4

    goto :goto_b5

    :cond_b4
    move v2, v3

    :cond_b5
    :goto_b5
    return v2

    :goto_b6
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 379
    throw p0
.end method

.method public isServiceAvailable(Ljava/lang/String;II)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 149
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isServiceAvailable(Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public isSimMobilityActivated(I)Z
    .registers 2

    .line 144
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isSimMobilityActivated(I)Z

    move-result p0

    return p0
.end method

.method public isVoLteAvailable(I)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 448
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->hasVoLteSimByPhoneId(I)Z

    move-result p0

    return p0
.end method

.method public registerAutoConfigurationListener(Lcom/samsung/android/ims/SemAutoConfigListener;I)Ljava/lang/String;
    .registers 5

    .line 313
    sget-object v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerAutoConfigurationListener"

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    if-nez p1, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 318
    :cond_c
    new-instance v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$AutoConfigCallBack;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$AutoConfigCallBack;-><init>(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;Lcom/samsung/android/ims/SemAutoConfigListener;I)V

    .line 319
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->registerAutoConfigurationListener(Lcom/sec/ims/IAutoConfigurationListener;I)Ljava/lang/String;

    move-result-object p1

    .line 320
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_27

    .line 321
    iput-object p1, v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$AutoConfigCallBack;->mToken:Ljava/lang/String;

    .line 322
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mCallbacks:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2a

    .line 324
    :cond_27
    invoke-virtual {v0}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$AutoConfigCallBack;->reset()V

    :goto_2a
    return-object p1
.end method

.method public registerDmValueListener(Lcom/samsung/android/ims/SemImsDmConfigListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 517
    new-instance v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsDmConfigCallBack;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsDmConfigCallBack;-><init>(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsDmConfigCallBack-IA;)V

    .line 518
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mDmConfigCallbacks:Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsDmConfigCallBack;

    .line 519
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->registerDmValueListener(Lcom/sec/ims/IImsDmConfigListener;)V

    if-eqz p1, :cond_1d

    .line 522
    sget-object v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "mDmConfigListeners register"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mDmConfigListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    :cond_1d
    return-void
.end method

.method public declared-synchronized registerEpdgListener(Lcom/samsung/android/ims/ISemEpdgListener;)Ljava/lang/String;
    .registers 8

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_6

    .line 586
    monitor-exit p0

    return-object v0

    .line 588
    :cond_6
    :try_start_6
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mEpdgHandoverCallback:Lcom/sec/internal/ims/imsservice/SemImsServiceStub$EpdgListenerCallback;

    if-nez v1, :cond_1d

    .line 589
    new-instance v1, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$EpdgListenerCallback;

    invoke-direct {v1, p0, v0}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$EpdgListenerCallback;-><init>(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;Lcom/sec/internal/ims/imsservice/SemImsServiceStub$EpdgListenerCallback-IA;)V

    iput-object v1, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mEpdgHandoverCallback:Lcom/sec/internal/ims/imsservice/SemImsServiceStub$EpdgListenerCallback;

    .line 590
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mEpdgHandoverCallback:Lcom/sec/internal/ims/imsservice/SemImsServiceStub$EpdgListenerCallback;

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->registerEpdgListener(Lcom/sec/ims/IEpdgListener;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$EpdgListenerCallback;->mToken:Ljava/lang/String;

    .line 592
    :cond_1d
    invoke-static {p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getTokenOfListener(Landroid/os/IInterface;)Ljava/lang/String;

    move-result-object v0

    .line 593
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mEpdgListeners:Ljava/util/Map;

    new-instance v2, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$SemEpdgCallBack;

    invoke-direct {v2, p0, p1, v0}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$SemEpdgCallBack;-><init>(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;Lcom/samsung/android/ims/ISemEpdgListener;Ljava/lang/String;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2b
    .catchall {:try_start_6 .. :try_end_2b} :catchall_71

    const/4 v1, 0x0

    .line 595
    :goto_2c
    :try_start_2c
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v2

    if-ge v1, v2, :cond_6f

    .line 596
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getPdnController()Lcom/sec/internal/interfaces/ims/core/IPdnController;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->getEpdgPhysicalInterface(I)I

    move-result v2

    .line 597
    sget-object v3, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "register epdg listener on epdg available : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mEpdgAvailable:[Z

    aget-boolean v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " epdgInterfaceState "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mEpdgAvailable:[Z

    aget-boolean v3, v3, v1

    invoke-interface {p1, v1, v3, v2}, Lcom/samsung/android/ims/ISemEpdgListener;->onEpdgAvailable(IZI)V
    :try_end_68
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_68} :catch_6b
    .catchall {:try_start_2c .. :try_end_68} :catchall_71

    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    :catch_6b
    move-exception p1

    .line 601
    :try_start_6c
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_6f
    .catchall {:try_start_6c .. :try_end_6f} :catchall_71

    .line 603
    :cond_6f
    monitor-exit p0

    return-object v0

    :catchall_71
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerImsOngoingFtEventListener(Lcom/samsung/android/ims/ft/SemImsFtListener;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 249
    :try_start_1
    sget-object v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "SemRegisterImsOngoingFtListener"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_34

    const/4 v0, 0x0

    if-nez p1, :cond_d

    .line 251
    monitor-exit p0

    return-object v0

    .line 253
    :cond_d
    :try_start_d
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mOngoingFtEventCallback:Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsOngoingFtEventCallBack;

    if-nez v1, :cond_24

    .line 254
    new-instance v1, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsOngoingFtEventCallBack;

    invoke-direct {v1, p0, v0}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsOngoingFtEventCallBack;-><init>(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsOngoingFtEventCallBack-IA;)V

    iput-object v1, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mOngoingFtEventCallback:Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsOngoingFtEventCallBack;

    .line 255
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mOngoingFtEventCallback:Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsOngoingFtEventCallBack;

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->registerImsOngoingFtListener(Lcom/sec/ims/ft/IImsOngoingFtEventListener;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsOngoingFtEventCallBack;->mToken:Ljava/lang/String;

    .line 257
    :cond_24
    invoke-static {p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getTokenOfListener(Landroid/os/IInterface;)Ljava/lang/String;

    move-result-object v0

    .line 258
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mOngoingFtEventListeners:Ljava/util/Map;

    new-instance v2, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$SemImsFtCallBack;

    invoke-direct {v2, p0, p1, v0}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$SemImsFtCallBack;-><init>(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;Lcom/samsung/android/ims/ft/SemImsFtListener;Ljava/lang/String;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_32
    .catchall {:try_start_d .. :try_end_32} :catchall_34

    .line 259
    monitor-exit p0

    return-object v0

    :catchall_34
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public registerImsRegistrationListenerForSlot(Lcom/samsung/android/ims/SemImsRegiListener;I)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 205
    sget-object v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SemRegisterImsRegistrationListener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-nez p1, :cond_1a

    const/4 p0, 0x0

    return-object p0

    .line 210
    :cond_1a
    new-instance v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsRegistrationCallBack;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsRegistrationCallBack;-><init>(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;Lcom/samsung/android/ims/SemImsRegiListener;I)V

    .line 211
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;ZI)Ljava/lang/String;

    move-result-object v1

    .line 212
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_36

    .line 213
    iput-object v1, v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsRegistrationCallBack;->mToken:Ljava/lang/String;

    .line 214
    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mCallbacks:Ljava/util/Map;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_39

    .line 216
    :cond_36
    invoke-virtual {v0}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsRegistrationCallBack;->reset()V

    .line 218
    :goto_39
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;

    move-result-object p2

    if-eqz p2, :cond_67

    .line 220
    array-length v0, p2

    :goto_44
    if-ge v2, v0, :cond_67

    aget-object v3, p2, v2

    .line 221
    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->hasVolteService()Z

    move-result v4

    if-eqz v4, :cond_64

    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v4

    if-nez v4, :cond_64

    .line 223
    :try_start_58
    invoke-direct {p0, v3}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->buildSemImsRegistration(Lcom/sec/ims/ImsRegistration;)Lcom/samsung/android/ims/SemImsRegistration;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/samsung/android/ims/SemImsRegiListener;->onRegistered(Lcom/samsung/android/ims/SemImsRegistration;)V
    :try_end_5f
    .catch Landroid/os/RemoteException; {:try_start_58 .. :try_end_5f} :catch_60

    goto :goto_64

    :catch_60
    move-exception v3

    .line 225
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_64
    :goto_64
    add-int/lit8 v2, v2, 0x1

    goto :goto_44

    :cond_67
    return-object v1
.end method

.method public registerSemCmcRecordingListener(Lcom/samsung/android/ims/cmc/ISemCmcRecordingListener;I)V
    .registers 4

    .line 578
    sget-object p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "registerSemCmcRecordingListener"

    invoke-static {p0, p2, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 580
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object p0

    invoke-virtual {p0, p2, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->registerCmcRecordingListener(ILcom/samsung/android/ims/cmc/ISemCmcRecordingListener;)V

    return-void
.end method

.method public registerSimMobilityStatusListener(Lcom/samsung/android/ims/SemSimMobStatusListener;I)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 281
    sget-object v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "SemRegisterSimMobilityStatusListener"

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    if-nez p1, :cond_b

    const/4 p0, 0x0

    return-object p0

    .line 286
    :cond_b
    new-instance v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$SimMobilityStatusCallBack;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$SimMobilityStatusCallBack;-><init>(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;Lcom/samsung/android/ims/SemSimMobStatusListener;I)V

    .line 287
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->registerSimMobilityStatusListener(Lcom/sec/ims/ISimMobilityStatusListener;ZI)Ljava/lang/String;

    move-result-object p1

    .line 288
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_27

    .line 289
    iput-object p1, v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$SimMobilityStatusCallBack;->mToken:Ljava/lang/String;

    .line 290
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mCallbacks:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2a

    .line 292
    :cond_27
    invoke-virtual {v0}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$SimMobilityStatusCallBack;->reset()V

    :goto_2a
    return-object p1
.end method

.method public sendIidToken(Ljava/lang/String;I)V
    .registers 4

    .line 511
    sget-object p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "sendIidToken"

    invoke-static {p0, p2, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 512
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->sendIidToken(Ljava/lang/String;I)V

    return-void
.end method

.method public sendMsisdnNumber(Ljava/lang/String;I)V
    .registers 4

    .line 505
    sget-object p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "sendMsisdnNumber"

    invoke-static {p0, p2, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 506
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->sendMsisdnNumber(Ljava/lang/String;I)V

    return-void
.end method

.method public sendSemCmcRecordingEvent(Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;II)V
    .registers 6

    .line 571
    sget-object p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendSemCmcRecordingEvent : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p3, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 573
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object p0

    invoke-virtual {p0, p3, p2, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->sendCmcRecordingEvent(IILcom/samsung/android/ims/cmc/SemCmcRecordingInfo;)V

    return-void
.end method

.method public sendTryRegisterByPhoneId(I)V
    .registers 2

    .line 452
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->sendTryRegisterByPhoneId(I)V

    return-void
.end method

.method public sendVerificationCode(Ljava/lang/String;I)V
    .registers 4

    .line 499
    sget-object p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "sendVerificationCode"

    invoke-static {p0, p2, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 500
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->sendVerificationCode(Ljava/lang/String;I)V

    return-void
.end method

.method public setRttMode(II)V
    .registers 3

    .line 494
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->setRttMode(II)V

    return-void
.end method

.method public unRegisterEpdgListener(Ljava/lang/String;)V
    .registers 3

    .line 608
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mEpdgHandoverCallback:Lcom/sec/internal/ims/imsservice/SemImsServiceStub$EpdgListenerCallback;

    if-eqz v0, :cond_2e

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_2e

    .line 611
    :cond_b
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mEpdgListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$SemEpdgCallBack;

    if-eqz p1, :cond_18

    .line 613
    invoke-virtual {p1}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$SemEpdgCallBack;->reset()V

    .line 616
    :cond_18
    iget-object p1, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mEpdgListeners:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-gtz p1, :cond_2e

    .line 617
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mEpdgHandoverCallback:Lcom/sec/internal/ims/imsservice/SemImsServiceStub$EpdgListenerCallback;

    iget-object v0, v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$EpdgListenerCallback;->mToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->unRegisterEpdgListener(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 618
    iput-object p1, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mEpdgHandoverCallback:Lcom/sec/internal/ims/imsservice/SemImsServiceStub$EpdgListenerCallback;

    :cond_2e
    :goto_2e
    return-void
.end method

.method public unregisterAutoConfigurationListener(Ljava/lang/String;I)V
    .registers 5

    .line 331
    sget-object v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterAutoConfigurationListener"

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 332
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    const-string/jumbo p0, "unregisterAutoConfigurationListener: token is empty."

    .line 333
    invoke-static {v0, p2, p0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 336
    :cond_15
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mCallbacks:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$AutoConfigCallBack;

    if-eqz p0, :cond_29

    .line 338
    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$AutoConfigCallBack;->reset()V

    .line 339
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->unregisterAutoConfigurationListener(Ljava/lang/String;I)V

    :cond_29
    return-void
.end method

.method public unregisterDmValueListener(Lcom/samsung/android/ims/SemImsDmConfigListener;)V
    .registers 3

    if-eqz p1, :cond_7

    .line 530
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mDmConfigListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 532
    :cond_7
    iget-object p1, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mDmConfigCallbacks:Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsDmConfigCallBack;

    if-eqz p1, :cond_14

    .line 533
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mDmConfigCallbacks:Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsDmConfigCallBack;

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->unregisterDmValueListener(Lcom/sec/ims/IImsDmConfigListener;)V

    :cond_14
    return-void
.end method

.method public unregisterImsOngoingFtEventListener(Ljava/lang/String;)V
    .registers 4

    .line 264
    sget-object v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "SemUnregisterImsOngoingFtListener"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mOngoingFtEventCallback:Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsOngoingFtEventCallBack;

    if-eqz v1, :cond_36

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_36

    .line 269
    :cond_12
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mOngoingFtEventListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$SemImsFtCallBack;

    if-eqz p1, :cond_1f

    .line 271
    invoke-virtual {p1}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$SemImsFtCallBack;->reset()V

    .line 273
    :cond_1f
    iget-object p1, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mOngoingFtEventListeners:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-gtz p1, :cond_35

    .line 274
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mOngoingFtEventCallback:Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsOngoingFtEventCallBack;

    iget-object v0, v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsOngoingFtEventCallBack;->mToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->unregisterImsOngoingFtListener(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 275
    iput-object p1, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mOngoingFtEventCallback:Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsOngoingFtEventCallBack;

    :cond_35
    return-void

    :cond_36
    :goto_36
    const-string/jumbo p0, "unregisterImsRegistrationListenerForSlot: token is empty or mOngoingFtEventCallback is null."

    .line 266
    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public unregisterImsRegistrationListenerForSlot(Ljava/lang/String;I)V
    .registers 5

    .line 235
    sget-object v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "SemUnregisterImsRegistrationListener"

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 236
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    const-string/jumbo p0, "unregisterImsRegistrationListenerForSlot: token is empty."

    .line 237
    invoke-static {v0, p2, p0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 240
    :cond_14
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->unregisterImsRegistrationListenerForSlot(Ljava/lang/String;I)V

    .line 241
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mCallbacks:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsRegistrationCallBack;

    if-eqz p0, :cond_28

    .line 243
    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsRegistrationCallBack;->reset()V

    :cond_28
    return-void
.end method

.method public unregisterSimMobilityStatusListener(Ljava/lang/String;I)V
    .registers 5

    .line 299
    sget-object v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "SemUnregisterSimMobilityStatusListener"

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 300
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    const-string/jumbo p0, "unregisterImsRegistrationListenerForSlot: token is empty."

    .line 301
    invoke-static {v0, p2, p0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 304
    :cond_14
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->unregisterSimMobilityStatusListenerByPhoneId(Ljava/lang/String;I)V

    .line 305
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mCallbacks:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$SimMobilityStatusCallBack;

    if-eqz p0, :cond_28

    .line 307
    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$SimMobilityStatusCallBack;->reset()V

    :cond_28
    return-void
.end method
