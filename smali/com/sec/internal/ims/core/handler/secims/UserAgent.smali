.class public Lcom/sec/internal/ims/core/handler/secims/UserAgent;
.super Lcom/sec/internal/helper/StateMachine;
.source "UserAgent.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/IUserAgent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;,
        Lcom/sec/internal/ims/core/handler/secims/UserAgent$ProhibitedState;,
        Lcom/sec/internal/ims/core/handler/secims/UserAgent$EmergencyState;,
        Lcom/sec/internal/ims/core/handler/secims/UserAgent$TerminatingState;,
        Lcom/sec/internal/ims/core/handler/secims/UserAgent$DeregisteringState;,
        Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReRegisteringState;,
        Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;,
        Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteringState;,
        Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReadyState;,
        Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState;,
        Lcom/sec/internal/ims/core/handler/secims/UserAgent$DefaultState;,
        Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;,
        Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;
    }
.end annotation


# static fields
.field private static final ECC_IWLAN:Ljava/lang/String; = "IWLAN"

.field private static final EVENT_ACCEPT_CALL_TRANSFER:I = 0x15

.field public static final EVENT_AKA_CHALLENGE_TIME_OUT:I = 0x2e

.field private static final EVENT_CREATE_UA:I = 0x1

.field private static final EVENT_DELAYED_DEREGISTERED:I = 0x320

.field private static final EVENT_DELETE_UA:I = 0x4

.field private static final EVENT_DEREGISTERED:I = 0xc

.field private static final EVENT_DEREGISTERED_TIMEOUT:I = 0xd

.field private static final EVENT_DEREGISTER_COMPLETE:I = 0xb

.field private static final EVENT_DISCONNECTED:I = 0x64

.field private static final EVENT_EMERGENCY_REGISTRATION_FAILED:I = 0x384

.field private static final EVENT_RECOVER_REGISESSION:I = 0x2328

.field private static final EVENT_REGISTERED:I = 0x8

.field private static final EVENT_REGISTER_REQUESTED:I = 0x7

.field private static final EVENT_REG_INFO_NOTIFY:I = 0x65

.field private static final EVENT_REQUEST_ANSWER_CALL:I = 0x10

.field private static final EVENT_REQUEST_CANCEL_TRANSFER_CALL:I = 0x2d

.field private static final EVENT_REQUEST_DELETE_TCP_CLIENT_SOCKET:I = 0x31

.field private static final EVENT_REQUEST_DEREGISTER:I = 0xa

.field private static final EVENT_REQUEST_DEREGISTER_INTERNAL:I = 0x2b

.field private static final EVENT_REQUEST_END_CALL:I = 0xf

.field private static final EVENT_REQUEST_EXTEND_TO_CONFERENCE:I = 0x6b

.field private static final EVENT_REQUEST_HANDLE_CMC_CSFB:I = 0x37

.field private static final EVENT_REQUEST_HANDLE_DTMF:I = 0x17

.field private static final EVENT_REQUEST_HOLD_CALL:I = 0x11

.field private static final EVENT_REQUEST_HOLD_VIDEO:I = 0x1a

.field private static final EVENT_REQUEST_MAKE_CALL:I = 0xe

.field private static final EVENT_REQUEST_MAKE_CONF_CALL:I = 0x24

.field private static final EVENT_REQUEST_MERGE_CALL:I = 0x13

.field private static final EVENT_REQUEST_MODIFY_CALL_TYPE:I = 0x68

.field private static final EVENT_REQUEST_MODIFY_VIDEO_QUALITY:I = 0x6f

.field private static final EVENT_REQUEST_NETWORK_SUSPENDED:I = 0x26

.field private static final EVENT_REQUEST_PROGRESS_INCOMING_CALL:I = 0x19

.field private static final EVENT_REQUEST_PUBLISH:I = 0x29

.field private static final EVENT_REQUEST_PUBLISH_DIALOG:I = 0x2f

.field private static final EVENT_REQUEST_PULLING_CALL:I = 0x1d

.field private static final EVENT_REQUEST_REGISTER:I = 0x6

.field private static final EVENT_REQUEST_REJECT_CALL:I = 0x16

.field private static final EVENT_REQUEST_REJECT_MODIFY_CALL_TYPE:I = 0x6a

.field private static final EVENT_REQUEST_REPLY_MODIFY_CALL_TYPE:I = 0x69

.field private static final EVENT_REQUEST_RESUME_CALL:I = 0x12

.field private static final EVENT_REQUEST_RESUME_VIDEO:I = 0x1b

.field private static final EVENT_REQUEST_SEND_CMC_INFO:I = 0x3b

.field private static final EVENT_REQUEST_SEND_INFO:I = 0x30

.field private static final EVENT_REQUEST_SEND_TEXT:I = 0x33

.field private static final EVENT_REQUEST_START_CAMERA:I = 0x1c

.field private static final EVENT_REQUEST_START_CMC_RECORD:I = 0x3a

.field private static final EVENT_REQUEST_START_RECORD:I = 0x38

.field private static final EVENT_REQUEST_START_VIDEO_EARLYMEDIA:I = 0x36

.field private static final EVENT_REQUEST_STOP_CAMERA:I = 0x1e

.field private static final EVENT_REQUEST_STOP_RECORD:I = 0x39

.field private static final EVENT_REQUEST_TRANSFER_CALL:I = 0x14

.field private static final EVENT_REQUEST_UNPUBLISH:I = 0x2a

.field private static final EVENT_REQUEST_UPDATE_CALL:I = 0x25

.field private static final EVENT_REQUEST_UPDATE_CALLWAITING_STATUS:I = 0x27

.field private static final EVENT_RETRY_UA_CREATE:I = 0x3

.field private static final EVENT_SEND_AUTH_RESPONSE:I = 0x9

.field private static final EVENT_SEND_MEDIA_EVENT:I = 0x3e9

.field private static final EVENT_SEND_REQUEST:I = 0x3e8

.field private static final EVENT_SEND_SMS:I = 0x1f

.field private static final EVENT_SEND_SMS_RESPONSE:I = 0x21

.field private static final EVENT_SEND_SMS_RP_ACK_RESPONSE:I = 0x20

.field private static final EVENT_SET_VIDEO_CRT_AUDIO:I = 0x70

.field private static final EVENT_START_LOCAL_RINGBACKTONE:I = 0x6d

.field private static final EVENT_STOP_LOCAL_RINGBACKTONE:I = 0x6e

.field private static final EVENT_SUPPORT_VOWIFI_DEPRIORITIZE_NR5G:I = 0x3d

.field private static final EVENT_SUPPORT_VOWIFI_DISABLE_5GSA:I = 0x3c

.field private static final EVENT_UA_CREATED:I = 0x2

.field private static final EVENT_UA_DELETED:I = 0x5

.field private static final EVENT_UPDATE_AUDIO_INTERFACE:I = 0x6c

.field private static final EVENT_UPDATE_CONF_CALL:I = 0x23

.field private static final EVENT_UPDATE_GEOLOCATION:I = 0x2c

.field private static final EVENT_UPDATE_PANI:I = 0x22

.field private static final EVENT_UPDATE_PANI_RESPONSE:I = 0x7d0

.field private static final EVENT_UPDATE_RAT:I = 0x32

.field private static final EVENT_UPDATE_ROUTE_TABLE:I = 0x66

.field private static final EVENT_UPDATE_TIME_IN_PLANI:I = 0x34

.field private static final EVENT_UPDATE_VCE_CONFIG:I = 0x28

.field private static final LOG_TAG:Ljava/lang/String; = "UserAgent"

.field private static final PERMISSION:Ljava/lang/String; = "com.sec.imsservice.PERMISSION"

.field private static final PROPERTY_ECC_PATH:Ljava/lang/String; = "ril.subtype"

.field protected static final hexArray:[C


# instance fields
.field mContext:Landroid/content/Context;

.field private final mDefaultState:Lcom/sec/internal/helper/State;

.field private final mDeregisteringState:Lcom/sec/internal/helper/State;

.field private mDestState:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

.field private mDeviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/ims/util/NameAddr;",
            ">;"
        }
    .end annotation
.end field

.field private mEcmpMode:I

.field private final mEmergencyState:Lcom/sec/internal/helper/State;

.field private mEpdgOverCellularData:Z

.field private mEpdgStatus:Z

.field private mError:Lcom/sec/ims/util/SipError;

.field private mHandle:I

.field private mImpuList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/ims/util/NameAddr;",
            ">;"
        }
    .end annotation
.end field

.field private final mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

.field private mImsProfile:Lcom/sec/ims/settings/ImsProfile;

.field private final mInitialState:Lcom/sec/internal/helper/State;

.field private mListener:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;

.field private mNetwork:Landroid/net/Network;

.field private mNotifyServiceList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPcscfGoneDeregi:Z

.field private mPdn:I

.field private mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

.field private mPhoneId:I

.field private final mProhibitedState:Lcom/sec/internal/helper/State;

.field private final mReRegisteringState:Lcom/sec/internal/helper/State;

.field private final mReadyState:Lcom/sec/internal/helper/State;

.field private mRegisterSipResponse:Ljava/lang/String;

.field private final mRegisteredState:Lcom/sec/internal/helper/State;

.field private final mRegisteringState:Lcom/sec/internal/helper/State;

.field private mRegistration:Lcom/sec/ims/ImsRegistration;

.field private mRetryAfter:I

.field private mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

.field private mStackIf:Lcom/sec/internal/ims/core/handler/secims/IStackIF;

.field private mSuspendStatus:Z

.field mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

.field private final mTerminatingState:Lcom/sec/internal/helper/State;

.field private mThirdPartyFeatureTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUaProfile:Lcom/sec/internal/ims/core/handler/secims/UaProfile;


# direct methods
.method public static synthetic $r8$lambda$SwqruuE7Sg8X--6tNa0YhkpFZ1c(Lcom/sec/ims/util/ImsUri$UriType;Lcom/sec/ims/util/NameAddr;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->lambda$getFirstImpuByUriType$0(Lcom/sec/ims/util/ImsUri$UriType;Lcom/sec/ims/util/NameAddr;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDestState(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mDestState:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEmergencyState(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/helper/State;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mEmergencyState:Lcom/sec/internal/helper/State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmError(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/ims/util/SipError;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mError:Lcom/sec/ims/util/SipError;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandle(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I
    .locals 0

    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mHandle:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmImpuList(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImpuList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmImsProfile(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/ims/settings/ImsProfile;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImsProfile:Lcom/sec/ims/settings/ImsProfile;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmListener(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mListener:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNotifyServiceList(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mNotifyServiceList:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPcscfGoneDeregi(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPcscfGoneDeregi:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I
    .locals 0

    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmReadyState(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/helper/State;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mReadyState:Lcom/sec/internal/helper/State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRegistration(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/ims/ImsRegistration;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mRegistration:Lcom/sec/ims/ImsRegistration;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRetryAfter(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I
    .locals 0

    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mRetryAfter:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSimManager(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/interfaces/ims/core/ISimManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStackIf(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmThirdPartyFeatureTags(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mThirdPartyFeatureTags:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUaProfile(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UaProfile;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mUaProfile:Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmEcmpMode(Lcom/sec/internal/ims/core/handler/secims/UserAgent;I)V
    .locals 0

    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mEcmpMode:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmError(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/ims/util/SipError;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mError:Lcom/sec/ims/util/SipError;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmHandle(Lcom/sec/internal/ims/core/handler/secims/UserAgent;I)V
    .locals 0

    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mHandle:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPcscfGoneDeregi(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPcscfGoneDeregi:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRegisterSipResponse(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mRegisterSipResponse:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRegistration(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/ims/ImsRegistration;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mRegistration:Lcom/sec/ims/ImsRegistration;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRetryAfter(Lcom/sec/internal/ims/core/handler/secims/UserAgent;I)V
    .locals 0

    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mRetryAfter:I

    return-void
.end method

.method static bridge synthetic -$$Nest$maddDevice(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/ims/util/NameAddr;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->addDevice(Lcom/sec/ims/util/NameAddr;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$maddImpu(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/ims/util/NameAddr;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->addImpu(Lcom/sec/ims/util/NameAddr;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mbuildImsRegistration(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/ims/ImsRegistration;
    .locals 0

    invoke-direct {p0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->buildImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mremoveDevice(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/ims/util/ImsUri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->removeDevice(Lcom/sec/ims/util/ImsUri;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveImpu(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/ims/util/ImsUri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->removeImpu(Lcom/sec/ims/util/ImsUri;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetDestState(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->setDestState(Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateRouteTable(Lcom/sec/internal/ims/core/handler/secims/UserAgent;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->updateRouteTable(ILjava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string v0, "0123456789ABCDEF"

    .line 2385
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->hexArray:[C

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/sec/internal/ims/core/handler/secims/IStackIF;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/interfaces/ims/core/IPdnController;Lcom/sec/internal/interfaces/ims/core/ISimManager;Lcom/sec/internal/interfaces/ims/IImsFramework;)V
    .locals 2

    const-string v0, "UserAgent - "

    .line 238
    invoke-direct {p0, v0, p2}, Lcom/sec/internal/helper/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Handler;)V

    const/4 p2, -0x1

    .line 81
    iput p2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mHandle:I

    const/4 p2, 0x0

    .line 83
    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImsProfile:Lcom/sec/ims/settings/ImsProfile;

    .line 84
    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mUaProfile:Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    .line 85
    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mRegistration:Lcom/sec/ims/ImsRegistration;

    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPcscfGoneDeregi:Z

    .line 90
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImpuList:Ljava/util/List;

    .line 94
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mDeviceList:Ljava/util/List;

    .line 95
    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mContext:Landroid/content/Context;

    .line 96
    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 97
    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    .line 98
    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 100
    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mListener:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;

    .line 101
    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    .line 102
    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mRegisterSipResponse:Ljava/lang/String;

    .line 104
    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mEcmpMode:I

    .line 105
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mEpdgStatus:Z

    .line 106
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mEpdgOverCellularData:Z

    .line 107
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mSuspendStatus:Z

    .line 109
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mNotifyServiceList:Ljava/util/Set;

    .line 110
    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mThirdPartyFeatureTags:Ljava/util/List;

    .line 111
    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mNetwork:Landroid/net/Network;

    .line 112
    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->INITIAL:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    iput-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mDestState:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    .line 113
    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    .line 952
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$DefaultState;

    invoke-direct {v0, p0, p2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$DefaultState;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$DefaultState-IA;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mDefaultState:Lcom/sec/internal/helper/State;

    .line 1039
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState;

    invoke-direct {v0, p0, p2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState-IA;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mInitialState:Lcom/sec/internal/helper/State;

    .line 1165
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReadyState;

    invoke-direct {v0, p0, p2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReadyState;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReadyState-IA;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mReadyState:Lcom/sec/internal/helper/State;

    .line 1268
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteringState;

    invoke-direct {v0, p0, p2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteringState;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteringState-IA;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mRegisteringState:Lcom/sec/internal/helper/State;

    .line 1819
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;

    invoke-direct {v0, p0, p2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState-IA;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mRegisteredState:Lcom/sec/internal/helper/State;

    .line 1877
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReRegisteringState;

    invoke-direct {v0, p0, p2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReRegisteringState;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReRegisteringState-IA;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mReRegisteringState:Lcom/sec/internal/helper/State;

    .line 1966
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$DeregisteringState;

    invoke-direct {v0, p0, p2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$DeregisteringState;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$DeregisteringState-IA;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mDeregisteringState:Lcom/sec/internal/helper/State;

    .line 2010
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$TerminatingState;

    invoke-direct {v0, p0, p2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$TerminatingState;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$TerminatingState-IA;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mTerminatingState:Lcom/sec/internal/helper/State;

    .line 2132
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EmergencyState;

    invoke-direct {v0, p0, p2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EmergencyState;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$EmergencyState-IA;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mEmergencyState:Lcom/sec/internal/helper/State;

    .line 2159
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$ProhibitedState;

    invoke-direct {v0, p0, p2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$ProhibitedState;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$ProhibitedState-IA;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mProhibitedState:Lcom/sec/internal/helper/State;

    .line 239
    iput-object p6, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 240
    iput-object p7, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 241
    invoke-interface {p6}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result p2

    iput p2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    .line 242
    invoke-direct {p0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->initState()V

    .line 244
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mContext:Landroid/content/Context;

    .line 245
    iput-object p3, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    .line 246
    iput-object p4, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 247
    iput-object p5, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/sec/internal/interfaces/ims/IImsFramework;)V
    .locals 2

    const-string v0, "UserAgent - "

    .line 251
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/helper/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Handler;)V

    const/4 p1, -0x1

    .line 81
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mHandle:I

    const/4 p1, 0x0

    .line 83
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImsProfile:Lcom/sec/ims/settings/ImsProfile;

    .line 84
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mUaProfile:Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    .line 85
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mRegistration:Lcom/sec/ims/ImsRegistration;

    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPcscfGoneDeregi:Z

    .line 90
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImpuList:Ljava/util/List;

    .line 94
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mDeviceList:Ljava/util/List;

    .line 95
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mContext:Landroid/content/Context;

    .line 96
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 97
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    .line 98
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 100
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mListener:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;

    .line 101
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    .line 102
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mRegisterSipResponse:Ljava/lang/String;

    .line 104
    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mEcmpMode:I

    .line 105
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mEpdgStatus:Z

    .line 106
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mEpdgOverCellularData:Z

    .line 107
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mSuspendStatus:Z

    .line 109
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mNotifyServiceList:Ljava/util/Set;

    .line 110
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mThirdPartyFeatureTags:Ljava/util/List;

    .line 111
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mNetwork:Landroid/net/Network;

    .line 112
    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->INITIAL:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    iput-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mDestState:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    .line 113
    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    .line 952
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$DefaultState;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$DefaultState;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$DefaultState-IA;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mDefaultState:Lcom/sec/internal/helper/State;

    .line 1039
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState-IA;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mInitialState:Lcom/sec/internal/helper/State;

    .line 1165
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReadyState;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReadyState;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReadyState-IA;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mReadyState:Lcom/sec/internal/helper/State;

    .line 1268
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteringState;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteringState;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteringState-IA;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mRegisteringState:Lcom/sec/internal/helper/State;

    .line 1819
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState-IA;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mRegisteredState:Lcom/sec/internal/helper/State;

    .line 1877
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReRegisteringState;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReRegisteringState;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReRegisteringState-IA;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mReRegisteringState:Lcom/sec/internal/helper/State;

    .line 1966
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$DeregisteringState;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$DeregisteringState;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$DeregisteringState-IA;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mDeregisteringState:Lcom/sec/internal/helper/State;

    .line 2010
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$TerminatingState;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$TerminatingState;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$TerminatingState-IA;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mTerminatingState:Lcom/sec/internal/helper/State;

    .line 2132
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EmergencyState;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EmergencyState;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$EmergencyState-IA;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mEmergencyState:Lcom/sec/internal/helper/State;

    .line 2159
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$ProhibitedState;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$ProhibitedState;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$ProhibitedState-IA;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mProhibitedState:Lcom/sec/internal/helper/State;

    .line 252
    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    return-void
.end method

.method private addDevice(Lcom/sec/ims/util/NameAddr;)V
    .locals 6

    .line 2455
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mDeviceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/util/NameAddr;

    .line 2456
    invoke-virtual {p1}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/ims/util/ImsUri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2457
    invoke-virtual {p1}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    const-string v4, "gr"

    invoke-virtual {v3, v4}, Lcom/sec/ims/util/ImsUri;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/sec/ims/util/ImsUri;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    .line 2459
    invoke-virtual {p1}, Lcom/sec/ims/util/NameAddr;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/ims/util/NameAddr;->setDisplayName(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 2464
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mDeviceList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method private addImpu(Lcom/sec/ims/util/NameAddr;)V
    .locals 7

    .line 2424
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImpuList:Ljava/util/List;

    monitor-enter v0

    .line 2425
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImpuList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/util/NameAddr;

    .line 2426
    invoke-virtual {p1}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    invoke-virtual {v3}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/ims/util/ImsUri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2427
    invoke-virtual {p1}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    const-string v5, "gr"

    invoke-virtual {v4, v5}, Lcom/sec/ims/util/ImsUri;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    const-string v6, "gr"

    invoke-virtual {v5, v6}, Lcom/sec/ims/util/ImsUri;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x0

    .line 2429
    invoke-virtual {p1}, Lcom/sec/ims/util/NameAddr;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/ims/util/NameAddr;->setDisplayName(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 2434
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImpuList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2436
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private buildImsRegistration()Lcom/sec/ims/ImsRegistration;
    .locals 8

    .line 2541
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSubscriptionId()I

    move-result v0

    .line 2542
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mUaProfile:Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v2, v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->extractDomain(Lcom/sec/internal/ims/core/handler/secims/UaProfile;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2544
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 2545
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mNotifyServiceList:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 2546
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mNotifyServiceList:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2547
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mNotifyServiceList:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    goto :goto_0

    .line 2549
    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mUaProfile:Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getServiceList()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2552
    :goto_0
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mUaProfile:Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getPcscfIp()Ljava/lang/String;

    move-result-object v3

    .line 2554
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKOROmcCode()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    if-ne v4, v5, :cond_1

    const-string v4, "mmtel"

    .line 2555
    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2556
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v4

    if-nez v4, :cond_1

    .line 2557
    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImpuList:Ljava/util/List;

    invoke-direct {p0, v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPAssociatedUri2nd(Ljava/util/Set;Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    const-string v4, ""

    .line 2559
    :goto_1
    invoke-static {}, Lcom/sec/ims/ImsRegistration;->getBuilder()Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v5

    .line 2561
    iget v6, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mHandle:I

    invoke-virtual {v5, v6}, Lcom/sec/ims/ImsRegistration$Builder;->setHandle(I)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v5

    new-instance v6, Lcom/sec/ims/settings/ImsProfile;

    iget-object v7, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImsProfile:Lcom/sec/ims/settings/ImsProfile;

    invoke-direct {v6, v7}, Lcom/sec/ims/settings/ImsProfile;-><init>(Lcom/sec/ims/settings/ImsProfile;)V

    .line 2562
    invoke-virtual {v5, v6}, Lcom/sec/ims/ImsRegistration$Builder;->setImsProfile(Lcom/sec/ims/settings/ImsProfile;)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v5

    .line 2563
    invoke-virtual {v5, v2}, Lcom/sec/ims/ImsRegistration$Builder;->setServices(Ljava/util/Set;)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mUaProfile:Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    .line 2564
    invoke-virtual {v6}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getImpi()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/ims/ImsRegistration$Builder;->setPrivateUserId(Ljava/lang/String;)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImpuList:Ljava/util/List;

    .line 2565
    invoke-virtual {v5, v6}, Lcom/sec/ims/ImsRegistration$Builder;->setPublicUserId(Ljava/util/List;)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mUaProfile:Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    .line 2566
    invoke-virtual {v6}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getImpu()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/ims/ImsRegistration$Builder;->setRegisteredPublicUserId(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v5

    .line 2567
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPreferredImpu(Ljava/util/Set;)Lcom/sec/ims/util/NameAddr;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/sec/ims/ImsRegistration$Builder;->setPreferredPublicUserId(Lcom/sec/ims/util/NameAddr;)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v2

    .line 2568
    invoke-virtual {v2, v1}, Lcom/sec/ims/ImsRegistration$Builder;->setDomain(Ljava/lang/String;)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v1

    .line 2569
    invoke-virtual {v1, v3}, Lcom/sec/ims/ImsRegistration$Builder;->setPcscf(Ljava/lang/String;)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mEpdgStatus:Z

    .line 2570
    invoke-virtual {v1, v2}, Lcom/sec/ims/ImsRegistration$Builder;->setEpdgStatus(Z)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mEpdgOverCellularData:Z

    .line 2571
    invoke-virtual {v1, v2}, Lcom/sec/ims/ImsRegistration$Builder;->setEpdgOverCellularData(Z)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v1

    iget v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPdn:I

    .line 2572
    invoke-virtual {v1, v2}, Lcom/sec/ims/ImsRegistration$Builder;->setPdnType(I)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mUaProfile:Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    .line 2573
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/ims/ImsRegistration$Builder;->setUuid(Ljava/lang/String;)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mUaProfile:Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    .line 2574
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/ims/ImsRegistration$Builder;->setInstanceId(Ljava/lang/String;)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v1

    iget v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mEcmpMode:I

    .line 2575
    invoke-virtual {v1, v2}, Lcom/sec/ims/ImsRegistration$Builder;->setEcmpStatus(I)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mDeviceList:Ljava/util/List;

    .line 2576
    invoke-virtual {v1, v2}, Lcom/sec/ims/ImsRegistration$Builder;->setDeviceList(Ljava/util/List;)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mRegisterSipResponse:Ljava/lang/String;

    .line 2577
    invoke-virtual {v1, v2}, Lcom/sec/ims/ImsRegistration$Builder;->setRegisterSipResponse(Ljava/lang/String;)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mNetwork:Landroid/net/Network;

    .line 2578
    invoke-virtual {v1, v2}, Lcom/sec/ims/ImsRegistration$Builder;->setNetwork(Landroid/net/Network;)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v1

    .line 2579
    invoke-virtual {v1, v4}, Lcom/sec/ims/ImsRegistration$Builder;->setPAssociatedUri2nd(Ljava/lang/String;)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v1

    .line 2580
    invoke-virtual {v1, v0}, Lcom/sec/ims/ImsRegistration$Builder;->setSubscriptionId(I)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 2581
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sec/ims/ImsRegistration$Builder;->setPhoneId(I)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object p0

    .line 2582
    invoke-virtual {p0}, Lcom/sec/ims/ImsRegistration$Builder;->build()Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    return-object p0
.end method

.method public static bytesToHex([B)Ljava/lang/String;
    .locals 6

    .line 2388
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    const/4 v1, 0x0

    .line 2389
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 2390
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v3, v1, 0x2

    .line 2391
    sget-object v4, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->hexArray:[C

    ushr-int/lit8 v5, v2, 0x4

    aget-char v5, v4, v5

    aput-char v5, v0, v3

    add-int/lit8 v3, v3, 0x1

    and-int/lit8 v2, v2, 0xf

    .line 2392
    aget-char v2, v4, v2

    aput-char v2, v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2394
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method private extractDomain(Lcom/sec/internal/ims/core/handler/secims/UaProfile;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 2398
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getDomain()Ljava/lang/String;

    move-result-object v0

    .line 2400
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    const-string v3, "]"

    const-string v4, "UserAgent["

    if-eq v1, v2, :cond_3

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/Mno;->CU:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 2405
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getImpu()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2407
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImpuList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/ims/util/NameAddr;

    .line 2408
    invoke-virtual {p2}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->getPhoneContext()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2409
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "extractDomain: For IMSI-based registration, use phone-context as domain."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2412
    invoke-virtual {p2}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/util/ImsUri;->getPhoneContext()Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0

    .line 2401
    :cond_3
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "extractDomain:  don\'t use phone-context as domain."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private extractPAssociatedUri2nd(Ljava/util/List;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/NameAddr;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2596
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "+82"

    const-string v2, "0"

    .line 2598
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2600
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UserAgent["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "extractPAssociatedUri2nd"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2602
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/ims/util/NameAddr;

    .line 2603
    invoke-virtual {v4}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 2605
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "extractPAssociatedUri2nd  uri"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2606
    invoke-virtual {v4}, Lcom/sec/ims/util/ImsUri;->getUriType()Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object v5

    sget-object v6, Lcom/sec/ims/util/ImsUri$UriType;->SIP_URI:Lcom/sec/ims/util/ImsUri$UriType;

    if-ne v5, v6, :cond_1

    .line 2607
    invoke-virtual {v4}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 2608
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "extractPAssociatedUri2nd: uri.toString() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2609
    invoke-virtual {v4}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2608
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2610
    invoke-virtual {v4}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getOnlyNumberFromURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_1

    if-eqz v4, :cond_1

    .line 2612
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    move-object v1, v4

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private getFirstImpuByUriType(Lcom/sec/ims/util/ImsUri$UriType;)Lcom/sec/ims/util/NameAddr;
    .locals 1

    .line 2488
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImpuList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$$ExternalSyntheticLambda0;-><init>(Lcom/sec/ims/util/ImsUri$UriType;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/ims/util/NameAddr;

    return-object p0
.end method

.method private getOnlyNumberFromURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 2626
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const-string/jumbo v1, "tel:"

    .line 2627
    invoke-virtual {v0, v1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "sip:"

    .line 2628
    invoke-virtual {v0, v1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "*31#"

    const-string v2, "[*]31#"

    .line 2629
    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "#31#"

    .line 2630
    invoke-virtual {v0, v1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2632
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UserAgent["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "getOnlyNumberFromURI"

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2634
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move-object v0, p1

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2635
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2636
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    goto :goto_0

    :cond_1
    const/4 p0, 0x2

    const-string p1, "@"

    const-string v1, ";"

    .line 2640
    filled-new-array {p1, v1}, [Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, p0, :cond_3

    .line 2643
    aget-object v3, p1, v2

    .line 2644
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2645
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method private getPAssociatedUri2nd(Ljava/util/Set;Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/NameAddr;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2587
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->extractPAssociatedUri2nd(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    .line 2588
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UserAgent["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getPAssociatedUri2nd() : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method private getPreferredImpu(Ljava/util/Set;)Lcom/sec/ims/util/NameAddr;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sec/ims/util/NameAddr;"
        }
    .end annotation

    .line 2494
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mUaProfile:Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 2495
    sget-object v1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-ne v0, v1, :cond_0

    .line 2496
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mUaProfile:Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getImpi()Ljava/lang/String;

    move-result-object v0

    .line 2497
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mUaProfile:Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getImpu()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    const/16 v5, 0x40

    .line 2498
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-lez v5, :cond_4

    if-eqz v1, :cond_4

    .line 2500
    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2501
    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->getUser()Ljava/lang/String;

    move-result-object v5

    .line 2502
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2507
    new-instance v0, Lcom/sec/ims/util/NameAddr;

    invoke-direct {v0, v2, v1}, Lcom/sec/ims/util/NameAddr;-><init>(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)V

    move-object v4, v0

    goto :goto_1

    .line 2510
    :cond_0
    sget-object v1, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_3

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImsProfile:Lcom/sec/ims/settings/ImsProfile;

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->isSipUriOnly()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 2513
    :cond_1
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_4

    .line 2514
    :cond_2
    sget-object v0, Lcom/sec/ims/util/ImsUri$UriType;->TEL_URI:Lcom/sec/ims/util/ImsUri$UriType;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getFirstImpuByUriType(Lcom/sec/ims/util/ImsUri$UriType;)Lcom/sec/ims/util/NameAddr;

    move-result-object v4

    goto :goto_1

    .line 2512
    :cond_3
    :goto_0
    sget-object v0, Lcom/sec/ims/util/ImsUri$UriType;->SIP_URI:Lcom/sec/ims/util/ImsUri$UriType;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getFirstImpuByUriType(Lcom/sec/ims/util/ImsUri$UriType;)Lcom/sec/ims/util/NameAddr;

    move-result-object v4

    .line 2517
    :cond_4
    :goto_1
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPreferredImpu: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "UserAgent"

    invoke-static {v5, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-nez v4, :cond_7

    .line 2520
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImpuList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2521
    new-instance v4, Lcom/sec/ims/util/NameAddr;

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mUaProfile:Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getImpu()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v4, v2, p0}, Lcom/sec/ims/util/NameAddr;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2527
    :cond_5
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getRcsServiceList()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 2528
    sget-object p1, Lcom/sec/ims/util/ImsUri$UriType;->TEL_URI:Lcom/sec/ims/util/ImsUri$UriType;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getFirstImpuByUriType(Lcom/sec/ims/util/ImsUri$UriType;)Lcom/sec/ims/util/NameAddr;

    move-result-object v4

    :cond_6
    if-nez v4, :cond_7

    .line 2531
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImpuList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    .line 2532
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImpuList:Ljava/util/List;

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Lcom/sec/ims/util/NameAddr;

    :cond_7
    :goto_2
    return-object v4
.end method

.method private initState()V
    .locals 2

    .line 865
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mDefaultState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;)V

    .line 866
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mInitialState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mDefaultState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 867
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mReadyState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mDefaultState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 868
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mRegisteringState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mReadyState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 869
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mRegisteredState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mReadyState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 870
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mReRegisteringState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mRegisteredState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 871
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mDeregisteringState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mReadyState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 872
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mTerminatingState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mReadyState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 873
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mProhibitedState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mDefaultState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 874
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mEmergencyState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mReadyState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 875
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mInitialState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->setInitialState(Lcom/sec/internal/helper/State;)V

    .line 876
    invoke-virtual {p0}, Lcom/sec/internal/helper/StateMachine;->start()V

    return-void
.end method

.method private static synthetic lambda$getFirstImpuByUriType$0(Lcom/sec/ims/util/ImsUri$UriType;Lcom/sec/ims/util/NameAddr;)Z
    .locals 0

    .line 2488
    invoke-virtual {p1}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->getUriType()Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private removeDevice(Lcom/sec/ims/util/ImsUri;)V
    .locals 2

    .line 2469
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mDeviceList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 2471
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2472
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/util/NameAddr;

    .line 2474
    invoke-virtual {v0}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/ims/util/ImsUri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2475
    invoke-virtual {v0}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    const-string v1, "gr"

    invoke-virtual {v0, v1}, Lcom/sec/ims/util/ImsUri;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1}, Lcom/sec/ims/util/ImsUri;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2476
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private removeImpu(Lcom/sec/ims/util/ImsUri;)V
    .locals 2

    .line 2440
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImpuList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 2442
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2443
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/util/NameAddr;

    .line 2445
    invoke-virtual {v0}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/ims/util/ImsUri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2446
    invoke-virtual {v0}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    const-string v1, "gr"

    invoke-virtual {v0, v1}, Lcom/sec/ims/util/ImsUri;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1}, Lcom/sec/ims/util/ImsUri;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2447
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setDestState(Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;)V
    .locals 3

    .line 880
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserAgent["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDestState to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mDestState:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    .line 884
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->DEFAULT:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    if-ne p1, v0, :cond_0

    .line 885
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mDefaultState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto/16 :goto_0

    .line 886
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->READY:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    if-ne p1, v0, :cond_1

    .line 887
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mReadyState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto/16 :goto_0

    .line 888
    :cond_1
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->INITIAL:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    if-ne p1, v0, :cond_2

    .line 889
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mInitialState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_0

    .line 890
    :cond_2
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->REGISTERING:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    if-ne p1, v0, :cond_3

    .line 891
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mRegisteringState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_0

    .line 892
    :cond_3
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->REGISTERED:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    if-ne p1, v0, :cond_4

    .line 893
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mRegisteredState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_0

    .line 894
    :cond_4
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->REREGISTERING:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    if-ne p1, v0, :cond_5

    .line 895
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mReRegisteringState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_0

    .line 896
    :cond_5
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->DEREGISTERING:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    if-ne p1, v0, :cond_6

    .line 897
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mDeregisteringState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_0

    .line 898
    :cond_6
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->TERMINATING:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    if-ne p1, v0, :cond_7

    .line 899
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mTerminatingState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_0

    .line 900
    :cond_7
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->EMERGENCY:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    if-ne p1, v0, :cond_8

    .line 901
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mEmergencyState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_0

    .line 902
    :cond_8
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->PROHIBITTED:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    if-ne p1, v0, :cond_9

    .line 903
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mProhibitedState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_0

    .line 905
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected State : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UserAgent"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mDefaultState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    :goto_0
    return-void
.end method

.method private updateRouteTable(ILjava/lang/String;)V
    .locals 3

    .line 2364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserAgent["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UpdateRouteTable: op "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " address "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2372
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPdn:I

    invoke-interface {p1, p0, p2}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->removeRouteToHostAddress(ILjava/lang/String;)Z

    goto :goto_0

    .line 2368
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPdn:I

    invoke-interface {p1, p0, p2}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->requestRouteToHostAddress(ILjava/lang/String;)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public acceptCallTranfer(IZILjava/lang/String;)V
    .locals 3

    .line 670
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acceptCallTransfer: session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " accepted "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " reason "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 673
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "sessionId"

    .line 674
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "accepted"

    .line 675
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-lez p3, :cond_0

    const-string/jumbo p1, "status"

    .line 677
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "reason"

    .line 678
    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/16 p1, 0x15

    .line 681
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public answerCall(IILjava/lang/String;)V
    .locals 3

    .line 445
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "answerCall: sessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " callType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " cmcCallEstablishTime "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x10

    .line 448
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/sec/internal/helper/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public cancelTransferCall(ILandroid/os/Message;)V
    .locals 3

    .line 621
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelTransferCall: sessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 622
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "sessionId"

    .line 623
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "result"

    .line 624
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 p1, 0x2d

    .line 626
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public conference([Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Message;)V
    .locals 2

    .line 552
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "confuri"

    .line 553
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "calltype"

    .line 554
    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "eventSubscribe"

    .line 555
    invoke-virtual {v0, p2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "dialogType"

    .line 556
    invoke-virtual {v0, p2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "participants"

    .line 557
    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string p1, "origUri"

    .line 558
    invoke-virtual {v0, p1, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "referUriType"

    .line 559
    invoke-virtual {v0, p1, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "removeReferUriType"

    .line 560
    invoke-virtual {v0, p1, p8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "referUriAsserted"

    .line 561
    invoke-virtual {v0, p1, p9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "useAnonymousUpdate"

    .line 562
    invoke-virtual {v0, p1, p10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "supportPrematureEnd"

    .line 563
    invoke-virtual {v0, p1, p11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "result"

    .line 564
    invoke-virtual {v0, p1, p12}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 p1, 0x24

    .line 566
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public create()I
    .locals 2

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserAgent["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "create:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 302
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    const/4 p0, 0x0

    return p0
.end method

.method public deleteTcpClientSocket()V
    .locals 3

    .line 361
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    const-string v1, "UserAgent"

    const-string v2, "deleteTcpClientSocket:"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x31

    .line 362
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public deregister(ZZ)V
    .locals 9

    .line 2707
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deregister: local="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", needDelay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-eqz p2, :cond_0

    const/16 v4, 0xa

    const/4 v6, -0x1

    const-wide/16 v7, 0x1f4

    move-object v3, p0

    move v5, p1

    .line 2711
    invoke-virtual/range {v3 .. v8}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(IIIJ)V

    goto :goto_0

    :cond_0
    const/16 p2, 0xa

    .line 2713
    invoke-virtual {p0, p2, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(II)V

    :goto_0
    return-void
.end method

.method public deregisterInternal(Z)V
    .locals 9

    .line 342
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deregisterInternal: local="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v6, -0x1

    const-wide/16 v7, 0x1f4

    const/16 v4, 0x2b

    move-object v3, p0

    move v5, p1

    .line 343
    invoke-virtual/range {v3 .. v8}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(IIIJ)V

    return-void
.end method

.method public deregisterLocal()V
    .locals 3

    .line 347
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    const-string v1, "UserAgent"

    const-string v2, "deregisterLocal:"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0xd

    .line 348
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public endCall(ILcom/sec/internal/constants/ims/SipReason;)V
    .locals 3

    .line 439
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endCall: sessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0xf

    const/4 v1, -0x1

    .line 441
    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/sec/internal/helper/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public extendToConfCall([Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 573
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "confuri"

    .line 574
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "calltype"

    .line 575
    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "eventSubscribe"

    .line 576
    invoke-virtual {v0, p2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "dialogType"

    .line 577
    invoke-virtual {v0, p2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "participants"

    .line 578
    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string p1, "sessId"

    .line 579
    invoke-virtual {v0, p1, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "origUri"

    .line 580
    invoke-virtual {v0, p1, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "referUriType"

    .line 581
    invoke-virtual {v0, p1, p8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "removeReferUriType"

    .line 582
    invoke-virtual {v0, p1, p9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "referUriAsserted"

    .line 583
    invoke-virtual {v0, p1, p10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "useAnonymousUpdate"

    .line 584
    invoke-virtual {v0, p1, p11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "supportPrematureEnd"

    .line 585
    invoke-virtual {v0, p1, p12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 p1, 0x6b

    .line 587
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public getErrorCode()Lcom/sec/ims/util/SipError;
    .locals 0

    .line 2655
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mError:Lcom/sec/ims/util/SipError;

    return-object p0
.end method

.method public getHandle()I
    .locals 0

    .line 2718
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mHandle:I

    return p0
.end method

.method public getImsProfile()Lcom/sec/ims/settings/ImsProfile;
    .locals 0

    .line 2679
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImsProfile:Lcom/sec/ims/settings/ImsProfile;

    return-object p0
.end method

.method public getImsRegistration()Lcom/sec/ims/ImsRegistration;
    .locals 0

    .line 2751
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mRegistration:Lcom/sec/ims/ImsRegistration;

    return-object p0
.end method

.method public getNetwork()Landroid/net/Network;
    .locals 0

    .line 2761
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mNetwork:Landroid/net/Network;

    return-object p0
.end method

.method public getPdn()I
    .locals 0

    .line 268
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPdn:I

    return p0
.end method

.method public getPdnController()Lcom/sec/internal/interfaces/ims/core/IPdnController;
    .locals 0

    .line 276
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    return-object p0
.end method

.method public getPhoneId()I
    .locals 0

    .line 2684
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    return p0
.end method

.method public getStateName()Ljava/lang/String;
    .locals 0

    .line 284
    invoke-virtual {p0}, Lcom/sec/internal/helper/StateMachine;->getCurrentState()Lcom/sec/internal/helper/IState;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/helper/IState;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSuspendState()Z
    .locals 0

    .line 357
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mSuspendStatus:Z

    return p0
.end method

.method public getUaProfile()Lcom/sec/internal/ims/core/handler/secims/UaProfile;
    .locals 0

    .line 2659
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mUaProfile:Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    return-object p0
.end method

.method public handleCmcCsfb(I)V
    .locals 2

    .line 831
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleCmcCsfb: sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UserAgent"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "sessionId"

    .line 834
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 p1, 0x37

    .line 835
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public handleDtmf(IIIILandroid/os/Message;)V
    .locals 3

    .line 452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserAgent["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleDtmf: sessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " operation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "sessionId"

    .line 456
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "code"

    .line 457
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "mode"

    .line 458
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "operation"

    .line 459
    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "result"

    .line 460
    invoke-virtual {v0, p1, p5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 p1, 0x17

    .line 461
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public holdCall(ILandroid/os/Message;)V
    .locals 3

    .line 475
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "holdCall: sessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 477
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "sessionId"

    .line 478
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "result"

    .line 479
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 p1, 0x11

    .line 480
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public holdVideo(ILandroid/os/Message;)V
    .locals 3

    .line 493
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "holdVideo: sessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 494
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "sessionId"

    .line 495
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "result"

    .line 496
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 p1, 0x1a

    .line 497
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public isDeregistring()Z
    .locals 1

    .line 2756
    invoke-virtual {p0}, Lcom/sec/internal/helper/StateMachine;->getCurrentState()Lcom/sec/internal/helper/IState;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mDeregisteringState:Lcom/sec/internal/helper/State;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isRegistered(Z)Z
    .locals 2

    .line 280
    invoke-virtual {p0}, Lcom/sec/internal/helper/StateMachine;->getCurrentState()Lcom/sec/internal/helper/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mRegisteredState:Lcom/sec/internal/helper/State;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/helper/StateMachine;->getCurrentState()Lcom/sec/internal/helper/IState;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mReRegisteringState:Lcom/sec/internal/helper/State;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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

.method public isRegistering()Z
    .locals 2

    .line 2664
    invoke-virtual {p0}, Lcom/sec/internal/helper/StateMachine;->getCurrentState()Lcom/sec/internal/helper/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mRegisteringState:Lcom/sec/internal/helper/State;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/internal/helper/StateMachine;->getCurrentState()Lcom/sec/internal/helper/IState;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mReRegisteringState:Lcom/sec/internal/helper/State;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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

.method public makeCall(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;ZLjava/util/List;ILandroid/os/Bundle;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "I",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move v1, p3

    move-object/from16 v2, p9

    move-object/from16 v3, p14

    .line 392
    iget v4, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "makeCall: destUri="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " origUri="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UserAgent"

    .line 392
    invoke-static {v6, v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 395
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "destUri"

    move-object v6, p1

    .line 396
    invoke-virtual {v4, v5, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "origUri"

    move-object v6, p2

    .line 397
    invoke-virtual {v4, v5, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "result"

    move-object/from16 v6, p17

    .line 398
    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v5, "type"

    .line 399
    invoke-virtual {v4, v5, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p6, :cond_0

    .line 401
    invoke-virtual {p6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->contents()Ljava/lang/String;

    move-result-object v1

    const-string v5, "additionalContentsContents"

    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    invoke-virtual {p6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->mimeType()Ljava/lang/String;

    move-result-object v1

    const-string v5, "additionalContentsMime"

    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v1, "cli"

    move-object v5, p7

    .line 404
    invoke-virtual {v4, v1, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "dispName"

    move-object v5, p4

    .line 405
    invoke-virtual {v4, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "alertInfo"

    move-object/from16 v5, p10

    .line 406
    invoke-virtual {v4, v1, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "dialedNumber"

    move-object v5, p5

    .line 407
    invoke-virtual {v4, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pEmergencyInfo"

    move-object v5, p8

    .line 408
    invoke-virtual {v4, v1, p8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "isLteEpsOnlyAttached"

    move/from16 v5, p11

    .line 409
    invoke-virtual {v4, v1, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz v2, :cond_1

    const-string v1, "additionalSipHeaders"

    .line 411
    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_1
    if-eqz p12, :cond_2

    .line 415
    move-object/from16 v1, p12

    check-cast v1, Ljava/util/ArrayList;

    const-string v2, "p2p"

    invoke-virtual {v4, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_2
    const-string v1, "cmcBoundSessionId"

    move/from16 v2, p13

    .line 417
    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz v3, :cond_3

    .line 418
    invoke-virtual/range {p14 .. p14}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "composer_data"

    .line 419
    invoke-virtual {v4, v1, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_3
    const-string v1, "replaceCallId"

    move-object/from16 v2, p15

    .line 421
    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cmcEdCallSlot"

    move/from16 v2, p16

    .line 422
    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0xe

    .line 423
    invoke-virtual {p0, v1, v4}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public mergeCall(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;Landroid/os/Message;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p13

    .line 525
    iget v2, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    const-string v3, "UserAgent"

    const-string v4, "mergeCall: "

    invoke-static {v3, v2, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 527
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "session1"

    move v4, p1

    .line 528
    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "session2"

    move v4, p2

    .line 529
    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "confuri"

    move-object v4, p3

    .line 530
    invoke-virtual {v2, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "calltype"

    move v4, p4

    .line 531
    invoke-virtual {v2, v3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "eventSubscribe"

    move-object v4, p5

    .line 532
    invoke-virtual {v2, v3, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "dialogType"

    move-object v4, p6

    .line 533
    invoke-virtual {v2, v3, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "origUri"

    move-object v4, p7

    .line 534
    invoke-virtual {v2, v3, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "referUriType"

    move-object v4, p8

    .line 535
    invoke-virtual {v2, v3, p8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "removeReferUriType"

    move-object v4, p9

    .line 536
    invoke-virtual {v2, v3, p9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "referUriAsserted"

    move-object v4, p10

    .line 537
    invoke-virtual {v2, v3, p10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "useAnonymousUpdate"

    move-object/from16 v4, p11

    .line 538
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "supportPrematureEnd"

    move/from16 v4, p12

    .line 539
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz v1, :cond_0

    const-string v3, "extraHeaders"

    .line 541
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_0
    const-string v1, "result"

    move-object/from16 v3, p14

    .line 543
    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 v1, 0x13

    .line 545
    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public modifyCallType(III)V
    .locals 2

    .line 754
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "sessionId"

    .line 755
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "oldType"

    .line 756
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "newType"

    .line 757
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 p1, 0x68

    .line 759
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public notifyE911RegistrationFailed()V
    .locals 1

    const/16 v0, 0x384

    .line 2746
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public progressIncomingCall(ILjava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 433
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "progressIncomingCall: sessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x19

    const/4 v1, -0x1

    .line 435
    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public publishDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;Z)V
    .locals 3

    .line 651
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "publishDialog: origUri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", dispName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", expires="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    .line 651
    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 655
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "origUri"

    .line 656
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "dispName"

    .line 657
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "body"

    .line 658
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "expires"

    .line 659
    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "result"

    .line 660
    invoke-virtual {v0, p1, p5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 p1, 0x2f

    if-eqz p6, :cond_0

    const-wide/16 p2, 0x1f4

    .line 663
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(ILjava/lang/Object;J)V

    goto :goto_0

    .line 665
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public pullingCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/Dialog;Ljava/util/List;Landroid/os/Message;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/sec/ims/Dialog;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .line 631
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pullingCall: pullingUri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", targetUri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", origUri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    invoke-static {p3}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", targetDialog="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 634
    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    .line 631
    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 636
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "pullingUri"

    .line 637
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "targetUri"

    .line 638
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "origUri"

    .line 639
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "targetDialog"

    .line 640
    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    if-eqz p5, :cond_0

    .line 642
    check-cast p5, Ljava/util/ArrayList;

    const-string p1, "p2p"

    invoke-virtual {v0, p1, p5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_0
    const-string p1, "result"

    .line 644
    invoke-virtual {v0, p1, p6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 p1, 0x1d

    .line 646
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public register()I
    .locals 6

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserAgent["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "register:"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImsProfile:Lcom/sec/ims/settings/ImsProfile;

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v0

    const-string v3, ""

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 311
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->isApAssistedMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    iget v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEmergencyEpdgConnected(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mEpdgStatus:Z

    goto :goto_2

    :cond_0
    const-string v0, "ril.subtype"

    .line 314
    invoke-static {v0, v3}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 315
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "eccPath : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "IWLAN"

    .line 316
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mEpdgStatus:Z

    goto :goto_2

    .line 319
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    iget v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpdgConnected(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mEpdgStatus:Z

    if-eqz v0, :cond_3

    .line 321
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    iget v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->getEpdgPhysicalInterface(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v4

    :goto_0
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mEpdgOverCellularData:Z

    goto :goto_1

    .line 323
    :cond_3
    iput-boolean v4, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mEpdgOverCellularData:Z

    .line 325
    :goto_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mRegistration:Lcom/sec/ims/ImsRegistration;

    if-eqz v0, :cond_4

    .line 326
    iget-boolean v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mEpdgStatus:Z

    invoke-virtual {v0, v1}, Lcom/sec/ims/ImsRegistration;->setEpdgStatus(Z)V

    .line 327
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mRegistration:Lcom/sec/ims/ImsRegistration;

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mEpdgOverCellularData:Z

    invoke-virtual {v0, v1}, Lcom/sec/ims/ImsRegistration;->setEpdgOverCellularData(Z)V

    .line 331
    :cond_4
    :goto_2
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isDualIMS()Z

    move-result v0

    const/4 v1, 0x6

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImsProfile:Lcom/sec/ims/settings/ImsProfile;

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "ro.boot.hardware"

    .line 332
    invoke-static {v0, v3}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "qcom"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-wide/16 v2, 0xa

    .line 333
    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(IJ)V

    goto :goto_3

    .line 335
    :cond_5
    invoke-virtual {p0, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    :goto_3
    return v4
.end method

.method public registerListener(Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;)V
    .locals 0

    .line 288
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mListener:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;

    return-void
.end method

.method public rejectCall(ILcom/sec/ims/util/SipError;)V
    .locals 3

    .line 427
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rejectCall: sessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x16

    const/4 v1, -0x1

    .line 429
    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/sec/internal/helper/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public rejectModifyCallType(II)V
    .locals 2

    .line 774
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "sessionId"

    .line 775
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "reason"

    .line 776
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 p1, 0x6a

    .line 778
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public replyModifyCallType(IIIILjava/lang/String;)V
    .locals 2

    .line 763
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "sessionId"

    .line 764
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "reqType"

    .line 765
    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "curType"

    .line 766
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "repType"

    .line 767
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "cmcCallTime"

    .line 768
    invoke-virtual {v0, p1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x69

    .line 770
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public requestPublish(Lcom/sec/ims/presence/PresenceInfo;Landroid/os/Message;)V
    .locals 2

    .line 846
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "presenceInfo"

    .line 847
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "result"

    .line 848
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 p1, 0x29

    .line 849
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public requestUnpublish()V
    .locals 1

    const/16 v0, 0x2a

    .line 853
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public resumeCall(ILandroid/os/Message;)V
    .locals 3

    .line 484
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resumeCall: sessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 486
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "sessionId"

    .line 487
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "result"

    .line 488
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 p1, 0x12

    .line 489
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public resumeVideo(ILandroid/os/Message;)V
    .locals 3

    .line 501
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resumeVideo: sessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 502
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "sessionId"

    .line 503
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "result"

    .line 504
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 p1, 0x1b

    .line 505
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public sendCmcInfo(ILcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;)V
    .locals 3

    .line 811
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendCmcInfo: sessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 813
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "sessionId"

    .line 814
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p2, :cond_0

    .line 816
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->contents()Ljava/lang/String;

    move-result-object p1

    const-string v1, "additionalContentsContents"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->mimeType()Ljava/lang/String;

    move-result-object p1

    const-string p2, "additionalContentsMime"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/16 p1, 0x3b

    .line 819
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public sendInfo(IIILcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;Landroid/os/Message;)V
    .locals 3

    .line 796
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendInfo: sessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 798
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "sessionId"

    .line 799
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "calltype"

    .line 800
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "ussdtype"

    .line 801
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "result"

    .line 802
    invoke-virtual {v0, p1, p5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    if-eqz p4, :cond_0

    .line 804
    invoke-virtual {p4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->contents()Ljava/lang/String;

    move-result-object p1

    const-string p2, "additionalContentsContents"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    invoke-virtual {p4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->mimeType()Ljava/lang/String;

    move-result-object p1

    const-string p2, "additionalContentsMime"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/16 p1, 0x30

    .line 807
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public sendMediaEvent(III)V
    .locals 2

    .line 857
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "target"

    .line 858
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "event"

    .line 859
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "eventType"

    .line 860
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 p1, 0x3e9

    .line 861
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public sendRequestToStack(Lcom/sec/internal/ims/core/handler/secims/ResipStackRequest;)V
    .locals 1

    const/16 v0, 0x3e8

    .line 384
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public sendSms(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZLjava/lang/String;Landroid/os/Message;)V
    .locals 3

    .line 723
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendSms: scaUri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " localUri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " contentType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isDeleveryReport "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " callId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    .line 723
    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 728
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "sca"

    .line 729
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "localuri"

    .line 730
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "contentType"

    .line 731
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "pdu"

    .line 732
    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string p1, "isDeliveryReport"

    .line 733
    invoke-virtual {v0, p1, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "result"

    .line 734
    invoke-virtual {v0, p1, p7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "callId"

    .line 735
    invoke-virtual {v0, p1, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x1f

    .line 737
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public sendSmsResponse(Ljava/lang/String;I)V
    .locals 3

    .line 748
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendSmsResponse: callId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x21

    const/4 v1, 0x0

    .line 750
    invoke-virtual {p0, v0, p2, v1, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public sendSmsRpAckResponse(Ljava/lang/String;)V
    .locals 3

    .line 742
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendSmsRpAckResponse: callId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x20

    .line 744
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public sendText(ILjava/lang/String;I)V
    .locals 3

    .line 465
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendText: sessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " text "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " len "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 467
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "sessionId"

    .line 468
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "text"

    .line 469
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "len"

    .line 470
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 p1, 0x33

    .line 471
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public setImsProfile(Lcom/sec/ims/settings/ImsProfile;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImsProfile:Lcom/sec/ims/settings/ImsProfile;

    return-void
.end method

.method public setNetwork(Landroid/net/Network;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mNetwork:Landroid/net/Network;

    return-void
.end method

.method public setPdn(I)V
    .locals 0

    .line 264
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPdn:I

    return-void
.end method

.method public setThirdPartyFeatureTags(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 296
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mThirdPartyFeatureTags:Ljava/util/List;

    return-void
.end method

.method public setUaProfile(Lcom/sec/internal/ims/core/handler/secims/UaProfile;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mUaProfile:Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    return-void
.end method

.method public setVideoCrtAudio(IZ)V
    .locals 3

    .line 375
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVideoCrtAudio: sessionId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", on = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 377
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "sessionId"

    .line 378
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "vcrtAudioOn"

    .line 379
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 p1, 0x70

    .line 380
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public startCamera(II)V
    .locals 3

    .line 509
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startCamera: sessionId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", cameraId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 510
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "sessionId"

    .line 511
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "cameraId"

    .line 512
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 p1, 0x1c

    .line 513
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public startCmcRecord(IIIJILjava/lang/String;IIIIIJLjava/lang/String;)V
    .locals 6

    move-object v0, p0

    move v1, p1

    move-object v2, p7

    .line 702
    iget v3, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startCmcRecord: sessionId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " filePath "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UserAgent"

    invoke-static {v5, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 703
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "sessionId"

    .line 704
    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "audioSource"

    move v4, p2

    .line 705
    invoke-virtual {v3, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "outputFormat"

    move v4, p3

    .line 706
    invoke-virtual {v3, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "maxFileSize"

    move-wide v4, p4

    .line 707
    invoke-virtual {v3, v1, p4, p5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "maxDuration"

    move v4, p6

    .line 708
    invoke-virtual {v3, v1, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "outputPath"

    .line 709
    invoke-virtual {v3, v1, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "audioEncodingBR"

    move v2, p8

    .line 710
    invoke-virtual {v3, v1, p8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "audioChannels"

    move v2, p9

    .line 711
    invoke-virtual {v3, v1, p9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "audioSamplingR"

    move/from16 v2, p10

    .line 712
    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "audioEncoder"

    move/from16 v2, p11

    .line 713
    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "durationInterval"

    move/from16 v2, p12

    .line 714
    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "fileSizeInterval"

    move-wide/from16 v4, p13

    .line 715
    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "author"

    move-object/from16 v2, p15

    .line 716
    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x3a

    .line 717
    invoke-virtual {p0, v1, v3}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public startRecord(ILjava/lang/String;)V
    .locals 3

    .line 685
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startRecord: sessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " filePath "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 686
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "sessionId"

    .line 687
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "filePath"

    .line 688
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x38

    .line 689
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public startVideoEarlyMedia(I)V
    .locals 2

    .line 823
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startVideoEarlyMedia: sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UserAgent"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "sessionId"

    .line 826
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 p1, 0x36

    .line 827
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public stopCamera()V
    .locals 3

    .line 517
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    const-string v1, "UserAgent"

    const-string/jumbo v2, "stopCamera"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x1e

    .line 518
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public stopRecord(I)V
    .locals 3

    .line 693
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopRecord: sessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 694
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "sessionId"

    .line 695
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 p1, 0x39

    .line 696
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public supportVoWiFiDeprioritizeNR5G(Z)V
    .locals 1

    const/16 v0, 0x3d

    .line 2703
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(II)V

    return-void
.end method

.method public supportVoWiFiDisable5GSA(Z)V
    .locals 1

    const/16 v0, 0x3c

    .line 2698
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(II)V

    return-void
.end method

.method public suspended(Z)V
    .locals 2

    .line 352
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mSuspendStatus:Z

    const/4 v0, -0x1

    const/16 v1, 0x26

    .line 353
    invoke-virtual {p0, v1, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(III)V

    return-void
.end method

.method public terminate()V
    .locals 3

    .line 2739
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    const-string v1, "UserAgent"

    const-string/jumbo v2, "terminate:"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x4

    .line 2741
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public transferCall(ILjava/lang/String;ILandroid/os/Message;)V
    .locals 3

    .line 606
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "transferCall: sessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " targetUri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " replacingSessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    .line 606
    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 609
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "sessionId"

    .line 610
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "targetUri"

    .line 611
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-lez p3, :cond_0

    const-string p1, "replacingSessionId"

    .line 613
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    const-string p1, "result"

    .line 615
    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 p1, 0x14

    .line 617
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public unRegisterListener()V
    .locals 1

    const/4 v0, 0x0

    .line 292
    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mListener:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;

    return-void
.end method

.method public updateAudioInterface(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3

    .line 366
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateAudioInterface: mode ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 368
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "mode"

    .line 369
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "result"

    .line 370
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 p1, 0x6c

    .line 371
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public updateCall(IIILcom/sec/internal/constants/ims/SipReason;)V
    .locals 3

    .line 783
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateCall(): sessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 785
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "sessionId"

    .line 786
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "action"

    .line 787
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "codecType"

    .line 788
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 789
    invoke-virtual {p4}, Lcom/sec/internal/constants/ims/SipReason;->getCause()I

    move-result p1

    const-string p2, "cause"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 790
    invoke-virtual {p4}, Lcom/sec/internal/constants/ims/SipReason;->getText()Ljava/lang/String;

    move-result-object p1

    const-string p2, "reasonText"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x25

    .line 792
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public updateCallwaitingStatus()V
    .locals 4

    .line 839
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    iget v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    const-string/jumbo v2, "ss_callwaiting_by_network"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getBoolean(ILjava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x27

    .line 841
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    :cond_0
    return-void
.end method

.method public updateConfCall(IIILjava/lang/String;)V
    .locals 3

    .line 592
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateConfCall  ConfSession "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " cmd "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " participantId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 594
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "confsession"

    .line 595
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "updateCmd"

    .line 596
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "participantId"

    .line 597
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "participant"

    .line 598
    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x23

    .line 600
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public updateGeolocation(Lcom/sec/internal/constants/ims/gls/LocationInfo;)V
    .locals 1

    const/16 v0, 0x2c

    .line 2674
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public updatePani(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 2722
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2723
    iget v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updatePani: pani="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", updatePani: lastPani="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UserAgent"

    invoke-static {v3, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 2725
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 2729
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2730
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 2731
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const/16 p1, 0x22

    .line 2735
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public updateRat(I)V
    .locals 1

    const/16 v0, 0x32

    .line 2693
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(II)V

    return-void
.end method

.method public updateTimeInPlani(J)V
    .locals 0

    .line 2688
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/16 p2, 0x34

    invoke-virtual {p0, p2, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public updateVceConfig(Z)V
    .locals 1

    .line 2669
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/16 v0, 0x28

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method
