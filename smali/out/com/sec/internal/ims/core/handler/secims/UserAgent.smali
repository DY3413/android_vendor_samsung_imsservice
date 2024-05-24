.class public Lcom/sec/internal/ims/core/handler/secims/UserAgent;
.super Lcom/sec/internal/helper/StateMachine;
.source "UserAgent.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/IUserAgent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;,
        Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;,
        Lcom/sec/internal/ims/core/handler/secims/UserAgent$DefaultState;,
        Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState;,
        Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReadyState;,
        Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteringState;,
        Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;,
        Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReRegisteringState;,
        Lcom/sec/internal/ims/core/handler/secims/UserAgent$DeregisteringState;,
        Lcom/sec/internal/ims/core/handler/secims/UserAgent$TerminatingState;,
        Lcom/sec/internal/ims/core/handler/secims/UserAgent$EmergencyState;,
        Lcom/sec/internal/ims/core/handler/secims/UserAgent$ProhibitedState;,
        Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;
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

.field private static final EVENT_ENABLE_QUANTUM_SECURITY_SERVICE:I = 0x73

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

.field private static final EVENT_REQUEST_REPLY_WITH_IDC:I = 0x3e

.field private static final EVENT_REQUEST_RESUME_CALL:I = 0x12

.field private static final EVENT_REQUEST_RESUME_VIDEO:I = 0x1b

.field private static final EVENT_REQUEST_SEND_CMC_INFO:I = 0x3b

.field private static final EVENT_REQUEST_SEND_INFO:I = 0x30

.field private static final EVENT_REQUEST_SEND_NEGOTIATED_LOCAL_SDP:I = 0x40

.field private static final EVENT_REQUEST_SEND_TEXT:I = 0x33

.field private static final EVENT_REQUEST_SEND_VCS_INFO:I = 0x3d

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

.field private static final EVENT_REQUEST_UPDATE_WITH_IDC:I = 0x3f

.field private static final EVENT_RETRY_UA_CREATE:I = 0x3

.field private static final EVENT_SEND_AUTH_RESPONSE:I = 0x9

.field private static final EVENT_SEND_DTMF_EVENT:I = 0x71

.field private static final EVENT_SEND_MEDIA_EVENT:I = 0x3e9

.field private static final EVENT_SEND_REQUEST:I = 0x3e8

.field private static final EVENT_SEND_SMS:I = 0x1f

.field private static final EVENT_SEND_SMS_RESPONSE:I = 0x21

.field private static final EVENT_SEND_SMS_RP_ACK_RESPONSE:I = 0x20

.field private static final EVENT_SET_QUANTUM_SECURITY_INFO:I = 0x72

.field private static final EVENT_SET_VIDEO_CRT_AUDIO:I = 0x70

.field private static final EVENT_SET_VOWIFI_5GSA_MODE:I = 0x3c

.field private static final EVENT_START_LOCAL_RINGBACKTONE:I = 0x6d

.field private static final EVENT_STOP_LOCAL_RINGBACKTONE:I = 0x6e

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

.field private mRetryAfterMs:J

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
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->lambda$getFirstImpuByUriType$0(Lcom/sec/ims/util/ImsUri$UriType;Lcom/sec/ims/util/NameAddr;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDestState(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mDestState:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEmergencyState(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/helper/State;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mEmergencyState:Lcom/sec/internal/helper/State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmError(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/ims/util/SipError;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mError:Lcom/sec/ims/util/SipError;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandle(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mHandle:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmImpuList(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Ljava/util/List;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImpuList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmImsProfile(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/ims/settings/ImsProfile;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImsProfile:Lcom/sec/ims/settings/ImsProfile;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmListener(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mListener:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNotifyServiceList(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Ljava/util/Set;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mNotifyServiceList:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPcscfGoneDeregi(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPcscfGoneDeregi:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmReadyState(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/helper/State;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mReadyState:Lcom/sec/internal/helper/State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRegistration(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/ims/ImsRegistration;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mRegistration:Lcom/sec/ims/ImsRegistration;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRetryAfterMs(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mRetryAfterMs:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmSimManager(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/interfaces/ims/core/ISimManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStackIf(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmThirdPartyFeatureTags(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Ljava/util/List;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mThirdPartyFeatureTags:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUaProfile(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UaProfile;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mUaProfile:Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmEcmpMode(Lcom/sec/internal/ims/core/handler/secims/UserAgent;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mEcmpMode:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmError(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/ims/util/SipError;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mError:Lcom/sec/ims/util/SipError;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmHandle(Lcom/sec/internal/ims/core/handler/secims/UserAgent;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mHandle:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPcscfGoneDeregi(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPcscfGoneDeregi:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRegisterSipResponse(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mRegisterSipResponse:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRegistration(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/ims/ImsRegistration;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mRegistration:Lcom/sec/ims/ImsRegistration;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRetryAfterMs(Lcom/sec/internal/ims/core/handler/secims/UserAgent;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mRetryAfterMs:J

    return-void
.end method

.method static bridge synthetic -$$Nest$maddDevice(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/ims/util/NameAddr;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->addDevice(Lcom/sec/ims/util/NameAddr;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$maddImpu(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/ims/util/NameAddr;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->addImpu(Lcom/sec/ims/util/NameAddr;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mbuildImsRegistration(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/ims/ImsRegistration;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->buildImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mremoveDevice(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/ims/util/ImsUri;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->removeDevice(Lcom/sec/ims/util/ImsUri;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveImpu(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/ims/util/ImsUri;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->removeImpu(Lcom/sec/ims/util/ImsUri;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetDestState(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->setDestState(Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateEpdgStatus(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->updateEpdgStatus()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateRouteTable(Lcom/sec/internal/ims/core/handler/secims/UserAgent;ILjava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->updateRouteTable(ILjava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    const-string v0, "0123456789ABCDEF"

    .line 2562
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->hexArray:[C

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/sec/internal/ims/core/handler/secims/IStackIF;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/interfaces/ims/core/IPdnController;Lcom/sec/internal/interfaces/ims/core/ISimManager;Lcom/sec/internal/interfaces/ims/IImsFramework;)V
    .registers 10

    const-string v0, "UserAgent - "

    .line 244
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

    .line 1052
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$DefaultState;

    invoke-direct {v0, p0, p2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$DefaultState;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$DefaultState-IA;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mDefaultState:Lcom/sec/internal/helper/State;

    .line 1139
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState;

    invoke-direct {v0, p0, p2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState-IA;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mInitialState:Lcom/sec/internal/helper/State;

    .line 1259
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReadyState;

    invoke-direct {v0, p0, p2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReadyState;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReadyState-IA;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mReadyState:Lcom/sec/internal/helper/State;

    .line 1360
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteringState;

    invoke-direct {v0, p0, p2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteringState;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteringState-IA;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mRegisteringState:Lcom/sec/internal/helper/State;

    .line 1977
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;

    invoke-direct {v0, p0, p2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState-IA;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mRegisteredState:Lcom/sec/internal/helper/State;

    .line 2034
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReRegisteringState;

    invoke-direct {v0, p0, p2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReRegisteringState;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReRegisteringState-IA;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mReRegisteringState:Lcom/sec/internal/helper/State;

    .line 2123
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$DeregisteringState;

    invoke-direct {v0, p0, p2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$DeregisteringState;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$DeregisteringState-IA;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mDeregisteringState:Lcom/sec/internal/helper/State;

    .line 2167
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$TerminatingState;

    invoke-direct {v0, p0, p2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$TerminatingState;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$TerminatingState-IA;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mTerminatingState:Lcom/sec/internal/helper/State;

    .line 2309
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EmergencyState;

    invoke-direct {v0, p0, p2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EmergencyState;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$EmergencyState-IA;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mEmergencyState:Lcom/sec/internal/helper/State;

    .line 2336
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$ProhibitedState;

    invoke-direct {v0, p0, p2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$ProhibitedState;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$ProhibitedState-IA;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mProhibitedState:Lcom/sec/internal/helper/State;

    .line 245
    iput-object p6, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 246
    iput-object p7, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 247
    invoke-interface {p6}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result p2

    iput p2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    .line 248
    invoke-direct {p0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->initState()V

    .line 250
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mContext:Landroid/content/Context;

    .line 251
    iput-object p3, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    .line 252
    iput-object p4, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 253
    iput-object p5, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/sec/internal/interfaces/ims/IImsFramework;)V
    .registers 5

    const-string v0, "UserAgent - "

    .line 257
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

    .line 1052
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$DefaultState;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$DefaultState;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$DefaultState-IA;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mDefaultState:Lcom/sec/internal/helper/State;

    .line 1139
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState-IA;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mInitialState:Lcom/sec/internal/helper/State;

    .line 1259
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReadyState;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReadyState;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReadyState-IA;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mReadyState:Lcom/sec/internal/helper/State;

    .line 1360
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteringState;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteringState;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteringState-IA;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mRegisteringState:Lcom/sec/internal/helper/State;

    .line 1977
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState-IA;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mRegisteredState:Lcom/sec/internal/helper/State;

    .line 2034
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReRegisteringState;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReRegisteringState;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReRegisteringState-IA;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mReRegisteringState:Lcom/sec/internal/helper/State;

    .line 2123
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$DeregisteringState;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$DeregisteringState;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$DeregisteringState-IA;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mDeregisteringState:Lcom/sec/internal/helper/State;

    .line 2167
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$TerminatingState;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$TerminatingState;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$TerminatingState-IA;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mTerminatingState:Lcom/sec/internal/helper/State;

    .line 2309
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EmergencyState;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EmergencyState;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$EmergencyState-IA;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mEmergencyState:Lcom/sec/internal/helper/State;

    .line 2336
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$ProhibitedState;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$ProhibitedState;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$ProhibitedState-IA;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mProhibitedState:Lcom/sec/internal/helper/State;

    .line 258
    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    return-void
.end method

.method private addDevice(Lcom/sec/ims/util/NameAddr;)V
    .registers 8

    .line 2632
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mDeviceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :cond_7
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/util/NameAddr;

    .line 2633
    invoke-virtual {p1}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/ims/util/ImsUri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2634
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

    if-eqz v3, :cond_7

    .line 2636
    invoke-virtual {p1}, Lcom/sec/ims/util/NameAddr;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/sec/ims/util/NameAddr;->setDisplayName(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_7

    :cond_42
    if-eqz v1, :cond_49

    .line 2641
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mDeviceList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_49
    return-void
.end method

.method private addImpu(Lcom/sec/ims/util/NameAddr;)V
    .registers 9

    .line 2601
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImpuList:Ljava/util/List;

    monitor-enter v0

    .line 2602
    :try_start_3
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImpuList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_47

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/util/NameAddr;

    .line 2603
    invoke-virtual {p1}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    invoke-virtual {v3}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/ims/util/ImsUri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 2604
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

    if-eqz v4, :cond_a

    .line 2606
    invoke-virtual {p1}, Lcom/sec/ims/util/NameAddr;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/sec/ims/util/NameAddr;->setDisplayName(Ljava/lang/String;)V

    const/4 v2, 0x0

    goto :goto_a

    :cond_47
    if-eqz v2, :cond_4e

    .line 2611
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImpuList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2613
    :cond_4e
    monitor-exit v0

    return-void

    :catchall_50
    move-exception p0

    monitor-exit v0
    :try_end_52
    .catchall {:try_start_3 .. :try_end_52} :catchall_50

    throw p0
.end method

.method private buildImsRegistration()Lcom/sec/ims/ImsRegistration;
    .registers 9

    .line 2718
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSubscriptionId()I

    move-result v0

    .line 2719
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mUaProfile:Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v2, v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->extractDomain(Lcom/sec/internal/ims/core/handler/secims/UaProfile;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2721
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 2722
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mNotifyServiceList:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-eqz v3, :cond_2a

    .line 2723
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mNotifyServiceList:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2724
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mNotifyServiceList:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    goto :goto_38

    .line 2726
    :cond_2a
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mUaProfile:Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getServiceList()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const-string v3, "datachannel"

    .line 2727
    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2730
    :goto_38
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mUaProfile:Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getPcscfIp()Ljava/lang/String;

    move-result-object v3

    .line 2732
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKOROmcCode()Z

    move-result v4

    if-eqz v4, :cond_67

    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    if-ne v4, v5, :cond_67

    const-string v4, "mmtel"

    .line 2733
    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_67

    .line 2734
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v4

    if-nez v4, :cond_67

    .line 2735
    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImpuList:Ljava/util/List;

    invoke-direct {p0, v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPAssociatedUri2nd(Ljava/util/Set;Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    goto :goto_69

    :cond_67
    const-string v4, ""

    .line 2737
    :goto_69
    invoke-static {}, Lcom/sec/ims/ImsRegistration;->getBuilder()Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v5

    .line 2739
    iget v6, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mHandle:I

    invoke-virtual {v5, v6}, Lcom/sec/ims/ImsRegistration$Builder;->setHandle(I)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v5

    new-instance v6, Lcom/sec/ims/settings/ImsProfile;

    iget-object v7, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImsProfile:Lcom/sec/ims/settings/ImsProfile;

    invoke-direct {v6, v7}, Lcom/sec/ims/settings/ImsProfile;-><init>(Lcom/sec/ims/settings/ImsProfile;)V

    .line 2740
    invoke-virtual {v5, v6}, Lcom/sec/ims/ImsRegistration$Builder;->setImsProfile(Lcom/sec/ims/settings/ImsProfile;)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v5

    .line 2741
    invoke-virtual {v5, v2}, Lcom/sec/ims/ImsRegistration$Builder;->setServices(Ljava/util/Set;)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mUaProfile:Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    .line 2742
    invoke-virtual {v6}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getImpi()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/ims/ImsRegistration$Builder;->setPrivateUserId(Ljava/lang/String;)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImpuList:Ljava/util/List;

    .line 2743
    invoke-virtual {v5, v6}, Lcom/sec/ims/ImsRegistration$Builder;->setPublicUserId(Ljava/util/List;)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mUaProfile:Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    .line 2744
    invoke-virtual {v6}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getImpu()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/ims/ImsRegistration$Builder;->setRegisteredPublicUserId(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v5

    .line 2745
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPreferredImpu(Ljava/util/Set;)Lcom/sec/ims/util/NameAddr;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/sec/ims/ImsRegistration$Builder;->setPreferredPublicUserId(Lcom/sec/ims/util/NameAddr;)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v2

    .line 2746
    invoke-virtual {v2, v1}, Lcom/sec/ims/ImsRegistration$Builder;->setDomain(Ljava/lang/String;)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v1

    .line 2747
    invoke-virtual {v1, v3}, Lcom/sec/ims/ImsRegistration$Builder;->setPcscf(Ljava/lang/String;)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mEpdgStatus:Z

    .line 2748
    invoke-virtual {v1, v2}, Lcom/sec/ims/ImsRegistration$Builder;->setEpdgStatus(Z)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mEpdgOverCellularData:Z

    .line 2749
    invoke-virtual {v1, v2}, Lcom/sec/ims/ImsRegistration$Builder;->setEpdgOverCellularData(Z)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v1

    iget v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPdn:I

    .line 2750
    invoke-virtual {v1, v2}, Lcom/sec/ims/ImsRegistration$Builder;->setPdnType(I)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mUaProfile:Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    .line 2751
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/ims/ImsRegistration$Builder;->setUuid(Ljava/lang/String;)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mUaProfile:Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    .line 2752
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/ims/ImsRegistration$Builder;->setInstanceId(Ljava/lang/String;)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v1

    iget v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mEcmpMode:I

    .line 2753
    invoke-virtual {v1, v2}, Lcom/sec/ims/ImsRegistration$Builder;->setEcmpStatus(I)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mDeviceList:Ljava/util/List;

    .line 2754
    invoke-virtual {v1, v2}, Lcom/sec/ims/ImsRegistration$Builder;->setDeviceList(Ljava/util/List;)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mRegisterSipResponse:Ljava/lang/String;

    .line 2755
    invoke-virtual {v1, v2}, Lcom/sec/ims/ImsRegistration$Builder;->setRegisterSipResponse(Ljava/lang/String;)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mNetwork:Landroid/net/Network;

    .line 2756
    invoke-virtual {v1, v2}, Lcom/sec/ims/ImsRegistration$Builder;->setNetwork(Landroid/net/Network;)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v1

    .line 2757
    invoke-virtual {v1, v4}, Lcom/sec/ims/ImsRegistration$Builder;->setPAssociatedUri2nd(Ljava/lang/String;)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v1

    .line 2758
    invoke-virtual {v1, v0}, Lcom/sec/ims/ImsRegistration$Builder;->setSubscriptionId(I)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 2759
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sec/ims/ImsRegistration$Builder;->setPhoneId(I)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object p0

    .line 2760
    invoke-virtual {p0}, Lcom/sec/ims/ImsRegistration$Builder;->build()Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    return-object p0
.end method

.method public static bytesToHex([B)Ljava/lang/String;
    .registers 7

    .line 2565
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    const/4 v1, 0x0

    .line 2566
    :goto_6
    array-length v2, p0

    if-ge v1, v2, :cond_22

    .line 2567
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v3, v1, 0x2

    .line 2568
    sget-object v4, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->hexArray:[C

    ushr-int/lit8 v5, v2, 0x4

    aget-char v5, v4, v5

    aput-char v5, v0, v3

    add-int/lit8 v3, v3, 0x1

    and-int/lit8 v2, v2, 0xf

    .line 2569
    aget-char v2, v4, v2

    aput-char v2, v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 2571
    :cond_22
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method private extractDomain(Lcom/sec/internal/ims/core/handler/secims/UaProfile;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 2575
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getDomain()Ljava/lang/String;

    move-result-object v0

    .line 2577
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    const-string v3, "]"

    const-string v4, "UserAgent["

    if-eq v1, v2, :cond_6b

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/Mno;->CU:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_19

    goto :goto_6b

    .line 2582
    :cond_19
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6a

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getImpu()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6a

    .line 2584
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImpuList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/ims/util/NameAddr;

    .line 2585
    invoke-virtual {p2}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->getPhoneContext()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 2586
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

    .line 2589
    invoke-virtual {p2}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/util/ImsUri;->getPhoneContext()Ljava/lang/String;

    move-result-object v0

    :cond_6a
    return-object v0

    .line 2578
    :cond_6b
    :goto_6b
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
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/NameAddr;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2774
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    const-string v1, "+82"

    const-string v2, "0"

    .line 2776
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2778
    :cond_10
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

    .line 2780
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :cond_32
    :goto_32
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_af

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/ims/util/NameAddr;

    .line 2781
    invoke-virtual {v4}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    if-eqz v4, :cond_32

    .line 2783
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

    .line 2784
    invoke-virtual {v4}, Lcom/sec/ims/util/ImsUri;->getUriType()Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object v5

    sget-object v6, Lcom/sec/ims/util/ImsUri$UriType;->SIP_URI:Lcom/sec/ims/util/ImsUri$UriType;

    if-ne v5, v6, :cond_32

    .line 2785
    invoke-virtual {v4}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_32

    .line 2786
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

    const-string v7, "extractPAssociatedUri2nd: uri="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2787
    invoke-virtual {v4}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2786
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2788
    invoke-virtual {v4}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getOnlyNumberFromURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_32

    if-eqz v4, :cond_32

    .line 2790
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_32

    move-object v1, v4

    goto :goto_32

    :cond_af
    return-object v1
.end method

.method private getFirstImpuByUriType(Lcom/sec/ims/util/ImsUri$UriType;)Lcom/sec/ims/util/NameAddr;
    .registers 3

    .line 2665
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
    .registers 6

    .line 2804
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const-string/jumbo v1, "tel:"

    .line 2805
    invoke-virtual {v0, v1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "sip:"

    .line 2806
    invoke-virtual {v0, v1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "*31#"

    const-string v2, "[*]31#"

    .line 2807
    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "#31#"

    .line 2808
    invoke-virtual {v0, v1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2810
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

    .line 2812
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move-object v0, p1

    :cond_43
    :goto_43
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_69

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2813
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 2814
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    goto :goto_43

    :cond_69
    const-string p0, "@"

    const-string p1, ";"

    .line 2818
    filled-new-array {p0, p1}, [Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    move v1, p1

    :goto_73
    const/4 v2, 0x2

    if-ge v1, v2, :cond_87

    .line 2821
    aget-object v2, p0, v1

    .line 2822
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_84

    .line 2823
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    :cond_84
    add-int/lit8 v1, v1, 0x1

    goto :goto_73

    :cond_87
    return-object v0
.end method

.method private getPAssociatedUri2nd(Ljava/util/Set;Ljava/util/List;)Ljava/lang/String;
    .registers 4
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

    .line 2765
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->extractPAssociatedUri2nd(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    .line 2766
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

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method private getPreferredImpu(Ljava/util/Set;)Lcom/sec/ims/util/NameAddr;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sec/ims/util/NameAddr;"
        }
    .end annotation

    .line 2671
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mUaProfile:Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 2672
    sget-object v1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-ne v0, v1, :cond_43

    .line 2673
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mUaProfile:Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getImpi()Ljava/lang/String;

    move-result-object v0

    .line 2674
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mUaProfile:Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getImpu()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    const/16 v5, 0x40

    .line 2675
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-lez v5, :cond_67

    if-eqz v1, :cond_67

    .line 2677
    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2678
    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->getUser()Ljava/lang/String;

    move-result-object v5

    .line 2679
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_67

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_67

    .line 2684
    new-instance v0, Lcom/sec/ims/util/NameAddr;

    invoke-direct {v0, v2, v1}, Lcom/sec/ims/util/NameAddr;-><init>(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)V

    move-object v4, v0

    goto :goto_67

    .line 2687
    :cond_43
    sget-object v1, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_61

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImsProfile:Lcom/sec/ims/settings/ImsProfile;

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->isSipUriOnly()Z

    move-result v1

    if-eqz v1, :cond_50

    goto :goto_61

    .line 2690
    :cond_50
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v1

    if-nez v1, :cond_5a

    sget-object v1, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_67

    .line 2691
    :cond_5a
    sget-object v0, Lcom/sec/ims/util/ImsUri$UriType;->TEL_URI:Lcom/sec/ims/util/ImsUri$UriType;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getFirstImpuByUriType(Lcom/sec/ims/util/ImsUri$UriType;)Lcom/sec/ims/util/NameAddr;

    move-result-object v4

    goto :goto_67

    .line 2689
    :cond_61
    :goto_61
    sget-object v0, Lcom/sec/ims/util/ImsUri$UriType;->SIP_URI:Lcom/sec/ims/util/ImsUri$UriType;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getFirstImpuByUriType(Lcom/sec/ims/util/ImsUri$UriType;)Lcom/sec/ims/util/NameAddr;

    move-result-object v4

    .line 2694
    :cond_67
    :goto_67
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

    if-nez v4, :cond_c0

    .line 2697
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImpuList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_99

    .line 2698
    new-instance v4, Lcom/sec/ims/util/NameAddr;

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mUaProfile:Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getImpu()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v4, v2, p0}, Lcom/sec/ims/util/NameAddr;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c0

    .line 2704
    :cond_99
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getRcsServiceList()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_ad

    .line 2705
    sget-object p1, Lcom/sec/ims/util/ImsUri$UriType;->TEL_URI:Lcom/sec/ims/util/ImsUri$UriType;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getFirstImpuByUriType(Lcom/sec/ims/util/ImsUri$UriType;)Lcom/sec/ims/util/NameAddr;

    move-result-object v4

    :cond_ad
    if-nez v4, :cond_c0

    .line 2708
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImpuList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_c0

    .line 2709
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImpuList:Ljava/util/List;

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Lcom/sec/ims/util/NameAddr;

    :cond_c0
    :goto_c0
    return-object v4
.end method

.method private initState()V
    .registers 3

    .line 965
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mDefaultState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;)V

    .line 966
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mInitialState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mDefaultState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 967
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mReadyState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mDefaultState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 968
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mRegisteringState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mReadyState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 969
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mRegisteredState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mReadyState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 970
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mReRegisteringState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mRegisteredState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 971
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mDeregisteringState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mReadyState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 972
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mTerminatingState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mReadyState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 973
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mProhibitedState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mDefaultState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 974
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mEmergencyState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mReadyState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 975
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mInitialState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->setInitialState(Lcom/sec/internal/helper/State;)V

    .line 976
    invoke-virtual {p0}, Lcom/sec/internal/helper/StateMachine;->start()V

    return-void
.end method

.method private static synthetic lambda$getFirstImpuByUriType$0(Lcom/sec/ims/util/ImsUri$UriType;Lcom/sec/ims/util/NameAddr;)Z
    .registers 2

    .line 2665
    invoke-virtual {p1}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->getUriType()Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object p1

    if-ne p1, p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method private removeDevice(Lcom/sec/ims/util/ImsUri;)V
    .registers 4

    .line 2646
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mDeviceList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 2648
    :cond_6
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 2649
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/util/NameAddr;

    .line 2651
    invoke-virtual {v0}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/ims/util/ImsUri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2652
    invoke-virtual {v0}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    const-string v1, "gr"

    invoke-virtual {v0, v1}, Lcom/sec/ims/util/ImsUri;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1}, Lcom/sec/ims/util/ImsUri;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2653
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    :cond_34
    return-void
.end method

.method private removeImpu(Lcom/sec/ims/util/ImsUri;)V
    .registers 4

    .line 2617
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImpuList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 2619
    :cond_6
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 2620
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/util/NameAddr;

    .line 2622
    invoke-virtual {v0}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/ims/util/ImsUri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2623
    invoke-virtual {v0}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    const-string v1, "gr"

    invoke-virtual {v0, v1}, Lcom/sec/ims/util/ImsUri;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1}, Lcom/sec/ims/util/ImsUri;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2624
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    :cond_34
    return-void
.end method

.method private setDestState(Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;)V
    .registers 5

    .line 980
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

    const-string/jumbo v2, "setDestState to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mDestState:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    .line 984
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->DEFAULT:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    if-ne p1, v0, :cond_3a

    .line 985
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mDefaultState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto/16 :goto_b0

    .line 986
    :cond_3a
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->READY:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    if-ne p1, v0, :cond_45

    .line 987
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mReadyState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto/16 :goto_b0

    .line 988
    :cond_45
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->INITIAL:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    if-ne p1, v0, :cond_4f

    .line 989
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mInitialState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_b0

    .line 990
    :cond_4f
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->REGISTERING:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    if-ne p1, v0, :cond_59

    .line 991
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mRegisteringState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_b0

    .line 992
    :cond_59
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->REGISTERED:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    if-ne p1, v0, :cond_63

    .line 993
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mRegisteredState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_b0

    .line 994
    :cond_63
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->REREGISTERING:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    if-ne p1, v0, :cond_6d

    .line 995
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mReRegisteringState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_b0

    .line 996
    :cond_6d
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->DEREGISTERING:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    if-ne p1, v0, :cond_77

    .line 997
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mDeregisteringState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_b0

    .line 998
    :cond_77
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->TERMINATING:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    if-ne p1, v0, :cond_81

    .line 999
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mTerminatingState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_b0

    .line 1000
    :cond_81
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->EMERGENCY:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    if-ne p1, v0, :cond_8b

    .line 1001
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mEmergencyState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_b0

    .line 1002
    :cond_8b
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->PROHIBITTED:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    if-ne p1, v0, :cond_95

    .line 1003
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mProhibitedState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_b0

    .line 1005
    :cond_95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected State : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UserAgent"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mDefaultState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    :goto_b0
    return-void
.end method

.method private updateEpdgStatus()V
    .registers 4

    .line 339
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    iget v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpdgConnected(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mEpdgStatus:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    .line 341
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    iget v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    invoke-interface {v0, v2}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->getEpdgPhysicalInterface(I)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_19

    const/4 v1, 0x1

    :cond_19
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mEpdgOverCellularData:Z

    goto :goto_1e

    .line 343
    :cond_1c
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mEpdgOverCellularData:Z

    .line 346
    :goto_1e
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mRegistration:Lcom/sec/ims/ImsRegistration;

    if-eqz v0, :cond_2e

    .line 347
    iget-boolean v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mEpdgStatus:Z

    invoke-virtual {v0, v1}, Lcom/sec/ims/ImsRegistration;->setEpdgStatus(Z)V

    .line 348
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mRegistration:Lcom/sec/ims/ImsRegistration;

    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mEpdgOverCellularData:Z

    invoke-virtual {v0, p0}, Lcom/sec/ims/ImsRegistration;->setEpdgOverCellularData(Z)V

    :cond_2e
    return-void
.end method

.method private updateRouteTable(ILjava/lang/String;)V
    .registers 6

    .line 2541
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

    if-eqz p1, :cond_42

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3a

    goto :goto_49

    .line 2549
    :cond_3a
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPdn:I

    invoke-interface {p1, p0, p2}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->removeRouteToHostAddress(ILjava/lang/String;)Z

    goto :goto_49

    .line 2545
    :cond_42
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPdn:I

    invoke-interface {p1, p0, p2}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->requestRouteToHostAddress(ILjava/lang/String;)Z

    :goto_49
    return-void
.end method


# virtual methods
.method public acceptCallTranfer(IZILjava/lang/String;)V
    .registers 8

    .line 704
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

    .line 707
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "sessionId"

    .line 708
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "accepted"

    .line 709
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-lez p3, :cond_4e

    const-string/jumbo p1, "status"

    .line 711
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "reason"

    .line 712
    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4e
    const/16 p1, 0x15

    .line 715
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public answerCall(IILjava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 473
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

    const-string v2, " idcExtra "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 476
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "sessionId"

    .line 477
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "callType"

    .line 478
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "cmcCallTime"

    .line 479
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "idcExtra"

    .line 480
    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x10

    .line 482
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public cancelTransferCall(ILandroid/os/Message;)V
    .registers 6

    .line 655
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

    .line 656
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "sessionId"

    .line 657
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "result"

    .line 658
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 p1, 0x2d

    .line 660
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public conference([Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Message;)V
    .registers 15

    .line 586
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "confuri"

    .line 587
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "calltype"

    .line 588
    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "eventSubscribe"

    .line 589
    invoke-virtual {v0, p2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "dialogType"

    .line 590
    invoke-virtual {v0, p2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "participants"

    .line 591
    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string p1, "origUri"

    .line 592
    invoke-virtual {v0, p1, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "referUriType"

    .line 593
    invoke-virtual {v0, p1, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "removeReferUriType"

    .line 594
    invoke-virtual {v0, p1, p8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "referUriAsserted"

    .line 595
    invoke-virtual {v0, p1, p9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "useAnonymousUpdate"

    .line 596
    invoke-virtual {v0, p1, p10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "supportPrematureEnd"

    .line 597
    invoke-virtual {v0, p1, p11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo p1, "result"

    .line 598
    invoke-virtual {v0, p1, p12}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 p1, 0x24

    .line 600
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public create()I
    .registers 3

    .line 306
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

    .line 308
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    const/4 p0, 0x0

    return p0
.end method

.method public deleteTcpClientSocket()V
    .registers 4

    .line 372
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    const-string v1, "deleteTcpClientSocket:"

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x31

    .line 373
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public deregister(ZZ)V
    .registers 12

    .line 2880
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

    if-eqz p2, :cond_2d

    const/16 v4, 0xa

    const/4 v6, -0x1

    const-wide/16 v7, 0x1f4

    move-object v3, p0

    move v5, p1

    .line 2884
    invoke-virtual/range {v3 .. v8}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(IIIJ)V

    goto :goto_32

    :cond_2d
    const/16 p2, 0xa

    .line 2886
    invoke-virtual {p0, p2, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(II)V

    :goto_32
    return-void
.end method

.method public deregisterInternal(Z)V
    .registers 11

    .line 353
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

    const/16 v4, 0x2b

    const/4 v6, -0x1

    const-wide/16 v7, 0x1f4

    move-object v3, p0

    move v5, p1

    .line 354
    invoke-virtual/range {v3 .. v8}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(IIIJ)V

    return-void
.end method

.method public deregisterLocal()V
    .registers 4

    .line 358
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    const-string v1, "deregisterLocal:"

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0xd

    .line 359
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public enableQuantumSecurityService(IZ)V
    .registers 6

    .line 892
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableQuantumSecurityService: sessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " enable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 894
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "sessionId"

    .line 895
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "enable"

    .line 896
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 p1, 0x73

    .line 897
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public endCall(ILcom/sec/internal/constants/ims/SipReason;)V
    .registers 6

    .line 467
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

    .line 469
    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/sec/internal/helper/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public extendToConfCall([Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 15

    .line 607
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "confuri"

    .line 608
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "calltype"

    .line 609
    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "eventSubscribe"

    .line 610
    invoke-virtual {v0, p2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "dialogType"

    .line 611
    invoke-virtual {v0, p2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "participants"

    .line 612
    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string/jumbo p1, "sessId"

    .line 613
    invoke-virtual {v0, p1, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "origUri"

    .line 614
    invoke-virtual {v0, p1, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "referUriType"

    .line 615
    invoke-virtual {v0, p1, p8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "removeReferUriType"

    .line 616
    invoke-virtual {v0, p1, p9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "referUriAsserted"

    .line 617
    invoke-virtual {v0, p1, p10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "useAnonymousUpdate"

    .line 618
    invoke-virtual {v0, p1, p11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "supportPrematureEnd"

    .line 619
    invoke-virtual {v0, p1, p12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 p1, 0x6b

    .line 621
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public getErrorCode()Lcom/sec/ims/util/SipError;
    .registers 1

    .line 2833
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mError:Lcom/sec/ims/util/SipError;

    return-object p0
.end method

.method public getHandle()I
    .registers 1

    .line 2891
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mHandle:I

    return p0
.end method

.method public getImsProfile()Lcom/sec/ims/settings/ImsProfile;
    .registers 1

    .line 2857
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImsProfile:Lcom/sec/ims/settings/ImsProfile;

    return-object p0
.end method

.method public getImsRegistration()Lcom/sec/ims/ImsRegistration;
    .registers 1

    .line 2925
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mRegistration:Lcom/sec/ims/ImsRegistration;

    return-object p0
.end method

.method public getNetwork()Landroid/net/Network;
    .registers 1

    .line 2935
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mNetwork:Landroid/net/Network;

    return-object p0
.end method

.method public getPdn()I
    .registers 1

    .line 274
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPdn:I

    return p0
.end method

.method public getPdnController()Lcom/sec/internal/interfaces/ims/core/IPdnController;
    .registers 1

    .line 282
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    return-object p0
.end method

.method public getPhoneId()I
    .registers 1

    .line 2862
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    return p0
.end method

.method public getStateName()Ljava/lang/String;
    .registers 1

    .line 290
    invoke-virtual {p0}, Lcom/sec/internal/helper/StateMachine;->getCurrentState()Lcom/sec/internal/helper/IState;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/helper/IState;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSuspendState()Z
    .registers 1

    .line 368
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mSuspendStatus:Z

    return p0
.end method

.method public getUaProfile()Lcom/sec/internal/ims/core/handler/secims/UaProfile;
    .registers 1

    .line 2837
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mUaProfile:Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    return-object p0
.end method

.method public handleCmcCsfb(I)V
    .registers 4

    .line 923
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleCmcCsfb: sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UserAgent"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "sessionId"

    .line 926
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 p1, 0x37

    .line 927
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public handleDtmf(IIIILandroid/os/Message;)V
    .registers 9

    .line 486
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

    .line 489
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "sessionId"

    .line 490
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "code"

    .line 491
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "mode"

    .line 492
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "operation"

    .line 493
    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "result"

    .line 494
    invoke-virtual {v0, p1, p5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 p1, 0x17

    .line 495
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public holdCall(ILandroid/os/Message;)V
    .registers 6

    .line 509
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

    .line 511
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "sessionId"

    .line 512
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "result"

    .line 513
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 p1, 0x11

    .line 514
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public holdVideo(ILandroid/os/Message;)V
    .registers 6

    .line 527
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

    .line 528
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "sessionId"

    .line 529
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "result"

    .line 530
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 p1, 0x1a

    .line 531
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public isDeregistring()Z
    .registers 2

    .line 2930
    invoke-virtual {p0}, Lcom/sec/internal/helper/StateMachine;->getCurrentState()Lcom/sec/internal/helper/IState;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mDeregisteringState:Lcom/sec/internal/helper/State;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isRegistered(Z)Z
    .registers 4

    .line 286
    invoke-virtual {p0}, Lcom/sec/internal/helper/StateMachine;->getCurrentState()Lcom/sec/internal/helper/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mRegisteredState:Lcom/sec/internal/helper/State;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    if-eqz p1, :cond_1b

    invoke-virtual {p0}, Lcom/sec/internal/helper/StateMachine;->getCurrentState()Lcom/sec/internal/helper/IState;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mReRegisteringState:Lcom/sec/internal/helper/State;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 p0, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 p0, 0x1

    :goto_1e
    return p0
.end method

.method public isRegistering()Z
    .registers 3

    .line 2842
    invoke-virtual {p0}, Lcom/sec/internal/helper/StateMachine;->getCurrentState()Lcom/sec/internal/helper/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mRegisteringState:Lcom/sec/internal/helper/State;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-virtual {p0}, Lcom/sec/internal/helper/StateMachine;->getCurrentState()Lcom/sec/internal/helper/IState;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mReRegisteringState:Lcom/sec/internal/helper/State;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    :goto_1c
    return p0
.end method

.method public makeCall(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;ZLjava/util/List;ILandroid/os/Bundle;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .registers 26
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
            "Ljava/lang/String;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move v1, p3

    move-object/from16 v2, p9

    move-object/from16 v3, p14

    .line 412
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

    .line 413
    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UserAgent"

    .line 412
    invoke-static {v6, v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 415
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "destUri"

    move-object v6, p1

    .line 416
    invoke-virtual {v4, v5, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "origUri"

    move-object v6, p2

    .line 417
    invoke-virtual {v4, v5, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "result"

    move-object/from16 v6, p18

    .line 418
    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v5, "type"

    .line 419
    invoke-virtual {v4, v5, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p6, :cond_69

    const-string v1, "additionalContentsContents"

    .line 421
    invoke-virtual {p6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->contents()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "additionalContentsMime"

    .line 422
    invoke-virtual {p6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->mimeType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_69
    const-string v1, "cli"

    move-object v5, p7

    .line 424
    invoke-virtual {v4, v1, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "dispName"

    move-object v5, p4

    .line 425
    invoke-virtual {v4, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "alertInfo"

    move-object/from16 v5, p10

    .line 426
    invoke-virtual {v4, v1, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "dialedNumber"

    move-object v5, p5

    .line 427
    invoke-virtual {v4, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pEmergencyInfo"

    move-object v5, p8

    .line 428
    invoke-virtual {v4, v1, p8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "isLteEpsOnlyAttached"

    move/from16 v5, p11

    .line 429
    invoke-virtual {v4, v1, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz v2, :cond_96

    const-string v1, "additionalSipHeaders"

    .line 431
    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_96
    if-eqz p12, :cond_a1

    const-string v1, "p2p"

    .line 435
    move-object/from16 v2, p12

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_a1
    const-string v1, "cmcBoundSessionId"

    move/from16 v2, p13

    .line 437
    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz v3, :cond_b5

    .line 438
    invoke-virtual/range {p14 .. p14}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b5

    const-string v1, "composer_data"

    .line 439
    invoke-virtual {v4, v1, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_b5
    const-string/jumbo v1, "replaceCallId"

    move-object/from16 v2, p15

    .line 441
    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cmcEdCallSlot"

    move/from16 v2, p16

    .line 442
    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "idcExtra"

    move-object/from16 v2, p17

    .line 443
    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xe

    .line 444
    invoke-virtual {p0, v1, v4}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public mergeCall(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;Landroid/os/Message;)V
    .registers 20
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

    .line 559
    iget v2, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    const-string v3, "mergeCall: "

    const-string v4, "UserAgent"

    invoke-static {v4, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 561
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "session1"

    move v4, p1

    .line 562
    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "session2"

    move v4, p2

    .line 563
    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "confuri"

    move-object v4, p3

    .line 564
    invoke-virtual {v2, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "calltype"

    move v4, p4

    .line 565
    invoke-virtual {v2, v3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "eventSubscribe"

    move-object v4, p5

    .line 566
    invoke-virtual {v2, v3, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "dialogType"

    move-object v4, p6

    .line 567
    invoke-virtual {v2, v3, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "origUri"

    move-object v4, p7

    .line 568
    invoke-virtual {v2, v3, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "referUriType"

    move-object v4, p8

    .line 569
    invoke-virtual {v2, v3, p8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "removeReferUriType"

    move-object v4, p9

    .line 570
    invoke-virtual {v2, v3, p9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "referUriAsserted"

    move-object v4, p10

    .line 571
    invoke-virtual {v2, v3, p10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "useAnonymousUpdate"

    move-object/from16 v4, p11

    .line 572
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "supportPrematureEnd"

    move/from16 v4, p12

    .line 573
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz v1, :cond_69

    const-string v3, "extraHeaders"

    .line 575
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_69
    const-string/jumbo v1, "result"

    move-object/from16 v3, p14

    .line 577
    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 v1, 0x13

    .line 579
    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public modifyCallType(III)V
    .registers 6

    .line 788
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "sessionId"

    .line 789
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "oldType"

    .line 790
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "newType"

    .line 791
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 p1, 0x68

    .line 793
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public notifyE911RegistrationFailed()V
    .registers 2

    const/16 v0, 0x384

    .line 2920
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public progressIncomingCall(ILjava/util/HashMap;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 454
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "progressIncomingCall: sessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 456
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "sessionId"

    .line 457
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p2, :cond_2b

    const-string p1, "headers"

    .line 459
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_2b
    const-string p1, "idcExtra"

    .line 461
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x19

    .line 463
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public publishDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;Z)V
    .registers 10

    .line 685
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "publishDialog: origUri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", dispName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
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

    .line 685
    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 689
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "origUri"

    .line 690
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "dispName"

    .line 691
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "body"

    .line 692
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "expires"

    .line 693
    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "result"

    .line 694
    invoke-virtual {v0, p1, p5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 p1, 0x2f

    if-eqz p6, :cond_5f

    const-wide/16 p2, 0x1f4

    .line 697
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(ILjava/lang/Object;J)V

    goto :goto_62

    .line 699
    :cond_5f
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    :goto_62
    return-void
.end method

.method public pullingCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/Dialog;Ljava/util/List;Landroid/os/Message;)V
    .registers 11
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

    .line 665
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pullingCall: pullingUri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", targetUri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", origUri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
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

    .line 668
    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    .line 665
    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 670
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "pullingUri"

    .line 671
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "targetUri"

    .line 672
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "origUri"

    .line 673
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "targetDialog"

    .line 674
    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    if-eqz p5, :cond_77

    const-string p1, "p2p"

    .line 676
    check-cast p5, Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_77
    const-string/jumbo p1, "result"

    .line 678
    invoke-virtual {v0, p1, p6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 p1, 0x1d

    .line 680
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public register()I
    .registers 6

    .line 314
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

    const-string/jumbo v3, "register:"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImsProfile:Lcom/sec/ims/settings/ImsProfile;

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v0

    const-string v3, ""

    if-eqz v0, :cond_71

    .line 317
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->isApAssistedMode()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 318
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    iget v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEmergencyEpdgConnected(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mEpdgStatus:Z

    goto :goto_74

    :cond_39
    const-string/jumbo v0, "ril.subtype"

    .line 320
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 321
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "eccPath : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "IWLAN"

    .line 322
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mEpdgStatus:Z

    goto :goto_74

    .line 325
    :cond_71
    invoke-direct {p0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->updateEpdgStatus()V

    .line 328
    :goto_74
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isDualIMS()Z

    move-result v0

    const/4 v1, 0x6

    if-eqz v0, :cond_a1

    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImsProfile:Lcom/sec/ims/settings/ImsProfile;

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v0

    if-eqz v0, :cond_a1

    const-string/jumbo v0, "ro.boot.hardware"

    .line 329
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "qcom"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a1

    const-wide/16 v2, 0xa

    .line 330
    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(IJ)V

    goto :goto_a4

    .line 332
    :cond_a1
    invoke-virtual {p0, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    :goto_a4
    const/4 p0, 0x0

    return p0
.end method

.method public registerListener(Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;)V
    .registers 2

    .line 294
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mListener:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;

    return-void
.end method

.method public rejectCall(ILcom/sec/ims/util/SipError;)V
    .registers 6

    .line 448
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rejectCall: sessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x16

    const/4 v1, -0x1

    .line 450
    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/sec/internal/helper/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public rejectModifyCallType(II)V
    .registers 5

    .line 819
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "sessionId"

    .line 820
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "reason"

    .line 821
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 p1, 0x6a

    .line 823
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public replyModifyCallType(IIIILjava/lang/String;)V
    .registers 8

    .line 797
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "sessionId"

    .line 798
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "reqType"

    .line 799
    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "curType"

    .line 800
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "repType"

    .line 801
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "cmcCallTime"

    .line 802
    invoke-virtual {v0, p1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x69

    .line 804
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public replyWithIdc(IIIILjava/lang/String;)V
    .registers 8

    .line 808
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "sessionId"

    .line 809
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "reqType"

    .line 810
    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "curType"

    .line 811
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "repType"

    .line 812
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "idcExtra"

    .line 813
    invoke-virtual {v0, p1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x3e

    .line 815
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public requestPublish(Lcom/sec/ims/presence/PresenceInfo;Landroid/os/Message;)V
    .registers 5

    .line 938
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "presenceInfo"

    .line 939
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo p1, "result"

    .line 940
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 p1, 0x29

    .line 941
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public requestUnpublish()V
    .registers 2

    const/16 v0, 0x2a

    .line 945
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public resumeCall(ILandroid/os/Message;)V
    .registers 6

    .line 518
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resumeCall: sessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 520
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "sessionId"

    .line 521
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "result"

    .line 522
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 p1, 0x12

    .line 523
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public resumeVideo(ILandroid/os/Message;)V
    .registers 6

    .line 535
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resumeVideo: sessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 536
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "sessionId"

    .line 537
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "result"

    .line 538
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 p1, 0x1b

    .line 539
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public sendCmcInfo(ILcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;)V
    .registers 6

    .line 868
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendCmcInfo: sessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 870
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "sessionId"

    .line 871
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p2, :cond_38

    const-string p1, "additionalContentsContents"

    .line 873
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->contents()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "additionalContentsMime"

    .line 874
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->mimeType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_38
    const/16 p1, 0x3b

    .line 876
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public sendDtmfEvent(ILjava/lang/String;)V
    .registers 6

    .line 395
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendDtmfEvent: sessionId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", dtmfEvent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 397
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "sessionId"

    .line 398
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "dtmfEvent"

    .line 399
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x71

    .line 400
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public sendInfo(IIILcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;Landroid/os/Message;)V
    .registers 9

    .line 853
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendInfo: sessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 855
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "sessionId"

    .line 856
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "calltype"

    .line 857
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "ussdtype"

    .line 858
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "result"

    .line 859
    invoke-virtual {v0, p1, p5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    if-eqz p4, :cond_49

    const-string p1, "additionalContentsContents"

    .line 861
    invoke-virtual {p4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->contents()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "additionalContentsMime"

    .line 862
    invoke-virtual {p4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->mimeType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_49
    const/16 p1, 0x30

    .line 864
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public sendMediaEvent(III)V
    .registers 6

    .line 949
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "target"

    .line 950
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "event"

    .line 951
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "eventType"

    .line 952
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 p1, 0x3e9

    .line 953
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public sendNegotiatedLocalSdp(ILjava/lang/String;)V
    .registers 5

    .line 957
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "sessionId"

    .line 958
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "sdp"

    .line 959
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x40

    .line 961
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public sendRequestToStack(Lcom/sec/internal/ims/core/handler/secims/ResipStackRequest;)V
    .registers 3

    const/16 v0, 0x3e8

    .line 404
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public sendSms(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZLjava/lang/String;Landroid/os/Message;)V
    .registers 11

    .line 757
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendSms: scaUri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 758
    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " localUri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 759
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

    .line 757
    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 762
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "sca"

    .line 763
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "localuri"

    .line 764
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "contentType"

    .line 765
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "pdu"

    .line 766
    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string p1, "isDeliveryReport"

    .line 767
    invoke-virtual {v0, p1, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo p1, "result"

    .line 768
    invoke-virtual {v0, p1, p7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "callId"

    .line 769
    invoke-virtual {v0, p1, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x1f

    .line 771
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public sendSmsResponse(Ljava/lang/String;I)V
    .registers 6

    .line 782
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendSmsResponse: callId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x21

    const/4 v1, 0x0

    .line 784
    invoke-virtual {p0, v0, p2, v1, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public sendSmsRpAckResponse(Ljava/lang/String;)V
    .registers 5

    .line 776
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendSmsRpAckResponse: callId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x20

    .line 778
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public sendText(ILjava/lang/String;I)V
    .registers 7

    .line 499
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendText: sessionId "

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

    .line 501
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "sessionId"

    .line 502
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "text"

    .line 503
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "len"

    .line 504
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 p1, 0x33

    .line 505
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public sendVcsInfo(ILcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;)V
    .registers 6

    .line 880
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendVcsInfo: sessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 882
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "sessionId"

    .line 883
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p2, :cond_38

    const-string p1, "additionalContentsContents"

    .line 885
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->contents()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "additionalContentsMime"

    .line 886
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->mimeType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_38
    const/16 p1, 0x3d

    .line 888
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public setImsProfile(Lcom/sec/ims/settings/ImsProfile;)V
    .registers 2

    .line 262
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImsProfile:Lcom/sec/ims/settings/ImsProfile;

    return-void
.end method

.method public setNetwork(Landroid/net/Network;)V
    .registers 2

    .line 278
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mNetwork:Landroid/net/Network;

    return-void
.end method

.method public setPdn(I)V
    .registers 2

    .line 270
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPdn:I

    return-void
.end method

.method public setQuantumSecurityInfo(IIILjava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 901
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setQuantumSecurityInfo: sessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " callDirection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " cryptoMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " qtSessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 903
    invoke-static {p4}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " sessionKey "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p5}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    .line 901
    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 905
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "sessionId"

    .line 906
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "callDirection"

    .line 907
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "cryptoMode"

    .line 908
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "qtSessionId"

    .line 909
    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "sessionKey"

    .line 910
    invoke-virtual {v0, p1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x72

    .line 911
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public setThirdPartyFeatureTags(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 302
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mThirdPartyFeatureTags:Ljava/util/List;

    return-void
.end method

.method public setUaProfile(Lcom/sec/internal/ims/core/handler/secims/UaProfile;)V
    .registers 2

    .line 266
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mUaProfile:Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    return-void
.end method

.method public setVideoCrtAudio(IZ)V
    .registers 6

    .line 386
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

    .line 388
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "sessionId"

    .line 389
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "vcrtAudioOn"

    .line 390
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 p1, 0x70

    .line 391
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public setVowifi5gsaMode(I)V
    .registers 3

    const/16 v0, 0x3c

    .line 2876
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(II)V

    return-void
.end method

.method public startCamera(II)V
    .registers 6

    .line 543
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

    .line 544
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "sessionId"

    .line 545
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "cameraId"

    .line 546
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 p1, 0x1c

    .line 547
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public startCmcRecord(IIIJILjava/lang/String;IIIIIJLjava/lang/String;)V
    .registers 22

    move-object v0, p0

    move v1, p1

    move-object v2, p7

    .line 736
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

    .line 737
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v4, "sessionId"

    .line 738
    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "audioSource"

    move v4, p2

    .line 739
    invoke-virtual {v3, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "outputFormat"

    move v4, p3

    .line 740
    invoke-virtual {v3, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "maxFileSize"

    move-wide v4, p4

    .line 741
    invoke-virtual {v3, v1, p4, p5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "maxDuration"

    move v4, p6

    .line 742
    invoke-virtual {v3, v1, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "outputPath"

    .line 743
    invoke-virtual {v3, v1, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "audioEncodingBR"

    move v2, p8

    .line 744
    invoke-virtual {v3, v1, p8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "audioChannels"

    move v2, p9

    .line 745
    invoke-virtual {v3, v1, p9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "audioSamplingR"

    move/from16 v2, p10

    .line 746
    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "audioEncoder"

    move/from16 v2, p11

    .line 747
    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "durationInterval"

    move/from16 v2, p12

    .line 748
    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "fileSizeInterval"

    move-wide/from16 v4, p13

    .line 749
    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "author"

    move-object/from16 v2, p15

    .line 750
    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x3a

    .line 751
    invoke-virtual {p0, v1, v3}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public startRecord(ILjava/lang/String;)V
    .registers 6

    .line 719
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

    .line 720
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "sessionId"

    .line 721
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "filePath"

    .line 722
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x38

    .line 723
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public startVideoEarlyMedia(I)V
    .registers 4

    .line 915
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startVideoEarlyMedia: sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UserAgent"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "sessionId"

    .line 918
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 p1, 0x36

    .line 919
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public stopCamera()V
    .registers 4

    .line 551
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    const-string/jumbo v1, "stopCamera"

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x1e

    .line 552
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public stopRecord(I)V
    .registers 5

    .line 727
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

    .line 728
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "sessionId"

    .line 729
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 p1, 0x39

    .line 730
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public suspended(Z)V
    .registers 4

    .line 363
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mSuspendStatus:Z

    const/4 v0, -0x1

    const/16 v1, 0x26

    .line 364
    invoke-virtual {p0, v1, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(III)V

    return-void
.end method

.method public terminate()V
    .registers 4

    .line 2913
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    const-string/jumbo v1, "terminate:"

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x4

    .line 2915
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public transferCall(ILjava/lang/String;ILandroid/os/Message;)V
    .registers 8

    .line 640
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "transferCall: sessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " targetUri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " replacingSessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    .line 640
    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 643
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "sessionId"

    .line 644
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "targetUri"

    .line 645
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-lez p3, :cond_46

    const-string/jumbo p1, "replacingSessionId"

    .line 647
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_46
    const-string/jumbo p1, "result"

    .line 649
    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 p1, 0x14

    .line 651
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public unRegisterListener()V
    .registers 2

    const/4 v0, 0x0

    .line 298
    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mListener:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;

    return-void
.end method

.method public updateAudioInterface(Ljava/lang/String;Landroid/os/Message;)V
    .registers 6

    .line 377
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

    .line 379
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "mode"

    .line 380
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "result"

    .line 381
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 p1, 0x6c

    .line 382
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public updateCall(IIILcom/sec/internal/constants/ims/SipReason;Ljava/lang/String;)V
    .registers 9

    .line 839
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

    .line 841
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "sessionId"

    .line 842
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "action"

    .line 843
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "codecType"

    .line 844
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 845
    invoke-virtual {p4}, Lcom/sec/internal/constants/ims/SipReason;->getCause()I

    move-result p1

    const-string p2, "cause"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "reasonText"

    .line 846
    invoke-virtual {p4}, Lcom/sec/internal/constants/ims/SipReason;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "idcExtra"

    .line 847
    invoke-virtual {v0, p1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x25

    .line 849
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public updateCallwaitingStatus()V
    .registers 5

    .line 931
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    iget v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    const-string/jumbo v2, "ss_callwaiting_by_network"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getBoolean(ILjava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_13

    const/16 v0, 0x27

    .line 933
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    :cond_13
    return-void
.end method

.method public updateConfCall(IIILjava/lang/String;)V
    .registers 8

    .line 626
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

    .line 628
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "confsession"

    .line 629
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "updateCmd"

    .line 630
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "participantId"

    .line 631
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "participant"

    .line 632
    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x23

    .line 634
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public updateGeolocation(Lcom/sec/internal/constants/ims/gls/LocationInfo;)V
    .registers 3

    const/16 v0, 0x2c

    .line 2852
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public updatePani(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 2895
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2896
    iget v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    const-string/jumbo v2, "updatePani"

    const-string v3, "UserAgent"

    invoke-static {v3, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 2897
    iget v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updatePani: pani="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", updatePani: lastPani="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 2899
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_35

    return-void

    .line 2903
    :cond_35
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2904
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_41

    .line 2905
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_41
    const/16 p1, 0x22

    .line 2909
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public updateRat(I)V
    .registers 3

    const/16 v0, 0x32

    .line 2871
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(II)V

    return-void
.end method

.method public updateTimeInPlani(J)V
    .registers 4

    const/16 v0, 0x34

    .line 2866
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public updateVceConfig(Z)V
    .registers 3

    const/16 v0, 0x28

    .line 2847
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public updateWithIdc(IILjava/lang/String;)V
    .registers 7

    .line 827
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateWithIdc(): sessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 829
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "sessionId"

    .line 830
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "action"

    .line 831
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "idcExtra"

    .line 832
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x3f

    .line 834
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method
