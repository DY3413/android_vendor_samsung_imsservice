.class public Lcom/sec/internal/google/GoogleImsService;
.super Lcom/android/ims/internal/IImsService$Stub;
.source "GoogleImsService.java"

# interfaces
.implements Lcom/sec/internal/interfaces/google/IGoogleImsService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/google/GoogleImsService$SipTransportImpl;,
        Lcom/sec/internal/google/GoogleImsService$ImsRegistrationImpl;
    }
.end annotation


# static fields
.field private static final IMS_CALL_PERMISSION:Ljava/lang/String; = "android.permission.ACCESS_IMS_CALL_SERVICE"

.field private static final IMS_SERVICE:Ljava/lang/String; = "ims6"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final REGISTRATION_TECH_3G:I = 0x4

.field static mInstance:Lcom/sec/internal/google/GoogleImsService;

.field static mMultEndPoints:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/google/ImsMultiEndPointImpl;",
            ">;"
        }
    .end annotation
.end field

.field static mServiceIdRef:I

.field static mServiceList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/google/ServiceProfile;",
            ">;"
        }
    .end annotation
.end field

.field static mSmsImpl:[Lcom/sec/internal/google/ImsSmsImpl;

.field static mSmsListenerList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/telephony/ims/aidl/IImsSmsListener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mCallSessionList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/google/ImsCallSessionImpl;",
            ">;"
        }
    .end annotation
.end field

.field mCapabilities:[Landroid/telephony/ims/feature/ImsFeature$Capabilities;

.field private mCmcImsServiceUtil:Lcom/sec/internal/google/cmc/CmcImsServiceUtil;

.field private mConferenceHost:Lcom/sec/internal/google/ImsCallSessionImpl;

.field mConfigs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/google/ImsConfigImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

.field mContext:Landroid/content/Context;

.field private final mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field private mImsConferenceState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field mImsEcbmList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/google/ImsEcbmImpl;",
            ">;"
        }
    .end annotation
.end field

.field protected mImsNotifier:Lcom/sec/internal/google/ImsNotifier;

.field private mIsInitialMerge:Z

.field mOwnUris:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field mPhoneCount:I

.field mRcsCapabilities:[Landroid/telephony/ims/feature/ImsFeature$Capabilities;

.field mRcsFeatureImpl:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/google/RcsFeatureImpl;",
            ">;"
        }
    .end annotation
.end field

.field mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

.field mRegistrations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/telephony/ims/aidl/IImsRegistration;",
            ">;"
        }
    .end annotation
.end field

.field mSecMmtelListener:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/ims/internal/ISecImsMmTelEventListener;",
            ">;"
        }
    .end annotation
.end field

.field mServiceModuleManager:Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

.field mServiceUrn:Ljava/lang/String;

.field private mSipNotifier:Lcom/sec/internal/google/SipTransportNotifier;

.field mSipTransport:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/telephony/ims/aidl/ISipTransport;",
            ">;"
        }
    .end annotation
.end field

.field mSmsListener:Landroid/telephony/ims/aidl/IImsSmsListener;

.field mUtList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/ims/internal/IImsUt;",
            ">;"
        }
    .end annotation
.end field

.field mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;


# direct methods
.method public static synthetic $r8$lambda$3GD4GMjWv_Up8dBnpCTu8qfYMzM(Lcom/sec/ims/util/NameAddr;)Landroid/net/Uri;
    .locals 0

    invoke-static {p0}, Lcom/sec/internal/google/GoogleImsService;->lambda$extractOwnUrisFromReg$2(Lcom/sec/ims/util/NameAddr;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$O27zQtrJqW1ztqVGXUkHQQNosJQ(IILjava/util/Map$Entry;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/internal/google/GoogleImsService;->lambda$open$0(IILjava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$QfhGeZh-lS-znItyUdRMhSGBghg(I)[Landroid/net/Uri;
    .locals 0

    invoke-static {p0}, Lcom/sec/internal/google/GoogleImsService;->lambda$extractOwnUrisFromReg$3(I)[Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$wJB_eIO-c-EgndmY8t5taB_PslY(Lcom/sec/ims/util/NameAddr;)Z
    .locals 0

    invoke-static {p0}, Lcom/sec/internal/google/GoogleImsService;->lambda$extractOwnUrisFromReg$1(Lcom/sec/ims/util/NameAddr;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSipNotifier(Lcom/sec/internal/google/GoogleImsService;)Lcom/sec/internal/google/SipTransportNotifier;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/google/GoogleImsService;->mSipNotifier:Lcom/sec/internal/google/SipTransportNotifier;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/internal/google/GoogleImsService;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 107
    const-class v0, Lcom/sec/internal/google/GoogleImsService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/google/GoogleImsService;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 111
    sput v0, Lcom/sec/internal/google/GoogleImsService;->mServiceIdRef:I

    .line 112
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v1, Lcom/sec/internal/google/GoogleImsService;->mServiceList:Ljava/util/Map;

    .line 113
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v1, Lcom/sec/internal/google/GoogleImsService;->mMultEndPoints:Ljava/util/Map;

    const/4 v1, 0x0

    .line 114
    sput-object v1, Lcom/sec/internal/google/GoogleImsService;->mInstance:Lcom/sec/internal/google/GoogleImsService;

    .line 115
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v2, Lcom/sec/internal/google/GoogleImsService;->mSmsListenerList:Ljava/util/Map;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/sec/internal/google/ImsSmsImpl;

    aput-object v1, v2, v0

    const/4 v0, 0x1

    aput-object v1, v2, v0

    .line 116
    sput-object v2, Lcom/sec/internal/google/GoogleImsService;->mSmsImpl:[Lcom/sec/internal/google/ImsSmsImpl;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;Lcom/sec/internal/interfaces/ims/core/handler/ISipDialogInterface;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;)V
    .locals 4

    .line 148
    invoke-direct {p0}, Lcom/android/ims/internal/IImsService$Stub;-><init>()V

    .line 121
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mUtList:Ljava/util/Map;

    .line 122
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mImsEcbmList:Ljava/util/Map;

    .line 123
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mConfigs:Ljava/util/Map;

    .line 124
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mRegistrations:Ljava/util/Map;

    .line 125
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mSipTransport:Ljava/util/Map;

    .line 126
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mSecMmtelListener:Ljava/util/Map;

    .line 127
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mRcsFeatureImpl:Ljava/util/Map;

    .line 130
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mCallSessionList:Ljava/util/Map;

    const-string v0, ""

    .line 134
    iput-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mServiceUrn:Ljava/lang/String;

    .line 135
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mOwnUris:Ljava/util/Map;

    const/4 v0, 0x0

    .line 136
    iput-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mSmsListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    .line 137
    iput-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mConferenceHost:Lcom/sec/internal/google/ImsCallSessionImpl;

    const/4 v1, 0x0

    .line 138
    iput-boolean v1, p0, Lcom/sec/internal/google/GoogleImsService;->mIsInitialMerge:Z

    .line 139
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/sec/internal/google/GoogleImsService;->mImsConferenceState:Ljava/util/Map;

    .line 145
    iput-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mCmcImsServiceUtil:Lcom/sec/internal/google/cmc/CmcImsServiceUtil;

    .line 146
    iput-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    .line 149
    iput-object p1, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    .line 151
    new-instance v0, Lcom/sec/internal/helper/SimpleEventLog;

    sget-object v2, Lcom/sec/internal/google/GoogleImsService;->LOG_TAG:Ljava/lang/String;

    const/16 v3, 0x12c

    invoke-direct {v0, p1, v2, v3}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 153
    iput-object p2, p0, Lcom/sec/internal/google/GoogleImsService;->mServiceModuleManager:Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    .line 154
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/google/GoogleImsService;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    .line 155
    iput-object p4, p0, Lcom/sec/internal/google/GoogleImsService;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    .line 157
    new-instance p1, Lcom/sec/internal/google/SipTransportNotifier;

    iget-object p2, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2, p3}, Lcom/sec/internal/google/SipTransportNotifier;-><init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/handler/ISipDialogInterface;)V

    iput-object p1, p0, Lcom/sec/internal/google/GoogleImsService;->mSipNotifier:Lcom/sec/internal/google/SipTransportNotifier;

    .line 158
    invoke-virtual {p1}, Lcom/sec/internal/google/SipTransportNotifier;->init()V

    .line 159
    iget-object p1, p0, Lcom/sec/internal/google/GoogleImsService;->mSipNotifier:Lcom/sec/internal/google/SipTransportNotifier;

    invoke-interface {p4, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->setSipTransportNotifier(Lcom/sec/internal/interfaces/google/ISipTransportNotifier;)V

    .line 161
    new-instance p1, Lcom/sec/internal/google/ImsNotifier;

    iget-object p2, p0, Lcom/sec/internal/google/GoogleImsService;->mSipNotifier:Lcom/sec/internal/google/SipTransportNotifier;

    invoke-direct {p1, p0, p2}, Lcom/sec/internal/google/ImsNotifier;-><init>(Lcom/sec/internal/google/GoogleImsService;Lcom/sec/internal/google/SipTransportNotifier;)V

    iput-object p1, p0, Lcom/sec/internal/google/GoogleImsService;->mImsNotifier:Lcom/sec/internal/google/ImsNotifier;

    const-string p1, "ims6"

    .line 163
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_0

    .line 164
    invoke-static {p1, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 167
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getPhoneCount()I

    move-result p1

    iput p1, p0, Lcom/sec/internal/google/GoogleImsService;->mPhoneCount:I

    .line 168
    new-array p2, p1, [Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    iput-object p2, p0, Lcom/sec/internal/google/GoogleImsService;->mCapabilities:[Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    .line 169
    new-array p1, p1, [Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    iput-object p1, p0, Lcom/sec/internal/google/GoogleImsService;->mRcsCapabilities:[Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    move p1, v1

    .line 170
    :goto_0
    iget p2, p0, Lcom/sec/internal/google/GoogleImsService;->mPhoneCount:I

    if-ge p1, p2, :cond_1

    .line 171
    iget-object p2, p0, Lcom/sec/internal/google/GoogleImsService;->mCapabilities:[Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    new-instance p3, Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    invoke-direct {p3}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;-><init>()V

    aput-object p3, p2, p1

    .line 172
    iget-object p2, p0, Lcom/sec/internal/google/GoogleImsService;->mRcsCapabilities:[Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    new-instance p3, Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    invoke-direct {p3}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;-><init>()V

    aput-object p3, p2, p1

    .line 173
    iget-object p2, p0, Lcom/sec/internal/google/GoogleImsService;->mOwnUris:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    new-array p4, v1, [Landroid/net/Uri;

    invoke-interface {p2, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private extractOwnUrisFromReg(Lcom/sec/ims/ImsRegistration;)[Landroid/net/Uri;
    .locals 0

    if-eqz p1, :cond_1

    .line 1347
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImpuList()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 1351
    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImpuList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/google/GoogleImsService$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/sec/internal/google/GoogleImsService$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/google/GoogleImsService$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/sec/internal/google/GoogleImsService$$ExternalSyntheticLambda1;-><init>()V

    .line 1352
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/google/GoogleImsService$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lcom/sec/internal/google/GoogleImsService$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/net/Uri;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    new-array p0, p0, [Landroid/net/Uri;

    return-object p0
.end method

.method private getConfStateBundle(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)Landroid/os/Bundle;
    .locals 1

    .line 1066
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "user"

    .line 1067
    invoke-virtual {p0, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "endpoint"

    .line 1068
    invoke-virtual {p0, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p2, "status"

    .line 1069
    invoke-virtual {p0, p2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "callId"

    .line 1070
    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "cna"

    .line 1071
    invoke-virtual {p5, p1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "cnap"

    .line 1072
    invoke-virtual {p5, p1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "oir"

    .line 1073
    invoke-virtual {p5, p1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1074
    invoke-virtual {p5}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/ims/ImsStreamMediaProfile;->getAudioQuality()I

    move-result p1

    const-string p2, "audioQuality"

    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "com.samsung.telephony.extra.MT_CONFERENCE"

    .line 1076
    invoke-virtual {p5, p1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 1075
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "com.samsung.telephony.extra.ims.VERSTAT"

    .line 1078
    invoke-virtual {p5, p1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1077
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private getEcbmInterfaceForPhoneId(I)Lcom/sec/internal/google/ImsEcbmImpl;
    .locals 3

    .line 778
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v2, "getEcbmInterfaceForPhoneId"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mImsEcbmList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 780
    iget-object p0, p0, Lcom/sec/internal/google/GoogleImsService;->mImsEcbmList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/google/ImsEcbmImpl;

    return-object p0

    .line 782
    :cond_0
    new-instance v0, Lcom/sec/internal/google/ImsEcbmImpl;

    invoke-direct {v0}, Lcom/sec/internal/google/ImsEcbmImpl;-><init>()V

    .line 783
    iget-object p0, p0, Lcom/sec/internal/google/GoogleImsService;->mImsEcbmList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private getIncreasedServiceId()I
    .locals 1

    .line 247
    sget p0, Lcom/sec/internal/google/GoogleImsService;->mServiceIdRef:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Lcom/sec/internal/google/GoogleImsService;->mServiceIdRef:I

    const/16 v0, 0xfe

    if-lt p0, v0, :cond_0

    const/4 p0, 0x0

    .line 249
    sput p0, Lcom/sec/internal/google/GoogleImsService;->mServiceIdRef:I

    .line 251
    :cond_0
    sget p0, Lcom/sec/internal/google/GoogleImsService;->mServiceIdRef:I

    return p0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;Lcom/sec/internal/interfaces/ims/core/handler/ISipDialogInterface;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;)Lcom/sec/internal/google/GoogleImsService;
    .locals 2

    const-class v0, Lcom/sec/internal/google/GoogleImsService;

    monitor-enter v0

    .line 179
    :try_start_0
    sget-object v1, Lcom/sec/internal/google/GoogleImsService;->mInstance:Lcom/sec/internal/google/GoogleImsService;

    if-nez v1, :cond_0

    .line 180
    new-instance v1, Lcom/sec/internal/google/GoogleImsService;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/sec/internal/google/GoogleImsService;-><init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;Lcom/sec/internal/interfaces/ims/core/handler/ISipDialogInterface;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;)V

    sput-object v1, Lcom/sec/internal/google/GoogleImsService;->mInstance:Lcom/sec/internal/google/GoogleImsService;

    .line 182
    :cond_0
    sget-object p0, Lcom/sec/internal/google/GoogleImsService;->mInstance:Lcom/sec/internal/google/GoogleImsService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getRegistrationTech(IZ)I
    .locals 2

    .line 228
    invoke-static {p0}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 230
    :cond_0
    invoke-static {p0}, Lcom/sec/ims/extensions/TelephonyManagerExt;->getNetworkClass(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 p0, 0x4

    return p0

    :cond_1
    const/16 v0, 0x12

    if-ne p0, v0, :cond_3

    if-eqz p1, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method private isCrossSimTech(Lcom/sec/ims/ImsRegistration;)Z
    .locals 0

    .line 243
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getCurrentRat()I

    move-result p0

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->isEpdgOverCellularData()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/sec/internal/google/GoogleImsService;->getRegistrationTech(IZ)I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$extractOwnUrisFromReg$1(Lcom/sec/ims/util/NameAddr;)Z
    .locals 0

    .line 1351
    invoke-virtual {p0}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/internal/helper/UriUtil;->hasMsisdnNumber(Lcom/sec/ims/util/ImsUri;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$extractOwnUrisFromReg$2(Lcom/sec/ims/util/NameAddr;)Landroid/net/Uri;
    .locals 0

    .line 1352
    invoke-virtual {p0}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$extractOwnUrisFromReg$3(I)[Landroid/net/Uri;
    .locals 0

    .line 1352
    new-array p0, p0, [Landroid/net/Uri;

    return-object p0
.end method

.method private static synthetic lambda$open$0(IILjava/util/Map$Entry;)Z
    .locals 1

    .line 296
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 297
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/google/ServiceProfile;

    invoke-virtual {v0}, Lcom/sec/internal/google/ServiceProfile;->getServiceClass()I

    move-result v0

    if-ne v0, p0, :cond_0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/google/ServiceProfile;

    invoke-virtual {p0}, Lcom/sec/internal/google/ServiceProfile;->getPhoneId()I

    move-result p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public acknowledgeSms(IIII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 942
    iget-object p0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v1, "acknowledgeSms"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    sget-object p0, Lcom/sec/internal/google/GoogleImsService;->mSmsImpl:[Lcom/sec/internal/google/ImsSmsImpl;

    aget-object p0, p0, p1

    if-eqz p0, :cond_0

    .line 946
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/internal/google/ImsSmsImpl;->acknowledgeSms(IIII)V

    return-void

    .line 944
    :cond_0
    new-instance p0, Landroid/os/RemoteException;

    invoke-direct {p0}, Landroid/os/RemoteException;-><init>()V

    throw p0
.end method

.method public acknowledgeSmsReport(IIII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 951
    iget-object p0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v1, "acknowledgeSmsReport"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    sget-object p0, Lcom/sec/internal/google/GoogleImsService;->mSmsImpl:[Lcom/sec/internal/google/ImsSmsImpl;

    aget-object p0, p0, p1

    if-eqz p0, :cond_0

    .line 955
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/internal/google/ImsSmsImpl;->acknowledgeSmsReport(IIII)V

    return-void

    .line 953
    :cond_0
    new-instance p0, Landroid/os/RemoteException;

    invoke-direct {p0}, Landroid/os/RemoteException;-><init>()V

    throw p0
.end method

.method public acknowledgeSmsWithPdu(III[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 960
    iget-object p0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v1, "acknowledgeSmsWithPdu"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    sget-object p0, Lcom/sec/internal/google/GoogleImsService;->mSmsImpl:[Lcom/sec/internal/google/ImsSmsImpl;

    aget-object p0, p0, p1

    if-eqz p0, :cond_0

    .line 964
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/internal/google/ImsSmsImpl;->acknowledgeSmsWithPdu(III[B)V

    return-void

    .line 962
    :cond_0
    new-instance p0, Landroid/os/RemoteException;

    invoke-direct {p0}, Landroid/os/RemoteException;-><init>()V

    throw p0
.end method

.method public addRegistrationListener(IILcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 0

    .line 418
    iget-object p0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string p1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string p2, "addRegistrationListener"

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public changeAudioPath(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 836
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v2, "changeAudioPath"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    iget-object p0, p0, Lcom/sec/internal/google/GoogleImsService;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-eqz p0, :cond_0

    .line 840
    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->updateAudioInterface(II)V

    return-void

    .line 838
    :cond_0
    new-instance p0, Landroid/os/RemoteException;

    invoke-direct {p0}, Landroid/os/RemoteException;-><init>()V

    throw p0
.end method

.method public clearConferenceStateList()V
    .locals 0

    .line 1086
    iget-object p0, p0, Lcom/sec/internal/google/GoogleImsService;->mImsConferenceState:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public close(I)V
    .locals 2

    .line 337
    iget-object p0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v1, "close"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    sget-object p0, Lcom/sec/internal/google/GoogleImsService;->mServiceList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method convertCapaToFeature(Landroid/telephony/ims/feature/ImsFeature$Capabilities;)[I
    .locals 3

    const/16 p0, 0xa

    new-array p0, p0, [I

    .line 1287
    fill-array-data p0, :array_0

    const/4 v0, 0x1

    .line 1298
    invoke-virtual {p1, v0}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->isCapable(I)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    aput v1, p0, v1

    aput v2, p0, v2

    .line 1303
    :cond_0
    invoke-virtual {p1, v2}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->isCapable(I)Z

    move-result v1

    if-eqz v1, :cond_1

    aput v0, p0, v0

    const/4 v0, 0x3

    aput v0, p0, v0

    :cond_1
    const/4 v0, 0x4

    .line 1308
    invoke-virtual {p1, v0}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->isCapable(I)Z

    move-result v1

    if-eqz v1, :cond_2

    aput v0, p0, v0

    const/4 v0, 0x5

    aput v0, p0, v0

    :cond_2
    const/16 v0, 0x8

    .line 1312
    invoke-virtual {p1, v0}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->isCapable(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x6

    aput v1, p0, v1

    const/4 v1, 0x7

    aput v1, p0, v1

    :cond_3
    const/16 v1, 0x10

    .line 1317
    invoke-virtual {p1, v1}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->isCapable(I)Z

    move-result p1

    if-eqz p1, :cond_4

    aput v0, p0, v0

    :cond_4
    return-object p0

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method convertCapaToRcsFeature(Landroid/telephony/ims/feature/ImsFeature$Capabilities;)[I
    .locals 2

    const/4 p0, 0x3

    new-array p0, p0, [I

    .line 1268
    fill-array-data p0, :array_0

    const/4 v0, 0x1

    .line 1272
    invoke-virtual {p1, v0}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->isCapable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    aput v1, p0, v1

    :cond_0
    const/4 v1, 0x2

    .line 1275
    invoke-virtual {p1, v1}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->isCapable(I)Z

    move-result p1

    if-eqz p1, :cond_1

    aput v0, p0, v0

    :cond_1
    return-object p0

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public createCallProfile(III)Landroid/telephony/ims/ImsCallProfile;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 443
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v2, "createCallProfile"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    sget-object v0, Lcom/sec/internal/google/GoogleImsService;->mServiceList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/google/ServiceProfile;

    .line 445
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/google/GoogleImsService;->isConnected(III)Z

    move-result p1

    if-eqz p1, :cond_5

    if-eqz v0, :cond_5

    .line 446
    new-instance p1, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {p1, p2, p3}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    .line 447
    iget-object p3, p0, Lcom/sec/internal/google/GoogleImsService;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-virtual {v0}, Lcom/sec/internal/google/ServiceProfile;->getPhoneId()I

    move-result v0

    invoke-interface {p3, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 449
    array-length v0, p3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_4

    aget-object v3, p3, v2

    if-eqz v3, :cond_3

    .line 451
    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->hasVolteService()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x2

    if-eq p2, v4, :cond_0

    .line 452
    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_3

    .line 456
    :cond_0
    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v5

    .line 457
    sget-object v6, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-eq v5, v6, :cond_2

    sget-object v6, Lcom/sec/internal/constants/Mno;->USCC:Lcom/sec/internal/constants/Mno;

    if-ne v5, v6, :cond_1

    goto :goto_1

    :cond_1
    move v5, v1

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v5, 0x1

    :goto_2
    const-string v6, "SupportHeldHostMerge"

    .line 458
    invoke-virtual {p1, v6, v5}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    if-eq p2, v4, :cond_3

    .line 462
    invoke-direct {p0, v3}, Lcom/sec/internal/google/GoogleImsService;->isCrossSimTech(Lcom/sec/ims/ImsRegistration;)Z

    move-result v4

    const-string v5, "android.telephony.ims.extra.IS_CROSS_SIM_CALL"

    invoke-virtual {p1, v5, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 463
    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v4

    if-nez v4, :cond_3

    .line 465
    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getCurrentRat()I

    move-result p0

    invoke-static {p0}, Landroid/telephony/ServiceState;->networkTypeToRilRadioTechnology(I)I

    move-result p0

    .line 464
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p2, "CallRadioTech"

    invoke-virtual {p1, p2, p0}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_4
    return-object p1

    .line 473
    :cond_5
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public createCallSession(ILandroid/telephony/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;)Lcom/android/ims/internal/IImsCallSession;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const-string p3, "com.samsung.ims.extra.ECHO_CALL_ID"

    const-string v0, "com.samsung.telephony.extra.CMC_TYPE"

    .line 486
    iget-object v1, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v3, "createCallSession"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    sget-object v1, Lcom/sec/internal/google/GoogleImsService;->mServiceList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/sec/internal/google/ServiceProfile;

    .line 490
    invoke-virtual {p0, p1}, Lcom/sec/internal/google/GoogleImsService;->isOpened(I)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/sec/internal/google/GoogleImsService;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-eqz v1, :cond_c

    if-eqz v7, :cond_c

    .line 495
    :try_start_0
    invoke-virtual {v7}, Lcom/sec/internal/google/ServiceProfile;->getPhoneId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getTtyMode(I)I

    move-result v1

    sget v2, Lcom/sec/ims/extensions/Extensions$TelecomManager;->TTY_MODE_OFF:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    .line 496
    :goto_0
    invoke-virtual {v7}, Lcom/sec/internal/google/ServiceProfile;->getPhoneId()I

    move-result v2

    invoke-static {v2, p2, v1}, Lcom/sec/internal/google/DataTypeConvertor;->convertToSecCallProfile(ILandroid/telephony/ims/ImsCallProfile;Z)Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v6

    .line 501
    iget-object v1, p0, Lcom/sec/internal/google/GoogleImsService;->mCmcImsServiceUtil:Lcom/sec/internal/google/cmc/CmcImsServiceUtil;

    invoke-virtual {v1, v7}, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->setServiceProfile(Lcom/sec/internal/google/ServiceProfile;)V

    .line 503
    iget-object v1, p2, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    const-string v2, "android.telephony.ims.extra.OEM_EXTRAS"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 505
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 506
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v4

    .line 509
    :goto_1
    invoke-virtual {v1, p3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 510
    sget-object v2, Lcom/sec/internal/google/GoogleImsService;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "get Echo Call ID "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    move v0, v4

    .line 515
    :cond_3
    :goto_2
    iget-object p3, p0, Lcom/sec/internal/google/GoogleImsService;->mCmcImsServiceUtil:Lcom/sec/internal/google/cmc/CmcImsServiceUtil;

    invoke-virtual {p3, v0, p2, v6, v7}, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->prepareCallSession(ILandroid/telephony/ims/ImsCallProfile;Lcom/sec/ims/volte2/data/CallProfile;Lcom/sec/internal/google/ServiceProfile;)I

    move-result p3

    if-lez p3, :cond_4

    .line 518
    iget-object v2, p0, Lcom/sec/internal/google/GoogleImsService;->mCmcImsServiceUtil:Lcom/sec/internal/google/cmc/CmcImsServiceUtil;

    move v3, p3

    move v4, p1

    move-object v5, p2

    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->createCallSession(IILandroid/telephony/ims/ImsCallProfile;Lcom/sec/ims/volte2/data/CallProfile;Lcom/sec/internal/google/ServiceProfile;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object p0

    return-object p0

    .line 521
    :cond_4
    iget-object p1, p0, Lcom/sec/internal/google/GoogleImsService;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-virtual {v7}, Lcom/sec/internal/google/ServiceProfile;->getPhoneId()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 523
    array-length v0, p1

    :goto_3
    if-ge v4, v0, :cond_8

    aget-object v1, p1, v4

    if-eqz v1, :cond_7

    .line 524
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->hasVolteService()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v1

    if-eq p3, v1, :cond_5

    goto :goto_4

    .line 528
    :cond_5
    invoke-virtual {v6}, Lcom/sec/ims/volte2/data/CallProfile;->getUrn()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "urn:service:unspecified"

    if-ne v1, v2, :cond_7

    .line 529
    iget-object v1, p0, Lcom/sec/internal/google/GoogleImsService;->mServiceUrn:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo v1, "urn:service:sos"

    .line 530
    invoke-virtual {v6, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setUrn(Ljava/lang/String;)V

    goto :goto_4

    .line 532
    :cond_6
    iget-object v1, p0, Lcom/sec/internal/google/GoogleImsService;->mServiceUrn:Ljava/lang/String;

    invoke-virtual {v6, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setUrn(Ljava/lang/String;)V

    const-string v1, ""

    .line 533
    iput-object v1, p0, Lcom/sec/internal/google/GoogleImsService;->mServiceUrn:Ljava/lang/String;

    :cond_7
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 539
    :cond_8
    invoke-virtual {v6, p3}, Lcom/sec/ims/volte2/data/CallProfile;->setCmcType(I)V

    .line 541
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isSoftphoneEnabled()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    invoke-virtual {v6}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result p1

    const/4 v1, 0x7

    if-ne p1, v1, :cond_9

    const/16 p1, 0xd

    .line 542
    invoke-virtual {v6, p1}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    .line 543
    invoke-virtual {v6, v0}, Lcom/sec/ims/volte2/data/CallProfile;->setUrn(Ljava/lang/String;)V

    .line 546
    :cond_9
    invoke-virtual {v7}, Lcom/sec/internal/google/ServiceProfile;->getPhoneId()I

    move-result p1

    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object p1

    .line 547
    invoke-virtual {p0, v7}, Lcom/sec/internal/google/GoogleImsService;->getVolteRegHandle(Lcom/sec/internal/google/ServiceProfile;)I

    move-result v1

    .line 548
    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v2

    if-nez v2, :cond_a

    sget-object v2, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-eq p1, v2, :cond_a

    sget-object v2, Lcom/sec/internal/constants/Mno;->USCC:Lcom/sec/internal/constants/Mno;

    if-eq p1, v2, :cond_a

    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->isSecondaryDevice()Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, -0x1

    if-ne v1, v2, :cond_a

    iget-object v2, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    .line 549
    invoke-static {v2}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/helper/os/ITelephonyManager;->isVoiceCapable()Z

    move-result v2

    if-eqz v2, :cond_a

    if-nez p3, :cond_a

    .line 550
    invoke-virtual {v6}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/helper/ImsCallUtil;->isE911Call(I)Z

    move-result v2

    if-nez v2, :cond_a

    .line 551
    invoke-virtual {v6, v3}, Lcom/sec/ims/volte2/data/CallProfile;->setForceCSFB(Z)V

    .line 553
    :cond_a
    sget-object v2, Lcom/sec/internal/google/GoogleImsService;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mno: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " phoneId: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/sec/internal/google/ServiceProfile;->getPhoneId()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " cmcType: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " volteRegHandle: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " isVoiceCap: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    .line 554
    invoke-static {p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/helper/os/ITelephonyManager;->isVoiceCapable()Z

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " => isForceCSFB(): "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/sec/ims/volte2/data/CallProfile;->isForceCSFB()Z

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 553
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 558
    :try_start_1
    iget-object p1, p0, Lcom/sec/internal/google/GoogleImsService;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {p1, v6}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->createSession(Lcom/sec/ims/volte2/data/CallProfile;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 560
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string p3, "CallRadioTech"

    .line 564
    invoke-virtual {p2, p3}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    .line 563
    invoke-interface {p1, p3}, Lcom/sec/ims/volte2/IImsCallSession;->setEpdgState(Z)V

    .line 565
    new-instance p3, Lcom/sec/internal/google/ImsCallSessionImpl;

    invoke-direct {p3, p2, p1, v0, p0}, Lcom/sec/internal/google/ImsCallSessionImpl;-><init>(Landroid/telephony/ims/ImsCallProfile;Lcom/sec/ims/volte2/IImsCallSession;Landroid/telephony/ims/aidl/IImsCallSessionListener;Lcom/sec/internal/google/GoogleImsService;)V

    .line 566
    iget-object p1, p0, Lcom/sec/internal/google/GoogleImsService;->mCallSessionList:Ljava/util/Map;

    invoke-virtual {p3}, Lcom/sec/internal/google/ImsCallSessionImpl;->getCallIdInt()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    invoke-virtual {p0}, Lcom/sec/internal/google/GoogleImsService;->isEnabledWifiDirectFeature()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 569
    iget-object p0, p0, Lcom/sec/internal/google/GoogleImsService;->mCmcImsServiceUtil:Lcom/sec/internal/google/cmc/CmcImsServiceUtil;

    invoke-virtual {p0}, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->acquireP2pNetwork()V

    :cond_b
    return-object p3

    :catchall_0
    move-exception p0

    .line 560
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 561
    throw p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 576
    :catch_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    .line 491
    :cond_c
    new-instance p0, Landroid/os/RemoteException;

    invoke-direct {p0}, Landroid/os/RemoteException;-><init>()V

    throw p0
.end method

.method public createRcsFeature(I)Landroid/telephony/ims/aidl/IImsRcsFeature;
    .locals 3

    .line 1612
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v2, "createRcsFeature"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1614
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mRcsFeatureImpl:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1615
    iget-object p0, p0, Lcom/sec/internal/google/GoogleImsService;->mRcsFeatureImpl:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/google/RcsFeatureImpl;

    invoke-virtual {p0}, Landroid/telephony/ims/feature/RcsFeature;->getBinder()Landroid/telephony/ims/aidl/IImsRcsFeature;

    move-result-object p0

    return-object p0

    .line 1617
    :cond_0
    new-instance v0, Lcom/sec/internal/google/RcsFeatureImpl;

    iget-object v1, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p0}, Lcom/sec/internal/google/RcsFeatureImpl;-><init>(Landroid/content/Context;ILcom/sec/internal/google/GoogleImsService;)V

    .line 1618
    iget-object p0, p0, Lcom/sec/internal/google/GoogleImsService;->mRcsFeatureImpl:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1619
    invoke-virtual {v0}, Landroid/telephony/ims/feature/RcsFeature;->getBinder()Landroid/telephony/ims/aidl/IImsRcsFeature;

    move-result-object p0

    return-object p0
.end method

.method public dump()V
    .locals 2

    .line 1676
    sget-object v0, Lcom/sec/internal/google/GoogleImsService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Dump of GoogleImsService:"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 1677
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {v0}, Lcom/sec/internal/helper/SimpleEventLog;->dump()V

    .line 1679
    iget-object p0, p0, Lcom/sec/internal/google/GoogleImsService;->mSipNotifier:Lcom/sec/internal/google/SipTransportNotifier;

    invoke-virtual {p0}, Lcom/sec/internal/google/SipTransportNotifier;->dump()V

    return-void
.end method

.method public enterEmergencyCallbackMode(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1199
    invoke-direct {p0, p1}, Lcom/sec/internal/google/GoogleImsService;->getEcbmInterfaceForPhoneId(I)Lcom/sec/internal/google/ImsEcbmImpl;

    move-result-object p0

    .line 1200
    invoke-virtual {p0}, Lcom/sec/internal/google/ImsEcbmImpl;->enterEmergencyCallbackMode()V

    return-void
.end method

.method public getCallSession(I)Lcom/sec/internal/google/ImsCallSessionImpl;
    .locals 0

    .line 1036
    iget-object p0, p0, Lcom/sec/internal/google/GoogleImsService;->mCallSessionList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/google/ImsCallSessionImpl;

    return-object p0
.end method

.method public getCmcImsServiceUtil()Lcom/sec/internal/google/cmc/CmcImsServiceUtil;
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/sec/internal/google/GoogleImsService;->mCmcImsServiceUtil:Lcom/sec/internal/google/cmc/CmcImsServiceUtil;

    return-object p0
.end method

.method getCmcTypeFromRegHandle(I)I
    .locals 4

    .line 1336
    iget-object p0, p0, Lcom/sec/internal/google/GoogleImsService;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    if-eqz v2, :cond_0

    .line 1337
    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 1338
    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1339
    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result p0

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public getConferenceHost()Lcom/sec/internal/google/ImsCallSessionImpl;
    .locals 0

    .line 1012
    iget-object p0, p0, Lcom/sec/internal/google/GoogleImsService;->mConferenceHost:Lcom/sec/internal/google/ImsCallSessionImpl;

    return-object p0
.end method

.method public getConfig(I)Landroid/telephony/ims/aidl/IImsConfig;
    .locals 3

    .line 746
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v2, "getConfig"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mConfigs:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 748
    iget-object p0, p0, Lcom/sec/internal/google/GoogleImsService;->mConfigs:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/google/ImsConfigImpl;

    invoke-virtual {p0}, Landroid/telephony/ims/stub/ImsConfigImplBase;->getIImsConfig()Landroid/telephony/ims/aidl/IImsConfig;

    move-result-object p0

    return-object p0

    .line 750
    :cond_0
    new-instance v0, Lcom/sec/internal/google/ImsConfigImpl;

    iget-object v1, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p1, v1}, Lcom/sec/internal/google/ImsConfigImpl;-><init>(ILandroid/content/Context;)V

    .line 751
    iget-object p0, p0, Lcom/sec/internal/google/GoogleImsService;->mConfigs:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 752
    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsConfigImplBase;->getIImsConfig()Landroid/telephony/ims/aidl/IImsConfig;

    move-result-object p0

    return-object p0
.end method

.method public getDeviceType()Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;
    .locals 0

    .line 195
    iget-object p0, p0, Lcom/sec/internal/google/GoogleImsService;->mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-virtual {p0}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->getDeviceType()Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    move-result-object p0

    return-object p0
.end method

.method public getE911CallCount(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 882
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v2, "getE911CallCount"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    iget-object p0, p0, Lcom/sec/internal/google/GoogleImsService;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-eqz p0, :cond_0

    .line 887
    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getE911CallCount(I)I

    move-result p0

    return p0

    .line 884
    :cond_0
    new-instance p0, Landroid/os/RemoteException;

    invoke-direct {p0}, Landroid/os/RemoteException;-><init>()V

    throw p0
.end method

.method public bridge synthetic getEcbmInterface(I)Lcom/android/ims/internal/IImsEcbm;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 106
    invoke-virtual {p0, p1}, Lcom/sec/internal/google/GoogleImsService;->getEcbmInterface(I)Lcom/sec/internal/google/ImsEcbmImpl;

    move-result-object p0

    return-object p0
.end method

.method public getEcbmInterface(I)Lcom/sec/internal/google/ImsEcbmImpl;
    .locals 3

    .line 768
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v2, "getEcbmInterface"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    sget-object v0, Lcom/sec/internal/google/GoogleImsService;->mServiceList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/google/ServiceProfile;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 773
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/google/ServiceProfile;->getPhoneId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/google/GoogleImsService;->getEcbmInterfaceForPhoneId(I)Lcom/sec/internal/google/ImsEcbmImpl;

    move-result-object p0

    return-object p0
.end method

.method public getImsConferenceState()Landroid/telephony/ims/ImsConferenceState;
    .locals 4

    .line 1089
    new-instance v0, Landroid/telephony/ims/ImsConferenceState;

    invoke-direct {v0}, Landroid/telephony/ims/ImsConferenceState;-><init>()V

    .line 1091
    iget-object p0, p0, Lcom/sec/internal/google/GoogleImsService;->mImsConferenceState:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1092
    iget-object v2, v0, Landroid/telephony/ims/ImsConferenceState;->mParticipants:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getImsNotifier()Lcom/sec/internal/google/ImsNotifier;
    .locals 0

    .line 1367
    iget-object p0, p0, Lcom/sec/internal/google/GoogleImsService;->mImsNotifier:Lcom/sec/internal/google/ImsNotifier;

    return-object p0
.end method

.method public getMultiEndpointInterface(I)Lcom/android/ims/internal/IImsMultiEndpoint;
    .locals 2

    .line 817
    iget-object p0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v1, "getMultiEndpointInterface"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    sget-object p0, Lcom/sec/internal/google/GoogleImsService;->mServiceList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/google/ServiceProfile;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 823
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/google/ServiceProfile;->getPhoneId()I

    move-result p1

    .line 825
    sget-object v0, Lcom/sec/internal/google/GoogleImsService;->mMultEndPoints:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 826
    sget-object p0, Lcom/sec/internal/google/GoogleImsService;->mMultEndPoints:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/ims/internal/IImsMultiEndpoint;

    return-object p0

    .line 828
    :cond_1
    new-instance v0, Lcom/sec/internal/google/ImsMultiEndPointImpl;

    invoke-virtual {p0}, Lcom/sec/internal/google/ServiceProfile;->getPhoneId()I

    move-result p0

    invoke-direct {v0, p0}, Lcom/sec/internal/google/ImsMultiEndPointImpl;-><init>(I)V

    .line 829
    sget-object p0, Lcom/sec/internal/google/GoogleImsService;->mMultEndPoints:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getParticipantId(Ljava/lang/String;)I
    .locals 3

    .line 1150
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1151
    iget-object v1, p0, Lcom/sec/internal/google/GoogleImsService;->mImsConferenceState:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    return v0

    .line 1157
    :catch_0
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/google/GoogleImsService;->mImsConferenceState:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1158
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1159
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public getPendingCallSession(ILjava/lang/String;)Lcom/android/ims/internal/IImsCallSession;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 582
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v2, "getPendingCallSession"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    sget-object v0, Lcom/sec/internal/google/GoogleImsService;->mServiceList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/google/ServiceProfile;

    .line 584
    invoke-virtual {p0, p1}, Lcom/sec/internal/google/GoogleImsService;->isOpened(I)Z

    move-result p1

    if-eqz p1, :cond_18

    iget-object p1, p0, Lcom/sec/internal/google/GoogleImsService;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-eqz p1, :cond_18

    if-eqz v0, :cond_18

    .line 588
    invoke-virtual {v0}, Lcom/sec/internal/google/ServiceProfile;->getPhoneId()I

    move-result p1

    .line 590
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {v0, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getPendingSession(Ljava/lang/String;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object p2

    if-eqz p2, :cond_17

    .line 594
    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->values()[Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v0

    invoke-interface {p2}, Lcom/sec/ims/volte2/IImsCallSession;->getCallStateOrdinal()I

    move-result v1

    aget-object v0, v0, v1

    .line 595
    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isEndCallState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 599
    invoke-interface {p2}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    .line 600
    new-instance v1, Landroid/telephony/ims/ImsCallProfile;

    .line 601
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/google/DataTypeConvertor;->convertToGoogleCallType(I)I

    move-result v2

    .line 602
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getComposerData()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/internal/google/GoogleImsService;->prepareComposerDataBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    new-instance v4, Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-direct {v4}, Landroid/telephony/ims/ImsStreamMediaProfile;-><init>()V

    const/4 v5, 0x1

    invoke-direct {v1, v5, v2, v3, v4}, Landroid/telephony/ims/ImsCallProfile;-><init>(IILandroid/os/Bundle;Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 604
    invoke-interface {p2}, Lcom/sec/ims/volte2/IImsCallSession;->getRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    .line 607
    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getCurrentRat()I

    move-result v6

    .line 608
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getRadioTech()I

    move-result v7

    if-eqz v7, :cond_0

    .line 609
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getRadioTech()I

    move-result v6

    .line 611
    :cond_0
    invoke-interface {p2}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v7

    invoke-static {v7}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcSecondaryType(I)Z

    move-result v7

    const-string v8, "CallRadioTech"

    if-eqz v7, :cond_1

    const/16 v7, 0xe

    .line 612
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v8, v7}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 614
    :cond_1
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v8, v7}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    :goto_0
    invoke-direct {p0, v2}, Lcom/sec/internal/google/GoogleImsService;->isCrossSimTech(Lcom/sec/ims/ImsRegistration;)Z

    move-result v7

    const-string v8, "android.telephony.ims.extra.IS_CROSS_SIM_CALL"

    invoke-virtual {v1, v8, v7}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    const/16 v7, 0x12

    if-ne v6, v7, :cond_2

    move v6, v5

    goto :goto_1

    :cond_2
    move v6, v4

    .line 617
    :goto_1
    invoke-interface {p2, v6}, Lcom/sec/ims/volte2/IImsCallSession;->setEpdgStateNoNotify(Z)V

    .line 618
    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    goto :goto_2

    :cond_3
    move-object v2, v3

    .line 621
    :goto_2
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object v6

    const-string v7, "oi"

    invoke-virtual {v1, v7, v6}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/internal/google/DataTypeConvertor;->convertToGoogleMediaProfile(Lcom/sec/ims/volte2/data/MediaProfile;)Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v6

    iput-object v6, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 625
    sget-object v6, Lcom/sec/internal/constants/Mno;->DOCOMO:Lcom/sec/internal/constants/Mno;

    if-ne v2, v6, :cond_4

    .line 626
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getLetteringText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/google/DataTypeConvertor;->getOirExtraFromDialingNumberForDcm(Ljava/lang/String;)I

    move-result v2

    goto :goto_3

    .line 628
    :cond_4
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object v2

    .line 629
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string/jumbo v2, "unknown"

    .line 632
    :cond_5
    invoke-static {v2}, Lcom/sec/internal/google/DataTypeConvertor;->getOirExtraFromDialingNumber(Ljava/lang/String;)I

    move-result v2

    :goto_3
    const-string v6, "oir"

    .line 635
    invoke-virtual {v1, v6, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    const-string v6, "cnap"

    .line 636
    invoke-virtual {v1, v6, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 638
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getLetteringText()Ljava/lang/String;

    move-result-object v2

    const-string v6, "cna"

    invoke-virtual {v1, v6, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getPhotoRing()Ljava/lang/String;

    move-result-object v2

    const-string v6, "com.samsung.telephony.extra.PHOTO_RING_AVAILABLE"

    invoke-virtual {v1, v6, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getNumberPlus()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/2addr v2, v5

    const-string v6, "com.samsung.telephony.extra.IS_TWO_PHONE_MODE"

    invoke-virtual {v1, v6, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 641
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getIsFocus()Ljava/lang/String;

    move-result-object v2

    const-string v6, "1"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v7, "com.samsung.telephony.extra.MT_CONFERENCE"

    invoke-virtual {v1, v7, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    new-array v2, v5, [Ljava/lang/String;

    .line 642
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getNumberPlus()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v4

    const-string v7, "android.telephony.ims.extra.FORWARDED_NUMBER"

    .line 643
    invoke-virtual {v1, v7, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 644
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getAlertInfo()Ljava/lang/String;

    move-result-object v2

    const-string v8, "com.samsung.telephony.extra.ALERT_INFO"

    invoke-virtual {v1, v8, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    iget-object v2, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/ims/volte2/data/MediaProfile;->getRttMode()I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/telephony/ims/ImsStreamMediaProfile;->setRttMode(I)V

    .line 646
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getHistoryInfo()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    new-array v2, v5, [Ljava/lang/String;

    .line 647
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getHistoryInfo()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v4

    .line 648
    invoke-virtual {v1, v7, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 649
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getHistoryInfo()Ljava/lang/String;

    move-result-object v2

    const-string v7, "anonymous"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const-string v7, "com.samsung.telephony.extra.CALL_FORWARDING_PRESENTATION"

    if-eqz v2, :cond_6

    .line 650
    invoke-virtual {v1, v7, v6}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    const-string v2, "0"

    .line 652
    invoke-virtual {v1, v7, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    :cond_7
    :goto_4
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getVerstat()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 657
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getVerstat()Ljava/lang/String;

    move-result-object v2

    const-string v6, "com.samsung.telephony.extra.ims.VERSTAT"

    invoke-virtual {v1, v6, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getVerstat()Ljava/lang/String;

    move-result-object v2

    const-string v6, "TN-Validation-Passed"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 659
    invoke-virtual {v1, v5}, Landroid/telephony/ims/ImsCallProfile;->setCallerNumberVerificationStatus(I)V

    goto :goto_5

    .line 660
    :cond_8
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getVerstat()Ljava/lang/String;

    move-result-object v2

    const-string v6, "TN-Validation-Failed"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x2

    .line 661
    invoke-virtual {v1, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallerNumberVerificationStatus(I)V

    goto :goto_5

    .line 663
    :cond_9
    invoke-virtual {v1, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallerNumberVerificationStatus(I)V

    goto :goto_5

    .line 666
    :cond_a
    invoke-virtual {v1, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallerNumberVerificationStatus(I)V

    .line 669
    :goto_5
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getOrganization()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 670
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getOrganization()Ljava/lang/String;

    move-result-object v2

    const-string v6, "com.samsung.telephony.extra.ims.ORG"

    invoke-virtual {v1, v6, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    :cond_b
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getHDIcon()I

    move-result v2

    if-ne v2, v5, :cond_c

    .line 674
    iput v4, v1, Landroid/telephony/ims/ImsCallProfile;->mRestrictCause:I

    goto :goto_6

    :cond_c
    const/4 v2, 0x3

    .line 676
    iput v2, v1, Landroid/telephony/ims/ImsCallProfile;->mRestrictCause:I

    .line 679
    :goto_6
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getEchoCallId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 680
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getEchoCallId()Ljava/lang/String;

    move-result-object v2

    const-string v6, "com.samsung.ims.extra.ECHO_CALL_ID"

    invoke-virtual {v1, v6, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getEPSFBsuccess()Z

    move-result v2

    const-string v6, "com.samsung.ims.extra.EPSFB_SUCCESS"

    invoke-virtual {v1, v6, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 684
    :cond_d
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getEchoCellId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 685
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getEchoCellId()Ljava/lang/String;

    move-result-object v2

    const-string v6, "com.samsung.ims.extra.ECHO_CELL_ID"

    invoke-virtual {v1, v6, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    :cond_e
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->isVideoCRBT()Z

    move-result v2

    const-string v6, "com.samsung.telephony.extra.VIDEO_CRT_MT"

    const-string v7, "com.samsung.telephony.extra.VIDEO_CRBT"

    if-eqz v2, :cond_12

    .line 689
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getDirection()I

    move-result v2

    if-nez v2, :cond_f

    .line 690
    invoke-virtual {v1, v7, v5}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    goto :goto_8

    .line 691
    :cond_f
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getDirection()I

    move-result v2

    if-ne v2, v5, :cond_13

    .line 692
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getDelayRinging()Z

    move-result v2

    if-eqz v2, :cond_10

    sget v2, Lcom/sec/internal/constants/ims/ImsConstants$VcrtPost;->NO_VCRT:I

    goto :goto_7

    :cond_10
    iget-object v2, p0, Lcom/sec/internal/google/GoogleImsService;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {v2, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->isDsdaVtOnOtherSlot(I)Z

    move-result v2

    if-eqz v2, :cond_11

    sget v2, Lcom/sec/internal/constants/ims/ImsConstants$VcrtPost;->VCRT_RESTRICT:I

    goto :goto_7

    :cond_11
    sget v2, Lcom/sec/internal/constants/ims/ImsConstants$VcrtPost;->VCRT_AVAILABLE:I

    .line 693
    :goto_7
    invoke-virtual {v1, v6, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    goto :goto_8

    .line 696
    :cond_12
    invoke-virtual {v1, v7, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 697
    sget v2, Lcom/sec/internal/constants/ims/ImsConstants$VcrtPost;->NO_VCRT:I

    invoke-virtual {v1, v6, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 700
    :cond_13
    :goto_8
    iget-object v2, p0, Lcom/sec/internal/google/GoogleImsService;->mCmcImsServiceUtil:Lcom/sec/internal/google/cmc/CmcImsServiceUtil;

    invoke-virtual {v2, p1, v1, p2}, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->getPendingCallSession(ILandroid/telephony/ims/ImsCallProfile;Lcom/sec/ims/volte2/IImsCallSession;)V

    .line 703
    invoke-interface {p2}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v2

    if-lez v2, :cond_14

    .line 704
    sget-object v2, Lcom/sec/internal/google/GoogleImsService;->LOG_TAG:Ljava/lang/String;

    const-string v4, "getPendingCallSession, create imsCallSessionImpl for [CMC+D2D volte call]"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    new-instance v2, Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    iget-object v4, p0, Lcom/sec/internal/google/GoogleImsService;->mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    iget-object v5, p0, Lcom/sec/internal/google/GoogleImsService;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-direct {v2, p2, v4, v5}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;-><init>(Lcom/sec/ims/volte2/IImsCallSession;Lcom/sec/internal/google/cmc/CmcConnectivityController;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;)V

    .line 706
    new-instance p2, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;

    invoke-direct {p2, v1, v2, v3, p0}, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;-><init>(Landroid/telephony/ims/ImsCallProfile;Lcom/sec/internal/google/cmc/CmcCallSessionManager;Landroid/telephony/ims/aidl/IImsCallSessionListener;Lcom/sec/internal/google/GoogleImsService;)V

    goto :goto_9

    .line 708
    :cond_14
    sget-object v2, Lcom/sec/internal/google/GoogleImsService;->LOG_TAG:Ljava/lang/String;

    const-string v4, "getPendingCallSession, create imsCallSessionImpl for [NORMAL volte call]"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    new-instance v2, Lcom/sec/internal/google/ImsCallSessionImpl;

    invoke-direct {v2, v1, p2, v3, p0}, Lcom/sec/internal/google/ImsCallSessionImpl;-><init>(Landroid/telephony/ims/ImsCallProfile;Lcom/sec/ims/volte2/IImsCallSession;Landroid/telephony/ims/aidl/IImsCallSessionListener;Lcom/sec/internal/google/GoogleImsService;)V

    move-object p2, v2

    .line 711
    :goto_9
    iget-object v1, p0, Lcom/sec/internal/google/GoogleImsService;->mCallSessionList:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/sec/internal/google/ImsCallSessionImpl;->getCallIdInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    iget-object p0, p0, Lcom/sec/internal/google/GoogleImsService;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->isNotifyRejectedCall(I)Z

    move-result p0

    if-eqz p0, :cond_15

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getRejectCause()I

    move-result p0

    if-eqz p0, :cond_15

    .line 713
    iget-object p0, p2, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getRejectCause()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "android.telephony.ims.extra.CALL_DISCONNECT_CAUSE"

    invoke-virtual {p0, v1, p1}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getRejectCause()I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/sec/internal/google/ImsCallSessionImpl;->terminate(I)V

    :cond_15
    return-object p2

    .line 596
    :cond_16
    new-instance p0, Landroid/os/RemoteException;

    invoke-direct {p0}, Landroid/os/RemoteException;-><init>()V

    throw p0

    .line 592
    :cond_17
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Session does not exist"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 585
    :cond_18
    new-instance p0, Landroid/os/RemoteException;

    invoke-direct {p0}, Landroid/os/RemoteException;-><init>()V

    throw p0
.end method

.method public getRcsClientConfiguration(II)Ljava/lang/String;
    .locals 2

    .line 1585
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/google/GoogleImsService;->getConfig(I)Landroid/telephony/ims/aidl/IImsConfig;

    move-result-object p0

    invoke-interface {p0, p2}, Landroid/telephony/ims/aidl/IImsConfig;->getRcsClientConfiguration(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1587
    sget-object p2, Lcom/sec/internal/google/GoogleImsService;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRcsClientConfiguration: failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getRegistration(I)Landroid/telephony/ims/aidl/IImsRegistration;
    .locals 3

    .line 391
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v2, "getRegistration"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mRegistrations:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    iget-object p0, p0, Lcom/sec/internal/google/GoogleImsService;->mRegistrations:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/ims/aidl/IImsRegistration;

    return-object p0

    .line 396
    :cond_0
    new-instance v0, Lcom/sec/internal/google/GoogleImsService$ImsRegistrationImpl;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/google/GoogleImsService$ImsRegistrationImpl;-><init>(Lcom/sec/internal/google/GoogleImsService;I)V

    .line 397
    iget-object p0, p0, Lcom/sec/internal/google/GoogleImsService;->mRegistrations:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getSipNotifier()Lcom/sec/internal/google/SipTransportNotifier;
    .locals 0

    .line 1472
    iget-object p0, p0, Lcom/sec/internal/google/GoogleImsService;->mSipNotifier:Lcom/sec/internal/google/SipTransportNotifier;

    return-object p0
.end method

.method public getSipTransport(I)Landroid/telephony/ims/aidl/ISipTransport;
    .locals 3

    .line 404
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v2, "getSipTransport"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mSipTransport:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    iget-object p0, p0, Lcom/sec/internal/google/GoogleImsService;->mSipTransport:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/ims/aidl/ISipTransport;

    return-object p0

    .line 409
    :cond_0
    new-instance v0, Lcom/sec/internal/google/GoogleImsService$SipTransportImpl;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/google/GoogleImsService$SipTransportImpl;-><init>(Lcom/sec/internal/google/GoogleImsService;I)V

    .line 410
    iget-object p0, p0, Lcom/sec/internal/google/GoogleImsService;->mSipTransport:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getSmsFormat(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1003
    iget-object p0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v1, "getSmsFormat"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    sget-object p0, Lcom/sec/internal/google/GoogleImsService;->mSmsImpl:[Lcom/sec/internal/google/ImsSmsImpl;

    aget-object p0, p0, p1

    if-eqz p0, :cond_0

    .line 1008
    invoke-virtual {p0, p1}, Lcom/sec/internal/google/ImsSmsImpl;->getSmsFormat(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1006
    :cond_0
    new-instance p0, Landroid/os/RemoteException;

    invoke-direct {p0}, Landroid/os/RemoteException;-><init>()V

    throw p0
.end method

.method public getTrn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 872
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v2, "getTrn"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    iget-object p0, p0, Lcom/sec/internal/google/GoogleImsService;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-eqz p0, :cond_0

    .line 877
    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getTrn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 874
    :cond_0
    new-instance p0, Landroid/os/RemoteException;

    invoke-direct {p0}, Landroid/os/RemoteException;-><init>()V

    throw p0
.end method

.method public getUtInterface(I)Lcom/android/ims/internal/IImsUt;
    .locals 3

    .line 728
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v2, "getUtInterface"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    sget-object v0, Lcom/sec/internal/google/GoogleImsService;->mServiceList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/google/ServiceProfile;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 734
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/google/ServiceProfile;->getPhoneId()I

    move-result p1

    .line 735
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mUtList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 736
    iget-object p0, p0, Lcom/sec/internal/google/GoogleImsService;->mUtList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/ims/internal/IImsUt;

    return-object p0

    .line 738
    :cond_1
    new-instance v0, Lcom/sec/internal/google/ImsUtImpl;

    invoke-direct {v0, p1}, Lcom/sec/internal/google/ImsUtImpl;-><init>(I)V

    .line 739
    iget-object p0, p0, Lcom/sec/internal/google/GoogleImsService;->mUtList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getVolteRegHandle(Lcom/sec/internal/google/ServiceProfile;)I
    .locals 5

    .line 1324
    invoke-virtual {p1}, Lcom/sec/internal/google/ServiceProfile;->getServiceClass()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1325
    iget-object p0, p0, Lcom/sec/internal/google/GoogleImsService;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    if-eqz v2, :cond_0

    .line 1326
    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v3

    invoke-virtual {p1}, Lcom/sec/internal/google/ServiceProfile;->getPhoneId()I

    move-result v4

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->hasVolteService()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1327
    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v3

    if-nez v3, :cond_0

    .line 1328
    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result p0

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public hasConferenceHost()Z
    .locals 0

    .line 1024
    iget-object p0, p0, Lcom/sec/internal/google/GoogleImsService;->mConferenceHost:Lcom/sec/internal/google/ImsCallSessionImpl;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isCmcEmergencyCallSupported(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 902
    iget-object p0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string p1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v0, "isCmcEmergencyCallSupported"

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 906
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->isEmergencyCallSupported()Z

    move-result p0

    return p0

    .line 904
    :cond_0
    new-instance p0, Landroid/os/RemoteException;

    invoke-direct {p0}, Landroid/os/RemoteException;-><init>()V

    throw p0
.end method

.method public isConnected(III)Z
    .locals 0

    .line 358
    iget-object p0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string p2, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string p3, "isConnected"

    invoke-virtual {p0, p2, p3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    sget-object p0, Lcom/sec/internal/google/GoogleImsService;->mServiceList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 363
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public isEnabledWifiDirectFeature()Z
    .locals 0

    .line 191
    iget-object p0, p0, Lcom/sec/internal/google/GoogleImsService;->mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-virtual {p0}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->isEnabledWifiDirectFeature()Z

    move-result p0

    return p0
.end method

.method public isInitialMerge()Z
    .locals 0

    .line 1028
    iget-boolean p0, p0, Lcom/sec/internal/google/GoogleImsService;->mIsInitialMerge:Z

    return p0
.end method

.method public isOpened(I)Z
    .locals 2

    .line 375
    iget-object p0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v1, "isOpened"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    sget-object p0, Lcom/sec/internal/google/GoogleImsService;->mServiceList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method isOwnUrisChanged(ILcom/sec/ims/ImsRegistration;)Z
    .locals 2

    .line 1356
    invoke-direct {p0, p2}, Lcom/sec/internal/google/GoogleImsService;->extractOwnUrisFromReg(Lcom/sec/ims/ImsRegistration;)[Landroid/net/Uri;

    move-result-object p2

    .line 1358
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mOwnUris:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0, p2}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1362
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/google/GoogleImsService;->mOwnUris:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0
.end method

.method public notifyIntImsConfigChanged(III)V
    .locals 1

    .line 1595
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/google/GoogleImsService;->getConfig(I)Landroid/telephony/ims/aidl/IImsConfig;

    move-result-object p0

    invoke-interface {p0, p2, p3}, Landroid/telephony/ims/aidl/IImsConfig;->notifyIntImsConfigChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1597
    sget-object p2, Lcom/sec/internal/google/GoogleImsService;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "notifyIntImsConfigChanged: failed: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public notifyProvisionedIntValueChanged(III)V
    .locals 3

    .line 1565
    :try_start_0
    sget-object v0, Lcom/sec/internal/google/GoogleImsService;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyProvisionedIntValueChanged: item: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1566
    invoke-virtual {p0, p1}, Lcom/sec/internal/google/GoogleImsService;->getConfig(I)Landroid/telephony/ims/aidl/IImsConfig;

    move-result-object p0

    invoke-interface {p0, p2, p3}, Landroid/telephony/ims/aidl/IImsConfig;->notifyProvisionedIntValueChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1568
    sget-object p2, Lcom/sec/internal/google/GoogleImsService;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "notifyProvisionedIntValueChanged: failed: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public notifyProvisionedStringValueChanged(IILjava/lang/String;)V
    .locals 3

    .line 1575
    :try_start_0
    sget-object v0, Lcom/sec/internal/google/GoogleImsService;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyProvisionedStringValueChanged: item: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1576
    invoke-virtual {p0, p1}, Lcom/sec/internal/google/GoogleImsService;->getConfig(I)Landroid/telephony/ims/aidl/IImsConfig;

    move-result-object p0

    invoke-interface {p0, p2, p3}, Landroid/telephony/ims/aidl/IImsConfig;->notifyProvisionedStringValueChanged(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1578
    sget-object p2, Lcom/sec/internal/google/GoogleImsService;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "notifyProvisionedStringValueChanged: failed: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public notifyRcsAutoConfigurationErrorReceived(IILjava/lang/String;)V
    .locals 5

    .line 1540
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 1541
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const-string v3, "notifyRcsAutoConfigurationErrorReceived: error [%d %s]"

    .line 1540
    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1544
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/google/GoogleImsService;->getConfig(I)Landroid/telephony/ims/aidl/IImsConfig;

    move-result-object p0

    invoke-interface {p0, p2, p3}, Landroid/telephony/ims/aidl/IImsConfig;->notifyRcsAutoConfigurationErrorReceived(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1546
    sget-object p2, Lcom/sec/internal/google/GoogleImsService;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "notifyRcsAutoConfigurationErrorReceived: failed: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public notifyRcsAutoConfigurationReceived(I[BZ)V
    .locals 5

    .line 1519
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    array-length v3, p2

    .line 1520
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "notifyRcsAutoConfigurationReceived: size [%d], compressed [%s]"

    .line 1519
    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1523
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/google/GoogleImsService;->getConfig(I)Landroid/telephony/ims/aidl/IImsConfig;

    move-result-object p0

    invoke-interface {p0, p2, p3}, Landroid/telephony/ims/aidl/IImsConfig;->notifyRcsAutoConfigurationReceived([BZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1525
    sget-object p2, Lcom/sec/internal/google/GoogleImsService;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "notifyRcsAutoConfigurationReceived: failed: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public notifyRcsAutoConfigurationRemoved(I)V
    .locals 3

    .line 1532
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/google/GoogleImsService;->getConfig(I)Landroid/telephony/ims/aidl/IImsConfig;

    move-result-object p0

    invoke-interface {p0}, Landroid/telephony/ims/aidl/IImsConfig;->notifyRcsAutoConfigurationRemoved()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1534
    sget-object v0, Lcom/sec/internal/google/GoogleImsService;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyRcsAutoConfigurationRemoved: failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public notifyRcsPreConfigurationReceived(I[B)V
    .locals 5

    .line 1552
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    array-length v3, p2

    .line 1553
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "notifyRcsAutoConfigurationReceived: size [%d]"

    .line 1552
    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1556
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/google/GoogleImsService;->getConfig(I)Landroid/telephony/ims/aidl/IImsConfig;

    move-result-object p0

    invoke-interface {p0, p2}, Landroid/telephony/ims/aidl/IImsConfig;->notifyRcsPreConfigurationReceived([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1558
    sget-object p2, Lcom/sec/internal/google/GoogleImsService;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyRcsPreConfigurationReceived: failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public notifyStringImsConfigChanged(IILjava/lang/String;)V
    .locals 1

    .line 1604
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/google/GoogleImsService;->getConfig(I)Landroid/telephony/ims/aidl/IImsConfig;

    move-result-object p0

    invoke-interface {p0, p2, p3}, Landroid/telephony/ims/aidl/IImsConfig;->notifyStringImsConfigChanged(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1606
    sget-object p2, Lcom/sec/internal/google/GoogleImsService;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "notifyStringImsConfigChanged: failed: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onCallClosed(I)V
    .locals 0

    .line 1283
    iget-object p0, p0, Lcom/sec/internal/google/GoogleImsService;->mCallSessionList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onPublishUpdated(IILjava/lang/String;ILjava/lang/String;)V
    .locals 3

    .line 1657
    sget-object v0, Lcom/sec/internal/google/GoogleImsService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onPublishUpdated"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1658
    iget-object v1, p0, Lcom/sec/internal/google/GoogleImsService;->mRcsFeatureImpl:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1659
    iget-object p0, p0, Lcom/sec/internal/google/GoogleImsService;->mRcsFeatureImpl:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/google/RcsFeatureImpl;

    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/sec/internal/google/RcsFeatureImpl;->onPublishUpdated(ILjava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "onPublishUpdated: failed"

    .line 1661
    invoke-static {v0, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onRemoteCapabilityRequest(ILandroid/net/Uri;Ljava/util/Set;Landroid/telephony/ims/stub/CapabilityExchangeEventListener$OptionsRequestCallback;)V
    .locals 3
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

    .line 1667
    sget-object v0, Lcom/sec/internal/google/GoogleImsService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onRemoteCapabilityRequest"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1668
    iget-object v1, p0, Lcom/sec/internal/google/GoogleImsService;->mRcsFeatureImpl:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1669
    iget-object p0, p0, Lcom/sec/internal/google/GoogleImsService;->mRcsFeatureImpl:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/google/RcsFeatureImpl;

    invoke-virtual {p0, p2, p3, p4}, Lcom/sec/internal/google/RcsFeatureImpl;->onRemoteCapabilityRequest(Landroid/net/Uri;Ljava/util/Set;Landroid/telephony/ims/stub/CapabilityExchangeEventListener$OptionsRequestCallback;)V

    goto :goto_0

    :cond_0
    const-string p0, "onRemoteCapabilityRequest: failed"

    .line 1671
    invoke-static {v0, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onRequestPublishCapabilities(II)V
    .locals 3

    .line 1637
    sget-object v0, Lcom/sec/internal/google/GoogleImsService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onRequestPublishCapabilities"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1638
    iget-object v1, p0, Lcom/sec/internal/google/GoogleImsService;->mRcsFeatureImpl:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1639
    iget-object p0, p0, Lcom/sec/internal/google/GoogleImsService;->mRcsFeatureImpl:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/google/RcsFeatureImpl;

    invoke-virtual {p0, p2}, Lcom/sec/internal/google/RcsFeatureImpl;->onRequestPublishCapabilities(I)V

    goto :goto_0

    :cond_0
    const-string p0, "onRequestPublishCapabilities: failed"

    .line 1641
    invoke-static {v0, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onSmsReady(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 983
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v2, "onSmsReady"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    sget-object v0, Lcom/sec/internal/google/GoogleImsService;->mSmsImpl:[Lcom/sec/internal/google/ImsSmsImpl;

    aget-object v1, v0, p1

    if-nez v1, :cond_0

    .line 985
    new-instance v1, Lcom/sec/internal/google/ImsSmsImpl;

    iget-object v2, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/internal/google/GoogleImsService;->mSmsListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    invoke-direct {v1, v2, p1, p0}, Lcom/sec/internal/google/ImsSmsImpl;-><init>(Landroid/content/Context;ILandroid/telephony/ims/aidl/IImsSmsListener;)V

    aput-object v1, v0, p1

    goto :goto_0

    .line 987
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/google/GoogleImsService;->mSmsListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    invoke-virtual {v1, p0}, Lcom/sec/internal/google/ImsSmsImpl;->setSmsListener(Landroid/telephony/ims/aidl/IImsSmsListener;)V

    .line 989
    :goto_0
    sget-object p0, Lcom/sec/internal/google/GoogleImsService;->mSmsImpl:[Lcom/sec/internal/google/ImsSmsImpl;

    aget-object p0, p0, p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/google/ImsSmsImpl;->updateTPMR(I)V

    return-void
.end method

.method public onUnPublish(I)V
    .locals 3

    .line 1647
    sget-object v0, Lcom/sec/internal/google/GoogleImsService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onUnPublish"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1648
    iget-object v1, p0, Lcom/sec/internal/google/GoogleImsService;->mRcsFeatureImpl:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1649
    iget-object p0, p0, Lcom/sec/internal/google/GoogleImsService;->mRcsFeatureImpl:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/google/RcsFeatureImpl;

    invoke-virtual {p0}, Lcom/sec/internal/google/RcsFeatureImpl;->onUnPublish()V

    goto :goto_0

    :cond_0
    const-string p0, "onUnPublish: failed"

    .line 1651
    invoke-static {v0, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public open(IILandroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 284
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v2, "open"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p3, :cond_5

    if-eqz p4, :cond_5

    .line 289
    iget-object p3, p0, Lcom/sec/internal/google/GoogleImsService;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-nez p3, :cond_1

    .line 290
    iget-object p3, p0, Lcom/sec/internal/google/GoogleImsService;->mServiceModuleManager:Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    invoke-interface {p3}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p3

    iput-object p3, p0, Lcom/sec/internal/google/GoogleImsService;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-eqz p3, :cond_0

    goto :goto_0

    .line 292
    :cond_0
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Not ready to open"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 296
    :cond_1
    :goto_0
    sget-object p3, Lcom/sec/internal/google/GoogleImsService;->mServiceList:Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p3

    new-instance v1, Lcom/sec/internal/google/GoogleImsService$$ExternalSyntheticLambda3;

    invoke-direct {v1, p2, p1}, Lcom/sec/internal/google/GoogleImsService$$ExternalSyntheticLambda3;-><init>(II)V

    invoke-interface {p3, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p3

    .line 298
    invoke-interface {p3}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p3

    new-instance v1, Lcom/sec/internal/google/GoogleImsService$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/sec/internal/google/GoogleImsService$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {p3, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p3

    invoke-direct {p0}, Lcom/sec/internal/google/GoogleImsService;->getIncreasedServiceId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 300
    new-instance v1, Lcom/sec/internal/google/ServiceProfile;

    invoke-direct {v1, p1, p2, p4}, Lcom/sec/internal/google/ServiceProfile;-><init>(IILcom/android/ims/internal/IImsRegistrationListener;)V

    .line 301
    sget-object v2, Lcom/sec/internal/google/GoogleImsService;->mServiceList:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x3e8

    .line 304
    invoke-static {v1}, Lcom/sec/internal/google/DataTypeConvertor;->convertToGoogleImsReason(I)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v1

    invoke-interface {p4, v1}, Lcom/android/ims/internal/IImsRegistrationListener;->registrationDisconnected(Landroid/telephony/ims/ImsReasonInfo;)V

    const/4 v1, 0x1

    if-ne p2, v1, :cond_3

    .line 307
    iget-object v1, p0, Lcom/sec/internal/google/GoogleImsService;->mCapabilities:[Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    aget-object v1, v1, p1

    invoke-virtual {p0, v1}, Lcom/sec/internal/google/GoogleImsService;->convertCapaToFeature(Landroid/telephony/ims/feature/ImsFeature$Capabilities;)[I

    move-result-object v1

    invoke-interface {p4, p2, v1, v0}, Lcom/android/ims/internal/IImsRegistrationListener;->registrationFeatureCapabilityChanged(I[I[I)V

    .line 309
    iget-object p2, p0, Lcom/sec/internal/google/GoogleImsService;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    aget-object v2, p2, v1

    .line 310
    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v3

    if-ne v3, p1, :cond_2

    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->hasVolteService()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 311
    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getCurrentRat()I

    move-result v3

    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->isEpdgOverCellularData()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/sec/internal/google/GoogleImsService;->getRegistrationTech(IZ)I

    move-result v3

    invoke-interface {p4, v3}, Lcom/android/ims/internal/IImsRegistrationListener;->registrationConnectedWithRadioTech(I)V

    .line 313
    invoke-virtual {p0, p1, v2}, Lcom/sec/internal/google/GoogleImsService;->isOwnUrisChanged(ILcom/sec/ims/ImsRegistration;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 314
    iget-object v2, p0, Lcom/sec/internal/google/GoogleImsService;->mOwnUris:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/net/Uri;

    invoke-interface {p4, v2}, Lcom/android/ims/internal/IImsRegistrationListener;->registrationAssociatedUriChanged([Landroid/net/Uri;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 321
    :cond_3
    invoke-virtual {p0}, Lcom/sec/internal/google/GoogleImsService;->isEnabledWifiDirectFeature()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 322
    iget-object p0, p0, Lcom/sec/internal/google/GoogleImsService;->mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-virtual {p0}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->startP2pBind()V

    :cond_4
    return p3

    .line 286
    :cond_5
    throw v0
.end method

.method public prepareComposerDataBundle(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    .line 1371
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_5

    .line 1372
    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "importance"

    .line 1373
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1375
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "EXTRA_CALL_IMPORTANCE"

    .line 1374
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    const-string v0, "image"

    .line 1378
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1380
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "EXTRA_CALL_IMAGE"

    .line 1379
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string/jumbo v0, "subject"

    .line 1383
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1385
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "EXTRA_CALL_SUBJECT"

    .line 1384
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v0, "longitude"

    .line 1388
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1390
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "EXTRA_CALL_LONGITUDE"

    .line 1389
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v0, "latitude"

    .line 1393
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1395
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "EXTRA_CALL_LATITUDE"

    .line 1394
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v0, "radius"

    .line 1398
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1400
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "EXTRA_CALL_RADIUS"

    .line 1399
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-object p0
.end method

.method public preparePushCall(Lcom/sec/ims/DialogEvent;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 204
    sget-object v0, Lcom/sec/internal/google/GoogleImsService;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preparePushCall(), size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/google/GoogleImsService;->mCallSessionList:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    .line 205
    iget-object v1, p0, Lcom/sec/internal/google/GoogleImsService;->mCallSessionList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_1

    const-string p1, "Push for [PD]"

    .line 206
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object p0, p0, Lcom/sec/internal/google/GoogleImsService;->mCallSessionList:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 208
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/google/ImsCallSessionImpl;

    .line 209
    iget-object v0, p1, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-eqz v0, :cond_0

    .line 210
    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isP2pPrimaryType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    new-instance p0, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v0, 0x1777

    invoke-direct {p0, v0, v0}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 213
    iget-object p1, p1, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p1, p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionResumeFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    const-string v1, "Push for [SD]"

    .line 220
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-virtual {p1}, Lcom/sec/ims/DialogEvent;->getRegId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/google/GoogleImsService;->getCmcTypeFromRegHandle(I)I

    move-result p0

    .line 222
    sget-object v0, Lcom/sec/internal/google/GoogleImsService;->mMultEndPoints:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/ims/DialogEvent;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/google/ImsMultiEndPointImpl;

    invoke-virtual {v0, p1, p0}, Lcom/sec/internal/google/ImsMultiEndPointImpl;->setP2pPushDialogInfo(Lcom/sec/ims/DialogEvent;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public putConferenceState(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 0

    .line 1048
    invoke-direct/range {p0 .. p5}, Lcom/sec/internal/google/GoogleImsService;->getConfStateBundle(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)Landroid/os/Bundle;

    move-result-object p2

    .line 1049
    iget-object p0, p0, Lcom/sec/internal/google/GoogleImsService;->mImsConferenceState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putConferenceStateList(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/telephony/ims/ImsCallProfile;)V
    .locals 6

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p7

    .line 1054
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/google/GoogleImsService;->getConfStateBundle(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)Landroid/os/Bundle;

    move-result-object p2

    const-string/jumbo p3, "sipError"

    .line 1056
    invoke-virtual {p2, p3, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p3, "uriType"

    const-string/jumbo p4, "tel"

    .line 1057
    invoke-virtual {p2, p3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "disconnected"

    .line 1059
    invoke-virtual {p3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x2

    const-string p4, "disconnectCause"

    .line 1060
    invoke-virtual {p2, p4, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1062
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/google/GoogleImsService;->mImsConferenceState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public queryCapabilityConfiguration(III)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p0, 0x1

    if-eq p1, p0, :cond_2

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/16 p0, 0x8

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string/jumbo p0, "smsip"

    goto :goto_0

    :cond_1
    const-string p0, "mmtel-video"

    goto :goto_0

    :cond_2
    const-string p0, "mmtel"

    .line 1514
    :goto_0
    invoke-static {p0, p2, p3}, Lcom/sec/internal/ims/registry/ImsRegistry;->isServiceAvailable(Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public removeConferenceState(I)V
    .locals 0

    .line 1083
    iget-object p0, p0, Lcom/sec/internal/google/GoogleImsService;->mImsConferenceState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeImsFeature(II)V
    .locals 3

    .line 1625
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v2, "removeImsFeature"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 1628
    iget-object p2, p0, Lcom/sec/internal/google/GoogleImsService;->mRcsFeatureImpl:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1629
    sget-object p2, Lcom/sec/internal/google/GoogleImsService;->LOG_TAG:Ljava/lang/String;

    const-string v0, "removeImsFeature: remove RcsFeatureImpl"

    invoke-static {p2, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1630
    iget-object p0, p0, Lcom/sec/internal/google/GoogleImsService;->mRcsFeatureImpl:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public sendPublishDialog(ILcom/android/internal/telephony/PublishDialog;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 892
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v2, "sendPublishDialog"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-eqz v0, :cond_0

    .line 897
    iget-object p0, p0, Lcom/sec/internal/google/GoogleImsService;->mCmcImsServiceUtil:Lcom/sec/internal/google/cmc/CmcImsServiceUtil;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->sendPublishDialog(ILcom/android/internal/telephony/PublishDialog;)V

    return-void

    .line 894
    :cond_0
    new-instance p0, Landroid/os/RemoteException;

    invoke-direct {p0}, Landroid/os/RemoteException;-><init>()V

    throw p0
.end method

.method public sendRpSmma(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 994
    iget-object p0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v1, "sendRpSmma"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    sget-object p0, Lcom/sec/internal/google/GoogleImsService;->mSmsImpl:[Lcom/sec/internal/google/ImsSmsImpl;

    aget-object p0, p0, p1

    if-eqz p0, :cond_0

    .line 998
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/google/ImsSmsImpl;->sendRpSmma(ILjava/lang/String;)V

    return-void

    .line 996
    :cond_0
    new-instance p0, Landroid/os/RemoteException;

    invoke-direct {p0}, Landroid/os/RemoteException;-><init>()V

    throw p0
.end method

.method public sendSms(IIILjava/lang/String;Ljava/lang/String;Z[B)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 923
    iget-object p0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string p6, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v0, "sendSms"

    invoke-virtual {p0, p6, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    sget-object p0, Lcom/sec/internal/google/GoogleImsService;->mSmsImpl:[Lcom/sec/internal/google/ImsSmsImpl;

    aget-object v0, p0, p1

    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p7

    .line 928
    invoke-virtual/range {v0 .. v6}, Lcom/sec/internal/google/ImsSmsImpl;->sendSms(IIILjava/lang/String;Ljava/lang/String;[B)V

    return-void

    .line 925
    :cond_0
    new-instance p0, Landroid/os/RemoteException;

    invoke-direct {p0}, Landroid/os/RemoteException;-><init>()V

    throw p0
.end method

.method public setCallSession(ILcom/sec/internal/google/ImsCallSessionImpl;)V
    .locals 0

    .line 1040
    iget-object p0, p0, Lcom/sec/internal/google/GoogleImsService;->mCallSessionList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setConferenceHost(Lcom/sec/internal/google/ImsCallSessionImpl;)V
    .locals 0

    .line 1016
    iput-object p1, p0, Lcom/sec/internal/google/GoogleImsService;->mConferenceHost:Lcom/sec/internal/google/ImsCallSessionImpl;

    if-nez p1, :cond_0

    .line 1019
    iget-object p0, p0, Lcom/sec/internal/google/GoogleImsService;->mImsConferenceState:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    :cond_0
    return-void
.end method

.method public setConnectivityController(Lcom/sec/internal/google/cmc/CmcConnectivityController;)V
    .locals 3

    .line 186
    iput-object p1, p0, Lcom/sec/internal/google/GoogleImsService;->mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    .line 187
    new-instance p1, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;

    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/google/GoogleImsService;->mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    iget-object v2, p0, Lcom/sec/internal/google/GoogleImsService;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-direct {p1, v0, p0, v1, v2}, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;-><init>(Landroid/content/Context;Lcom/sec/internal/google/GoogleImsService;Lcom/sec/internal/google/cmc/CmcConnectivityController;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;)V

    iput-object p1, p0, Lcom/sec/internal/google/GoogleImsService;->mCmcImsServiceUtil:Lcom/sec/internal/google/cmc/CmcImsServiceUtil;

    return-void
.end method

.method public setInitialMerge(Z)V
    .locals 0

    .line 1032
    iput-boolean p1, p0, Lcom/sec/internal/google/GoogleImsService;->mIsInitialMerge:Z

    return-void
.end method

.method public setRegistrationListener(ILcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 2

    .line 381
    iget-object p0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string/jumbo v1, "setRegistrationListener"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    sget-object p0, Lcom/sec/internal/google/GoogleImsService;->mServiceList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/google/ServiceProfile;

    if-eqz p0, :cond_0

    .line 384
    invoke-virtual {p0, p2}, Lcom/sec/internal/google/ServiceProfile;->setRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V

    .line 385
    sget-object p2, Lcom/sec/internal/google/GoogleImsService;->mServiceList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setRetryCount(III)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 933
    iget-object p0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v1, "sendSms"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    sget-object p0, Lcom/sec/internal/google/GoogleImsService;->mSmsImpl:[Lcom/sec/internal/google/ImsSmsImpl;

    aget-object p0, p0, p1

    if-eqz p0, :cond_0

    .line 937
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/google/ImsSmsImpl;->setRetryCount(III)V

    return-void

    .line 935
    :cond_0
    new-instance p0, Landroid/os/RemoteException;

    invoke-direct {p0}, Landroid/os/RemoteException;-><init>()V

    throw p0
.end method

.method public setSecImsMmTelEventListener(ILcom/android/ims/internal/ISecImsMmTelEventListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 917
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string/jumbo v2, "setSecImsMmTelEventListener"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    iget-object p0, p0, Lcom/sec/internal/google/GoogleImsService;->mSecMmtelListener:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setServiceUrn(Ljava/lang/String;)V
    .locals 0

    .line 1044
    iput-object p1, p0, Lcom/sec/internal/google/GoogleImsService;->mServiceUrn:Ljava/lang/String;

    return-void
.end method

.method public setSmsListener(ILandroid/telephony/ims/aidl/IImsSmsListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 969
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string/jumbo v2, "setSmsListener"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    sget-object v0, Lcom/sec/internal/google/GoogleImsService;->mSmsListenerList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 971
    sget-object v0, Lcom/sec/internal/google/GoogleImsService;->mSmsListenerList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p2, :cond_0

    .line 972
    sget-object v0, Lcom/sec/internal/google/GoogleImsService;->mSmsListenerList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 974
    :cond_0
    iput-object p2, p0, Lcom/sec/internal/google/GoogleImsService;->mSmsListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    goto :goto_0

    .line 976
    :cond_1
    iput-object p2, p0, Lcom/sec/internal/google/GoogleImsService;->mSmsListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    .line 977
    sget-object p2, Lcom/sec/internal/google/GoogleImsService;->mSmsListenerList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/google/GoogleImsService;->mSmsListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    invoke-interface {p2, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public setTtyMode(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 807
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string/jumbo v2, "setTtyMode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    iget-object p0, p0, Lcom/sec/internal/google/GoogleImsService;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-eqz p0, :cond_0

    .line 812
    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->setTtyMode(II)V

    return-void

    .line 810
    :cond_0
    new-instance p0, Landroid/os/RemoteException;

    invoke-direct {p0}, Landroid/os/RemoteException;-><init>()V

    throw p0
.end method

.method public setUiTTYMode(IILandroid/os/Message;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 791
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string/jumbo v2, "setUiTTYMode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    sget-object v0, Lcom/sec/internal/google/GoogleImsService;->mServiceList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/google/ServiceProfile;

    if-nez p1, :cond_0

    return-void

    .line 797
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/google/ServiceProfile;->getPhoneId()I

    move-result p1

    .line 798
    iget-object p0, p0, Lcom/sec/internal/google/GoogleImsService;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-eqz p0, :cond_1

    .line 801
    invoke-interface {p0, p1, p2, p3}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->setUiTTYMode(IILandroid/os/Message;)V

    return-void

    .line 799
    :cond_1
    new-instance p0, Landroid/os/RemoteException;

    invoke-direct {p0}, Landroid/os/RemoteException;-><init>()V

    throw p0
.end method

.method public setVideoCrtAudio(IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 863
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string/jumbo v2, "setVideoCrtAudio"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    iget-object p0, p0, Lcom/sec/internal/google/GoogleImsService;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-eqz p0, :cond_0

    .line 867
    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->setVideoCrtAudio(IZ)V

    return-void

    .line 865
    :cond_0
    new-instance p0, Landroid/os/RemoteException;

    invoke-direct {p0}, Landroid/os/RemoteException;-><init>()V

    throw p0
.end method

.method public startLocalRingBackTone(III)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 845
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string/jumbo v2, "startLocalRingBackTone"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    iget-object p0, p0, Lcom/sec/internal/google/GoogleImsService;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-eqz p0, :cond_0

    .line 849
    invoke-interface {p0, p1, p2, p3}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->startLocalRingBackTone(III)I

    move-result p0

    return p0

    .line 847
    :cond_0
    new-instance p0, Landroid/os/RemoteException;

    invoke-direct {p0}, Landroid/os/RemoteException;-><init>()V

    throw p0
.end method

.method public stopLocalRingBackTone()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 854
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string/jumbo v2, "stopLocalRingBackTone"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    iget-object p0, p0, Lcom/sec/internal/google/GoogleImsService;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-eqz p0, :cond_0

    .line 858
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->stopLocalRingBackTone()I

    move-result p0

    return p0

    .line 856
    :cond_0
    new-instance p0, Landroid/os/RemoteException;

    invoke-direct {p0}, Landroid/os/RemoteException;-><init>()V

    throw p0
.end method

.method public triggerAutoConfigurationForApp(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 911
    iget-object p0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string/jumbo v1, "triggerAutoConfigurationForApp"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    invoke-static {p1}, Lcom/sec/internal/ims/registry/ImsRegistry;->triggerAutoConfigurationForApp(I)V

    return-void
.end method

.method public turnOffIms(I)V
    .locals 1

    .line 763
    iget-object p0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string p1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string/jumbo v0, "turnOffIms"

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public turnOnIms(I)V
    .locals 1

    .line 758
    iget-object p0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string p1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string/jumbo v0, "turnOnIms"

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateCapabilities(ILandroid/telephony/ims/feature/ImsFeature$Capabilities;)V
    .locals 1

    .line 1205
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mCapabilities:[Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1206
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mCapabilities:[Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    invoke-virtual {p2}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->copy()Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    move-result-object p2

    aput-object p2, v0, p1

    .line 1207
    iget-object p0, p0, Lcom/sec/internal/google/GoogleImsService;->mImsNotifier:Lcom/sec/internal/google/ImsNotifier;

    invoke-virtual {p0, p1}, Lcom/sec/internal/google/ImsNotifier;->notifyFeatureCapableChanged(I)V

    :cond_0
    return-void
.end method

.method public updateCapabilities(I[I[Z)V
    .locals 5

    .line 1213
    sget-object v0, Lcom/sec/internal/google/GoogleImsService;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateCapabilities, phoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    move v1, v0

    .line 1216
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_3

    .line 1217
    aget-boolean v2, p3, v0

    iget-object v3, p0, Lcom/sec/internal/google/GoogleImsService;->mCapabilities:[Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    aget-object v3, v3, p1

    aget v4, p2, v0

    invoke-virtual {v3, v4}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->isCapable(I)Z

    move-result v3

    if-eq v2, v3, :cond_2

    .line 1218
    aget-boolean v1, p3, v0

    if-eqz v1, :cond_0

    .line 1219
    iget-object v1, p0, Lcom/sec/internal/google/GoogleImsService;->mCapabilities:[Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    aget-object v1, v1, p1

    aget v2, p2, v0

    invoke-virtual {v1, v2}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->addCapabilities(I)V

    .line 1220
    aget v1, p2, v0

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/sec/internal/google/GoogleImsService;->mSmsImpl:[Lcom/sec/internal/google/ImsSmsImpl;

    aget-object v1, v1, p1

    if-eqz v1, :cond_1

    .line 1221
    invoke-virtual {v1, p1}, Lcom/sec/internal/google/ImsSmsImpl;->updateTPMR(I)V

    goto :goto_1

    .line 1224
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/google/GoogleImsService;->mCapabilities:[Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    aget-object v1, v1, p1

    aget v2, p2, v0

    invoke-virtual {v1, v2}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->removeCapabilities(I)V

    :cond_1
    :goto_1
    const/4 v1, 0x1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    .line 1232
    iget-object p0, p0, Lcom/sec/internal/google/GoogleImsService;->mImsNotifier:Lcom/sec/internal/google/ImsNotifier;

    invoke-virtual {p0, p1}, Lcom/sec/internal/google/ImsNotifier;->notifyFeatureCapableChanged(I)V

    :cond_4
    return-void
.end method

.method public updateParticipant(ILjava/lang/String;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    move v1, p1

    move-object v4, p2

    .line 1167
    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/google/GoogleImsService;->updateParticipant(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public updateParticipant(ILjava/lang/String;I)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v4, p2

    move v5, p3

    .line 1171
    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/google/GoogleImsService;->updateParticipant(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public updateParticipant(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 1175
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mImsConferenceState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    if-eqz v0, :cond_4

    .line 1178
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "user"

    .line 1179
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1182
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "endpoint"

    .line 1183
    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1186
    :cond_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string/jumbo p2, "status"

    .line 1187
    invoke-virtual {v0, p2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 p2, -0x1

    if-eq p5, p2, :cond_3

    const-string p2, "android.telephony.ims.extra.CALL_DISCONNECT_CAUSE"

    .line 1191
    invoke-virtual {v0, p2, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1194
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/google/GoogleImsService;->mImsConferenceState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method public updateRcsCapabilities(ILandroid/telephony/ims/feature/ImsFeature$Capabilities;)V
    .locals 1

    .line 1238
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mRcsCapabilities:[Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1239
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mRcsCapabilities:[Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    invoke-virtual {p2}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->copy()Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    move-result-object p2

    aput-object p2, v0, p1

    .line 1240
    iget-object p2, p0, Lcom/sec/internal/google/GoogleImsService;->mRcsFeatureImpl:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1241
    iget-object p0, p0, Lcom/sec/internal/google/GoogleImsService;->mRcsFeatureImpl:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/google/RcsFeatureImpl;

    invoke-virtual {p0}, Lcom/sec/internal/google/RcsFeatureImpl;->notifyRcsFeatureCapableChanged()V

    :cond_0
    return-void
.end method

.method public updateRcsCapabilities(I[I[Z)V
    .locals 5

    .line 1248
    sget-object v0, Lcom/sec/internal/google/GoogleImsService;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateRcsCapabilities, phoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    move v1, v0

    .line 1251
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_2

    .line 1252
    aget-boolean v2, p3, v0

    iget-object v3, p0, Lcom/sec/internal/google/GoogleImsService;->mRcsCapabilities:[Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    aget-object v3, v3, p1

    aget v4, p2, v0

    invoke-virtual {v3, v4}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->isCapable(I)Z

    move-result v3

    if-eq v2, v3, :cond_1

    .line 1253
    aget-boolean v1, p3, v0

    if-eqz v1, :cond_0

    .line 1254
    iget-object v1, p0, Lcom/sec/internal/google/GoogleImsService;->mRcsCapabilities:[Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    aget-object v1, v1, p1

    aget v2, p2, v0

    invoke-virtual {v1, v2}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->addCapabilities(I)V

    goto :goto_1

    .line 1256
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/google/GoogleImsService;->mRcsCapabilities:[Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    aget-object v1, v1, p1

    aget v2, p2, v0

    invoke-virtual {v1, v2}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->removeCapabilities(I)V

    :goto_1
    const/4 v1, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 1262
    iget-object p2, p0, Lcom/sec/internal/google/GoogleImsService;->mRcsFeatureImpl:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1263
    iget-object p0, p0, Lcom/sec/internal/google/GoogleImsService;->mRcsFeatureImpl:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/google/RcsFeatureImpl;

    invoke-virtual {p0}, Lcom/sec/internal/google/RcsFeatureImpl;->notifyRcsFeatureCapableChanged()V

    :cond_3
    return-void
.end method

.method public updateSecConferenceInfo(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 10

    .line 1099
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1100
    iget-object v1, p1, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    const-string v2, "secConferenceInfo"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 1102
    iget-object v3, p0, Lcom/sec/internal/google/GoogleImsService;->mImsConferenceState:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1103
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 1104
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    const/4 v6, 0x0

    if-eqz v1, :cond_2

    .line 1108
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1109
    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1110
    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    goto :goto_1

    :cond_2
    move-object v7, v6

    :goto_1
    if-eqz v7, :cond_3

    .line 1117
    invoke-virtual {v7, v4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1118
    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1120
    :cond_3
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/sec/internal/google/GoogleImsService;->getCallSession(I)Lcom/sec/internal/google/ImsCallSessionImpl;

    move-result-object v7

    const-string v8, "callId"

    .line 1121
    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_4

    .line 1123
    invoke-virtual {p0, v8}, Lcom/sec/internal/google/GoogleImsService;->getCallSession(I)Lcom/sec/internal/google/ImsCallSessionImpl;

    move-result-object v7

    :cond_4
    if-eqz v7, :cond_0

    .line 1127
    invoke-virtual {v7}, Lcom/sec/internal/google/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v7

    const-string v8, "cna"

    .line 1128
    invoke-virtual {v7, v8}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v8, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    :try_start_0
    iget-object v7, p0, Lcom/sec/internal/google/GoogleImsService;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v7, v8}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getSessionByCallId(I)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 1133
    invoke-interface {v7}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_5
    if-eqz v6, :cond_6

    .line 1137
    invoke-virtual {v6}, Lcom/sec/ims/volte2/data/CallProfile;->getVerstat()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 1138
    invoke-virtual {v6}, Lcom/sec/ims/volte2/data/CallProfile;->getVerstat()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.samsung.telephony.extra.ims.VERSTAT"

    invoke-virtual {v4, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1140
    :cond_6
    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 1145
    :cond_7
    iget-object p0, p1, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    invoke-virtual {p0, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
