.class public Lcom/sec/internal/ims/core/WfcEpdgManager;
.super Lcom/sec/internal/helper/StateMachine;
.source "WfcEpdgManager.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/IWfcEpdgManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/core/WfcEpdgManager$WfcEpdgConnectionListener;,
        Lcom/sec/internal/ims/core/WfcEpdgManager$VoWifiSettingObserver;,
        Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnecting;,
        Lcom/sec/internal/ims/core/WfcEpdgManager$Connected;,
        Lcom/sec/internal/ims/core/WfcEpdgManager$Connecting;,
        Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnected;
    }
.end annotation


# static fields
.field static final COLUMN_CROSS_SIM_CALL_ENABLE:Ljava/lang/String; = "data_preferred_mode_during_calling"

.field static final COLUMN_WIFI_CALL_ENABLE:Ljava/lang/String; = "wifi_call_enable"

.field static final ENTITLEMENT_URI:Landroid/net/Uri;

.field static final EPDG_AVAILABLE:I = 0x1

.field static final EPDG_TERMINATED:I = 0x2

.field static final EPDG_UNAVAILABLE:I = 0x0

.field static final EXTRA_CARRIER_PHONEID:Ljava/lang/String; = "com.samsung.carrier.extra.CARRIER_PHONE_ID"

.field static final INTENT_EPDG_FQDN_NAME:Ljava/lang/String; = "com.sec.imsservice.intent.action.EPDG_NAME"

.field private static final LOG_TAG:Ljava/lang/String; = "WfcEpdgManager"

.field private static final MOBILE_DATA_SETTING_UPDATE:I = 0xf

.field static final ON_CARRIER_UPDATE:I = 0xe

.field private static final ON_CROSS_SIM_UPDATED:I = 0x10

.field static final ON_ENTITLEMENT_EVENT:I = 0xc

.field static final ON_EPDG_CONNECTED:I = 0x8

.field static final ON_EPDG_DISCONNECTED:I = 0x9

.field static final ON_EPDG_FQDN_EVENT:I = 0xd

.field private static final ON_PERMANENT_PDN_FAILED:I = 0x11

.field static final ON_SETTING_RESET:I = 0xb

.field static final ON_WFC_UPDATED:I = 0x4

.field static final PROVIDER_NAME:Ljava/lang/String; = "com.samsung.ims.entitlement.provider"

.field static final SIM_ABSENT:I = 0x6

.field static final SIM_READY:I = 0x5

.field private static final SIM_READY_DELAY:I = 0x12

.field static final SLOT_0:I = 0x0

.field static final SLOT_1:I = 0x1

.field private static final SLOT_ID:Ljava/lang/String; = "slot"

.field static final STATE_TIMEOUT:I = 0xa

.field static final TRY_EPDG_CONNECT:I = 0x7

.field static final VOWIFI_ENTITLEMENT_REQUIRED:Ljava/lang/String; = "vowifi_entitlement_required"

.field static final VOWIFI_ENTITLEMENT_STATUS:Ljava/lang/String; = "vowifi_entitlement_status"

.field static final WIFI_CONNECTED:I = 0x3

.field static final mVodaProvisoinMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mConnected:Lcom/sec/internal/ims/core/WfcEpdgManager$Connected;

.field mConnecting:Lcom/sec/internal/ims/core/WfcEpdgManager$Connecting;

.field final mConnectivityManager:Landroid/net/ConnectivityManager;

.field mContext:Landroid/content/Context;

.field mCurrentSimMobilityState:[Z

.field final mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field mDisconnected:Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnected;

.field mDisconnecting:Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnecting;

.field final mEntitlementReceiver:Landroid/content/BroadcastReceiver;

.field mEpdgAvailable:[Z

.field mEpdgConnection:Lcom/sec/epdg/EpdgManager$ConnectionListener;

.field mEpdgHandoverListener:Lcom/sec/epdg/EpdgManager$EpdgListener;

.field mEpdgMgr:Lcom/sec/epdg/EpdgManager;

.field private mEpdgPhysicalInterface:[I

.field mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

.field private mIsCrossSimPermanentBlocked:[Z

.field mIsEpdgReqTerminate:Z

.field mIsWIFIConnected:Z

.field final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/ims/IEpdgListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNrInterworkingMode:[I

.field mReasonIntent:Landroid/content/Intent;

.field mSimMobilityStatusListener:Lcom/sec/ims/ISimMobilityStatusListener;

.field mVoWifiSettingObserver:Lcom/sec/internal/ims/core/WfcEpdgManager$VoWifiSettingObserver;

.field mWfcEpdgConnectionListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/core/WfcEpdgManager$WfcEpdgConnectionListener;",
            ">;"
        }
    .end annotation
.end field

.field final mWifiStateListener:Landroid/net/ConnectivityManager$NetworkCallback;


# direct methods
.method static bridge synthetic -$$Nest$fgetmEpdgPhysicalInterface(Lcom/sec/internal/ims/core/WfcEpdgManager;)[I
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mEpdgPhysicalInterface:[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$meventAsString(Lcom/sec/internal/ims/core/WfcEpdgManager;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->eventAsString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetEpdgManager(Lcom/sec/internal/ims/core/WfcEpdgManager;)Lcom/sec/epdg/EpdgManager;
    .locals 0

    invoke-direct {p0}, Lcom/sec/internal/ims/core/WfcEpdgManager;->getEpdgManager()Lcom/sec/epdg/EpdgManager;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misEnableVoWiFiFromMnoInfo(Lcom/sec/internal/ims/core/WfcEpdgManager;Lcom/sec/internal/interfaces/ims/core/ISimManager;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->isEnableVoWiFiFromMnoInfo(Lcom/sec/internal/interfaces/ims/core/ISimManager;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misReadyForEpdgConnect(Lcom/sec/internal/ims/core/WfcEpdgManager;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/internal/ims/core/WfcEpdgManager;->isReadyForEpdgConnect()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misSimAvailable(Lcom/sec/internal/ims/core/WfcEpdgManager;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->isSimAvailable(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$monSimReady(Lcom/sec/internal/ims/core/WfcEpdgManager;Lcom/sec/internal/interfaces/ims/core/ISimManager;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->onSimReady(Lcom/sec/internal/interfaces/ims/core/ISimManager;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$monSimRemoved(Lcom/sec/internal/ims/core/WfcEpdgManager;Lcom/sec/internal/interfaces/ims/core/ISimManager;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->onSimRemoved(Lcom/sec/internal/interfaces/ims/core/ISimManager;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mqueryVodaProvision(Lcom/sec/internal/ims/core/WfcEpdgManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/internal/ims/core/WfcEpdgManager;->queryVodaProvision()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/internal/ims/core/WfcEpdgManager;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.samsung.ims.entitlement.provider"

    .line 76
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/WfcEpdgManager;->ENTITLEMENT_URI:Landroid/net/Uri;

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mVodaProvisoinMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/IImsFramework;)V
    .locals 2

    const-string v0, "WfcEpdgManager"

    .line 172
    invoke-direct {p0, v0, p2}, Lcom/sec/internal/helper/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    const/4 p2, 0x2

    new-array v0, p2, [Z

    .line 66
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mEpdgAvailable:[Z

    new-array v0, p2, [I

    .line 67
    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mEpdgPhysicalInterface:[I

    new-array v0, p2, [Z

    .line 68
    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mIsCrossSimPermanentBlocked:[Z

    new-array v0, p2, [I

    .line 69
    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mNrInterworkingMode:[I

    const/4 v0, 0x0

    .line 110
    iput-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mReasonIntent:Landroid/content/Intent;

    .line 111
    iput-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mEpdgMgr:Lcom/sec/epdg/EpdgManager;

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mListeners:Ljava/util/List;

    new-array p2, p2, [Z

    .line 121
    fill-array-data p2, :array_4

    iput-object p2, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mCurrentSimMobilityState:[Z

    const/4 p2, 0x0

    .line 122
    iput-boolean p2, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mIsWIFIConnected:Z

    .line 123
    iput-boolean p2, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mIsEpdgReqTerminate:Z

    .line 124
    new-instance p2, Lcom/sec/internal/ims/core/WfcEpdgManager$1;

    invoke-direct {p2, p0}, Lcom/sec/internal/ims/core/WfcEpdgManager$1;-><init>(Lcom/sec/internal/ims/core/WfcEpdgManager;)V

    iput-object p2, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 163
    new-instance p2, Lcom/sec/internal/ims/core/WfcEpdgManager$2;

    invoke-direct {p2, p0}, Lcom/sec/internal/ims/core/WfcEpdgManager$2;-><init>(Lcom/sec/internal/ims/core/WfcEpdgManager;)V

    iput-object p2, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mWifiStateListener:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 1087
    new-instance p2, Lcom/sec/internal/ims/core/WfcEpdgManager$5;

    invoke-direct {p2, p0}, Lcom/sec/internal/ims/core/WfcEpdgManager$5;-><init>(Lcom/sec/internal/ims/core/WfcEpdgManager;)V

    iput-object p2, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mEntitlementReceiver:Landroid/content/BroadcastReceiver;

    .line 174
    iput-object p1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mContext:Landroid/content/Context;

    .line 175
    iput-object p3, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 177
    new-instance p3, Lcom/sec/internal/helper/SimpleEventLog;

    sget-object v0, Lcom/sec/internal/ims/core/WfcEpdgManager;->LOG_TAG:Ljava/lang/String;

    const/16 v1, 0x14

    invoke-direct {p3, p1, v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 179
    iget-object p1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mContext:Landroid/content/Context;

    const-string p3, "connectivity"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 180
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mWfcEpdgConnectionListenerList:Ljava/util/List;

    .line 182
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p3, "com.samsung.nsds.action.ENTITLEMENT_CHECK_COMPLETED"

    .line 183
    invoke-virtual {p1, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p3, "com.sec.imsservice.aec.action.COMPLETED_ENTITLEMENT"

    .line 184
    invoke-virtual {p1, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p3, "com.sec.imsservice.intent.action.EPDG_NAME"

    .line 185
    invoke-virtual {p1, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 186
    iget-object p3, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mContext:Landroid/content/Context;

    invoke-virtual {p3, p2, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 188
    new-instance p1, Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnected;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnected;-><init>(Lcom/sec/internal/ims/core/WfcEpdgManager;)V

    iput-object p1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mDisconnected:Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnected;

    .line 189
    new-instance p1, Lcom/sec/internal/ims/core/WfcEpdgManager$Connecting;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/core/WfcEpdgManager$Connecting;-><init>(Lcom/sec/internal/ims/core/WfcEpdgManager;)V

    iput-object p1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mConnecting:Lcom/sec/internal/ims/core/WfcEpdgManager$Connecting;

    .line 190
    new-instance p1, Lcom/sec/internal/ims/core/WfcEpdgManager$Connected;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/core/WfcEpdgManager$Connected;-><init>(Lcom/sec/internal/ims/core/WfcEpdgManager;)V

    iput-object p1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mConnected:Lcom/sec/internal/ims/core/WfcEpdgManager$Connected;

    .line 191
    new-instance p1, Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnecting;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnecting;-><init>(Lcom/sec/internal/ims/core/WfcEpdgManager;)V

    iput-object p1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mDisconnecting:Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnecting;

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_3
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/sec/internal/ims/core/WfcEpdgManager;I)V
    .locals 0

    .line 60
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessageAtFrontOfQueue(I)V

    return-void
.end method

.method private dumpVodaProvisioning()V
    .locals 3

    .line 1131
    sget-object v0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mVodaProvisoinMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1132
    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Vodafone_SMS_Provisioning : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/SimpleEventLog;->add(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private eventAsString(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const-string p0, "UNKNOWN"

    return-object p0

    :pswitch_0
    const-string p0, "SIM_READY_DELAY"

    return-object p0

    :pswitch_1
    const-string p0, "ON_PERMANENT_PDN_FAILED"

    return-object p0

    :pswitch_2
    const-string p0, "ON_CROSS_SIM_UPDATED"

    return-object p0

    :pswitch_3
    const-string p0, "MOBILE_DATA_SETTING_UPDATE"

    return-object p0

    :pswitch_4
    const-string p0, "ON_CARRIER_UPDATE"

    return-object p0

    :pswitch_5
    const-string p0, "ON_EPDG_FQDN_EVENT"

    return-object p0

    :pswitch_6
    const-string p0, "ON_ENTITLEMENT_EVENT"

    return-object p0

    :pswitch_7
    const-string p0, "ON_SETTING_RESET"

    return-object p0

    :pswitch_8
    const-string p0, "STATE_TIMEOUT"

    return-object p0

    :pswitch_9
    const-string p0, "ON_EPDG_DISCONNECTED"

    return-object p0

    :pswitch_a
    const-string p0, "ON_EPDG_CONNECTED"

    return-object p0

    :pswitch_b
    const-string p0, "TRY_EPDG_CONNECT"

    return-object p0

    :pswitch_c
    const-string p0, "SIM_ABSENT"

    return-object p0

    :pswitch_d
    const-string p0, "SIM_READY"

    return-object p0

    :pswitch_e
    const-string p0, "ON_WFC_UPDATED"

    return-object p0

    :pswitch_f
    const-string p0, "WIFI_CONNECTED"

    return-object p0

    :pswitch_10
    const-string p0, "EPDG_TERMINATED"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getEpdgManager()Lcom/sec/epdg/EpdgManager;
    .locals 3

    .line 402
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mEpdgMgr:Lcom/sec/epdg/EpdgManager;

    if-eqz v0, :cond_0

    return-object v0

    .line 405
    :cond_0
    new-instance v0, Lcom/sec/epdg/EpdgManager;

    iget-object v1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mEpdgConnection:Lcom/sec/epdg/EpdgManager$ConnectionListener;

    invoke-direct {v0, v1, v2}, Lcom/sec/epdg/EpdgManager;-><init>(Landroid/content/Context;Lcom/sec/epdg/EpdgManager$ConnectionListener;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mEpdgMgr:Lcom/sec/epdg/EpdgManager;

    return-object v0
.end method

.method private init()V
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mDisconnected:Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnected;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;)V

    .line 196
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mConnecting:Lcom/sec/internal/ims/core/WfcEpdgManager$Connecting;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;)V

    .line 197
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mConnected:Lcom/sec/internal/ims/core/WfcEpdgManager$Connected;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;)V

    .line 198
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mDisconnecting:Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnecting;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;)V

    .line 199
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mDisconnected:Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnected;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->setInitialState(Lcom/sec/internal/helper/State;)V

    return-void
.end method

.method private isAnySimAvailableWithWFCEnabled()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 361
    :goto_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 362
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->isSimAvailable(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->isWFCEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private isCrossSimAvailable()Z
    .locals 4

    .line 294
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "data_preferred_mode_during_calling"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    move v0, v2

    .line 295
    :goto_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 296
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/WfcEpdgManager;->isWFCEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v3, v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->isCrossSimCallingSupportedByPhoneId(I)Z

    move-result v3

    if-eqz v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private isEnableVoWiFiFromMnoInfo(Lcom/sec/internal/interfaces/ims/core/ISimManager;)Z
    .locals 1

    .line 946
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getMnoInfo()Landroid/content/ContentValues;

    move-result-object p0

    const-string p1, "enableServiceVowifi"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method private isEntitlementRequired(Landroid/content/Context;I)Z
    .locals 8

    .line 305
    sget-object p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->ENTITLEMENT_URI:Landroid/net/Uri;

    const-string/jumbo v0, "vowifi_entitlement_required"

    invoke-static {p0, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    .line 306
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v1, "slot"

    invoke-virtual {p0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 309
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    .line 311
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    .line 312
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 313
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    move p1, v0

    .line 314
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 316
    :cond_1
    sget-object p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isEntitlementRequired : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method private isEntitlementResult(Landroid/content/Context;I)Z
    .locals 8

    .line 343
    sget-object p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->ENTITLEMENT_URI:Landroid/net/Uri;

    const-string/jumbo v0, "vowifi_entitlement_status"

    invoke-static {p0, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    .line 344
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v1, "slot"

    invoke-virtual {p0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 347
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    .line 349
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    .line 350
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 351
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    move p1, v0

    .line 352
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 354
    :cond_1
    sget-object p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isEntitlementResult : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method private isReadyForEpdgConnect()Z
    .locals 3

    .line 276
    invoke-direct {p0}, Lcom/sec/internal/ims/core/WfcEpdgManager;->isAnySimAvailableWithWFCEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    move v0, v1

    .line 277
    :goto_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 278
    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 279
    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isUSA()Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mIsWIFIConnected:Z

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p0, 0x1

    return p0

    .line 284
    :cond_2
    invoke-direct {p0}, Lcom/sec/internal/ims/core/WfcEpdgManager;->isCrossSimAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 285
    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mContext:Landroid/content/Context;

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 286
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    move-result p0

    .line 287
    sget-object v0, Lcom/sec/internal/ims/core/WfcEpdgManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ready for cross sim calling dataEnabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_3
    return v1
.end method

.method private isSimAvailable(I)Z
    .locals 0

    .line 371
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 372
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimAvailable()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasVsim()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isVowifiSupported(I)Z
    .locals 4

    const/4 v0, 0x0

    .line 388
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    const-string v2, "mmtel"

    const/16 v3, 0x12

    invoke-interface {v1, v2, v3, p1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->isServiceAvailable(Ljava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    const-string v2, "mmtel-video"

    .line 389
    invoke-interface {v1, v2, v3, p1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->isServiceAvailable(Ljava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    const-string/jumbo v1, "smsip"

    .line 390
    invoke-interface {p0, v1, v3, p1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->isServiceAvailable(Ljava/lang/String;II)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :catch_0
    :cond_1
    return v0
.end method

.method private isWFCEnabled(I)Z
    .locals 4

    .line 377
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->isEntitlementRequired(Landroid/content/Context;I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->isEntitlementResult(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, p1, 0x1

    .line 381
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 382
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->isVowifiSupported(I)Z

    move-result p1

    const/4 v3, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isCanada()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isUSA()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mContext:Landroid/content/Context;

    .line 383
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wifi_call_enable"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v3, :cond_2

    :cond_1
    move v1, v3

    :cond_2
    return v1
.end method

.method private onSimReady(Lcom/sec/internal/interfaces/ims/core/ISimManager;)Z
    .locals 5

    .line 925
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v0

    .line 926
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimAvailable()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 927
    sget-object p1, Lcom/sec/internal/ims/core/WfcEpdgManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "on SIM Ready: phoneId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    iget-object p1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mCurrentSimMobilityState:[Z

    invoke-static {v0}, Lcom/sec/internal/ims/util/ImsUtil;->isSimMobilityActivated(I)Z

    move-result v1

    aput-boolean v1, p1, v0

    .line 929
    iget-object p1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mIsCrossSimPermanentBlocked:[Z

    aput-boolean v2, p1, v0

    .line 930
    iget-object p1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mNrInterworkingMode:[I

    aput v2, p1, v0

    .line 931
    iget-object p1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mSimMobilityStatusListener:Lcom/sec/ims/ISimMobilityStatusListener;

    if-nez p1, :cond_0

    .line 932
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/WfcEpdgManager;->makeSimMobilityListener()Lcom/sec/ims/ISimMobilityStatusListener;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mSimMobilityStatusListener:Lcom/sec/ims/ISimMobilityStatusListener;

    .line 933
    invoke-static {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getSimMobilityStatusListeners()Landroid/os/RemoteCallbackList;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mSimMobilityStatusListener:Lcom/sec/ims/ISimMobilityStatusListener;

    invoke-virtual {p1, p0}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    :cond_0
    const-string p0, "blocked_services_for_cross_sim"

    const-string p1, ""

    .line 936
    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 937
    invoke-static {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->setBlockedServicesForCrossSim(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 940
    :cond_1
    sget-object v1, Lcom/sec/internal/ims/core/WfcEpdgManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SIM ABSENT|LOCKED|NOT READY: phoneId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x6

    .line 941
    new-instance v3, Lcom/sec/internal/helper/AsyncResult;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v4, 0x0

    invoke-direct {v3, p1, v0, v4}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1, v3}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return v2
.end method

.method private onSimRemoved(Lcom/sec/internal/interfaces/ims/core/ISimManager;)Z
    .locals 4

    .line 1022
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1025
    :cond_0
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result p1

    .line 1026
    sget-object v0, Lcom/sec/internal/ims/core/WfcEpdgManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SIM Absent: phoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mIsCrossSimPermanentBlocked:[Z

    aput-boolean v1, v0, p1

    .line 1028
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mCurrentSimMobilityState:[Z

    aput-boolean v1, v0, p1

    .line 1029
    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mNrInterworkingMode:[I

    aput v1, p0, p1

    const/4 p0, 0x1

    return p0
.end method

.method private queryVodaProvision()V
    .locals 9

    const/4 v0, 0x0

    move v1, v0

    .line 1109
    :goto_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 1110
    invoke-static {v1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 1111
    sget-object v3, Lcom/sec/internal/constants/Mno;->VODAFONE_UK:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_3

    .line 1114
    :cond_0
    invoke-static {v1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1116
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object v2

    const-string v3, "content://iwlansettings/todos/provision"

    .line 1117
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 1118
    iget-object v3, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, v2

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1120
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_1

    .line 1121
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1122
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1123
    sget-object v5, Lcom/sec/internal/ims/core/WfcEpdgManager;->mVodaProvisoinMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 1118
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0

    :cond_1
    :goto_2
    if-eqz v3, :cond_2

    .line 1125
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public dump()V
    .locals 0

    .line 397
    invoke-direct {p0}, Lcom/sec/internal/ims/core/WfcEpdgManager;->dumpVodaProvisioning()V

    .line 398
    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {p0}, Lcom/sec/internal/helper/SimpleEventLog;->dump()V

    return-void
.end method

.method public getEpdgMgr()Lcom/sec/epdg/EpdgManager;
    .locals 1

    .line 410
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/WfcEpdgManager;->isEpdgServiceConnecting()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/WfcEpdgManager;->isEpdgServiceConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 411
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mEpdgMgr:Lcom/sec/epdg/EpdgManager;

    return-object p0
.end method

.method public getNrInterworkingMode(I)I
    .locals 0

    .line 339
    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mNrInterworkingMode:[I

    aget p0, p0, p1

    return p0
.end method

.method public initSequentially()V
    .locals 6

    .line 204
    invoke-direct {p0}, Lcom/sec/internal/ims/core/WfcEpdgManager;->init()V

    .line 205
    invoke-super {p0}, Lcom/sec/internal/helper/StateMachine;->start()V

    .line 206
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v1, 0x1

    .line 207
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v2, 0xc

    .line 208
    invoke-virtual {v0, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 209
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 210
    iget-object v2, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v3, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mWifiStateListener:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v2, v0, v3}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 211
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 213
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/WfcEpdgManager;->makeEpdgHandoverListener()Lcom/sec/epdg/EpdgManager$EpdgListener;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mEpdgHandoverListener:Lcom/sec/epdg/EpdgManager$EpdgListener;

    .line 215
    new-instance v0, Lcom/sec/internal/ims/core/WfcEpdgManager$VoWifiSettingObserver;

    invoke-super {p0}, Lcom/sec/internal/helper/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/sec/internal/ims/core/WfcEpdgManager$VoWifiSettingObserver;-><init>(Lcom/sec/internal/ims/core/WfcEpdgManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mVoWifiSettingObserver:Lcom/sec/internal/ims/core/WfcEpdgManager$VoWifiSettingObserver;

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wifi_call_enable"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 218
    iget-object v3, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mVoWifiSettingObserver:Lcom/sec/internal/ims/core/WfcEpdgManager$VoWifiSettingObserver;

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 220
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v0

    if-le v0, v1, :cond_0

    const/4 v0, 0x2

    const-string v1, "data_preferred_mode_during_calling"

    .line 222
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 223
    iget-object v3, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mVoWifiSettingObserver:Lcom/sec/internal/ims/core/WfcEpdgManager$VoWifiSettingObserver;

    invoke-virtual {v3, v1, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 226
    iget-object v1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mVoWifiSettingObserver:Lcom/sec/internal/ims/core/WfcEpdgManager$VoWifiSettingObserver;

    invoke-virtual {v1, v0, v5, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v0, "mobile_data"

    .line 228
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 229
    iget-object v1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mVoWifiSettingObserver:Lcom/sec/internal/ims/core/WfcEpdgManager$VoWifiSettingObserver;

    invoke-virtual {v1, v0, v5, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 232
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getAllSimManagers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 233
    invoke-super {p0}, Lcom/sec/internal/helper/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x5

    invoke-interface {v1, v2, v3, v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->registerForSimReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 234
    invoke-super {p0}, Lcom/sec/internal/helper/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x6

    invoke-interface {v1, v2, v3, v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->registerForSimRemoved(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public isCrossSimPermanentBlocked(I)Z
    .locals 0

    .line 326
    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mIsCrossSimPermanentBlocked:[Z

    aget-boolean p0, p0, p1

    return p0
.end method

.method public isEpdgServiceConnected()Z
    .locals 1

    .line 917
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mConnected:Lcom/sec/internal/ims/core/WfcEpdgManager$Connected;

    invoke-virtual {p0}, Lcom/sec/internal/helper/StateMachine;->getCurrentState()Lcom/sec/internal/helper/IState;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isEpdgServiceConnecting()Z
    .locals 1

    .line 921
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mConnecting:Lcom/sec/internal/ims/core/WfcEpdgManager$Connecting;

    invoke-virtual {p0}, Lcom/sec/internal/helper/StateMachine;->getCurrentState()Lcom/sec/internal/helper/IState;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isWifiConnected()Z
    .locals 4

    .line 258
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 260
    sget-object p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->LOG_TAG:Ljava/lang/String;

    const-string v0, "isWifiConnected: Default NW is null "

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 263
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    .line 264
    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x4

    .line 265
    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 266
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 268
    sget-object v0, Lcom/sec/internal/ims/core/WfcEpdgManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isWifiConnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    return p0

    :cond_2
    return v1
.end method

.method makeEpdgHandoverListener()Lcom/sec/epdg/EpdgManager$EpdgListener;
    .locals 1

    .line 417
    new-instance v0, Lcom/sec/internal/ims/core/WfcEpdgManager$3;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/WfcEpdgManager$3;-><init>(Lcom/sec/internal/ims/core/WfcEpdgManager;)V

    return-object v0
.end method

.method protected makeSimMobilityListener()Lcom/sec/ims/ISimMobilityStatusListener;
    .locals 1

    .line 1065
    new-instance v0, Lcom/sec/internal/ims/core/WfcEpdgManager$4;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/WfcEpdgManager$4;-><init>(Lcom/sec/internal/ims/core/WfcEpdgManager;)V

    return-object v0
.end method

.method public onCarrierUpdate(Landroid/content/Intent;)V
    .locals 1

    const/16 v0, 0xe

    .line 957
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public onPermanentPdnFail()V
    .locals 1

    const/16 v0, 0x11

    .line 961
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public onResetSetting(Landroid/content/Intent;)V
    .locals 1

    const/16 v0, 0xb

    .line 953
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public declared-synchronized registerEpdgHandoverListener(Lcom/sec/ims/IEpdgListener;)V
    .locals 4

    monitor-enter p0

    .line 239
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/core/WfcEpdgManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "registerEpdgHandoverListener.."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 244
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 245
    iget-object v2, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mEpdgAvailable:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    iget-object v3, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mEpdgPhysicalInterface:[I

    aget v3, v3, v1

    invoke-interface {p1, v1, v2, v3}, Lcom/sec/ims/IEpdgListener;->onEpdgAvailable(III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 248
    :try_start_2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 250
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public registerWfcEpdgConnectionListener(Lcom/sec/internal/ims/core/WfcEpdgManager$WfcEpdgConnectionListener;)V
    .locals 0

    .line 604
    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mWfcEpdgConnectionListenerList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setCrossSimPermanentBlocked(IZ)V
    .locals 0

    .line 322
    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mIsCrossSimPermanentBlocked:[Z

    aput-boolean p2, p0, p1

    return-void
.end method

.method public setNrInterworkingMode(II)V
    .locals 0

    .line 335
    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mNrInterworkingMode:[I

    aput p2, p0, p1

    return-void
.end method

.method public declared-synchronized unRegisterEpdgHandoverListener(Lcom/sec/ims/IEpdgListener;)V
    .locals 2

    monitor-enter p0

    .line 253
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/core/WfcEpdgManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "unRegisterEpdgHandoverListener.."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public unRegisterWfcEpdgConnectionListener(Lcom/sec/internal/ims/core/WfcEpdgManager$WfcEpdgConnectionListener;)V
    .locals 0

    .line 608
    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mWfcEpdgConnectionListenerList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
