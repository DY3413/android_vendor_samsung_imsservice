.class public Lcom/sec/internal/ims/core/PdnController;
.super Landroid/os/Handler;
.source "PdnController.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/IPdnController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/core/PdnController$PdnConnectedEvent;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field protected static final ECC_IWLAN:Ljava/lang/String; = "IWLAN"

.field protected static final EVENT_CLEAR_EMERGENCY_QUALIFIEDNETWORK:I = 0x70

.field protected static final EVENT_DEFAULT_NETWORK_CHANGED:I = 0x6e

.field protected static final EVENT_EPDG_CONNECTION_CHANGED:I = 0x68

.field protected static final EVENT_EPDG_IKEERROR:I = 0x6d

.field protected static final EVENT_LINK_PROPERTIES_CHANGED:I = 0x6f

.field protected static final EVENT_PDN_CONNECTED:I = 0x6c

.field protected static final EVENT_PDN_DISCONNECTED:I = 0x67

.field protected static final EVENT_REQUEST_NETWORK:I = 0x65

.field protected static final EVENT_REQUEST_STOP_PDN:I = 0x6b

.field protected static final EVENT_STOP_PDN_COMPLETED:I = 0x66

.field protected static final EVENT_WIFI_CONNECTED:I = 0x69

.field protected static final EVENT_WIFI_DISCONNECTED:I = 0x6a

.field private static final LOG_TAG:Ljava/lang/String;

.field protected static final PROPERTY_ECC_PATH:Ljava/lang/String; = "ril.subtype"

.field static final TEMP_SA_DISABLE:I = 0x4

.field static final TEMP_SA_ENABLE:I = 0x3

.field protected static mDataState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mActiveDataPhoneId:I

.field protected mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field final mDefaultNetworkListener:Landroid/net/ConnectivityManager$NetworkCallback;

.field protected mEPDNQN:[I

.field protected mEPDNintfName:[Ljava/lang/String;

.field protected mEpdgHandoverListener:Lcom/sec/ims/ImsManager$EpdgListener;

.field protected mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field private final mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

.field protected mIsDisconnecting:Z

.field protected mNeedCellLocationUpdate:Z

.field protected final mNetworkCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sec/internal/interfaces/ims/core/PdnEventListener;",
            "Lcom/sec/internal/ims/core/NetworkCallback;",
            ">;"
        }
    .end annotation
.end field

.field protected final mNetworkStateListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mNetworkStates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/constants/ims/os/NetworkState;",
            ">;"
        }
    .end annotation
.end field

.field private final mPcscfRestorationEventReceiver:Landroid/content/BroadcastReceiver;

.field protected final mPendingRequests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/util/Pair<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/sec/internal/interfaces/ims/core/PdnEventListener;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mSimManagers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/sec/internal/interfaces/ims/core/ISimManager;",
            ">;"
        }
    .end annotation
.end field

.field protected final mTelephonyCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;",
            ">;"
        }
    .end annotation
.end field

.field protected mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

.field final mWifiStateListener:Landroid/net/ConnectivityManager$NetworkCallback;


# direct methods
.method public static synthetic $r8$lambda$49kIjLbUaVH4IkHMrny1jWCneV0(Lcom/sec/internal/interfaces/ims/core/PdnEventListener;ILcom/sec/internal/ims/core/NetworkCallback;)V
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/core/PdnController;->lambda$requestNetwork$1(Lcom/sec/internal/interfaces/ims/core/PdnEventListener;ILcom/sec/internal/ims/core/NetworkCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UQ0V8XaUJLWEixkhkYbs42xVlDM(Ljava/util/List;Lcom/sec/internal/interfaces/ims/core/PdnEventListener;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->lambda$handlePcscfRestorationIntent$3(Ljava/util/List;Lcom/sec/internal/interfaces/ims/core/PdnEventListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YYRAu7lhncSkaiUWpJkOiNwTJac(ILjava/util/Map$Entry;)Z
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->lambda$handlePcscfRestorationIntent$2(ILjava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$yqTVopmRdnfRlV4t6dgoAOxOT9c(ILcom/sec/internal/helper/os/CellIdentityWrapper;)Z
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->lambda$getCurrentCellIdentity$0(ILcom/sec/internal/helper/os/CellIdentityWrapper;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .registers 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    const-string v0, "eng"

    .line 85
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/internal/ims/core/PdnController;->DBG:Z

    .line 86
    const-class v0, Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/core/PdnController;->mDataState:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/IImsFramework;)V
    .registers 5

    .line 128
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 115
    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    iput-object p2, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    const/4 p2, 0x0

    .line 116
    iput-object p2, p0, Lcom/sec/internal/ims/core/PdnController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 117
    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    iput-object p2, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    .line 119
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStates:Ljava/util/List;

    .line 120
    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    iput-object p2, p0, Lcom/sec/internal/ims/core/PdnController;->mPendingRequests:Ljava/util/Set;

    .line 121
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/sec/internal/ims/core/PdnController;->mTelephonyCallbacks:Ljava/util/Map;

    const/4 p2, 0x0

    .line 123
    iput p2, p0, Lcom/sec/internal/ims/core/PdnController;->mActiveDataPhoneId:I

    .line 124
    iput-boolean p2, p0, Lcom/sec/internal/ims/core/PdnController;->mIsDisconnecting:Z

    .line 125
    iput-boolean p2, p0, Lcom/sec/internal/ims/core/PdnController;->mNeedCellLocationUpdate:Z

    .line 386
    new-instance p2, Lcom/sec/internal/ims/core/PdnController$1;

    invoke-direct {p2, p0}, Lcom/sec/internal/ims/core/PdnController$1;-><init>(Lcom/sec/internal/ims/core/PdnController;)V

    iput-object p2, p0, Lcom/sec/internal/ims/core/PdnController;->mWifiStateListener:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 399
    new-instance p2, Lcom/sec/internal/ims/core/PdnController$2;

    invoke-direct {p2, p0}, Lcom/sec/internal/ims/core/PdnController$2;-><init>(Lcom/sec/internal/ims/core/PdnController;)V

    iput-object p2, p0, Lcom/sec/internal/ims/core/PdnController;->mDefaultNetworkListener:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 1435
    new-instance p2, Lcom/sec/internal/ims/core/PdnController$3;

    invoke-direct {p2, p0}, Lcom/sec/internal/ims/core/PdnController$3;-><init>(Lcom/sec/internal/ims/core/PdnController;)V

    iput-object p2, p0, Lcom/sec/internal/ims/core/PdnController;->mPcscfRestorationEventReceiver:Landroid/content/BroadcastReceiver;

    .line 130
    iput-object p1, p0, Lcom/sec/internal/ims/core/PdnController;->mContext:Landroid/content/Context;

    .line 131
    iput-object p3, p0, Lcom/sec/internal/ims/core/PdnController;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    const-string p2, "connectivity"

    .line 132
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/ConnectivityManager;

    iput-object p2, p0, Lcom/sec/internal/ims/core/PdnController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 133
    invoke-static {p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/core/PdnController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 134
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getAllSimManagers()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/core/PdnController;->mSimManagers:Ljava/util/List;

    .line 135
    new-instance p2, Lcom/sec/internal/ims/core/ImsEpdgEventListener;

    invoke-direct {p2, p0, p3}, Lcom/sec/internal/ims/core/ImsEpdgEventListener;-><init>(Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/interfaces/ims/IImsFramework;)V

    iput-object p2, p0, Lcom/sec/internal/ims/core/PdnController;->mEpdgHandoverListener:Lcom/sec/ims/ImsManager$EpdgListener;

    .line 137
    iget-object p2, p0, Lcom/sec/internal/ims/core/PdnController;->mSimManagers:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    .line 138
    new-array p3, p2, [Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/internal/ims/core/PdnController;->mEPDNintfName:[Ljava/lang/String;

    .line 139
    new-array p2, p2, [I

    iput-object p2, p0, Lcom/sec/internal/ims/core/PdnController;->mEPDNQN:[I

    .line 141
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result p2

    iput p2, p0, Lcom/sec/internal/ims/core/PdnController;->mActiveDataPhoneId:I

    .line 145
    new-instance p2, Lcom/sec/internal/helper/SimpleEventLog;

    sget-object p3, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    const/16 v0, 0xc8

    invoke-direct {p2, p1, p3, v0}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object p2, p0, Lcom/sec/internal/ims/core/PdnController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    return-void
.end method

.method private determineIpAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    .registers 5

    const/4 p0, 0x0

    if-eqz p1, :cond_26

    .line 1086
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    goto :goto_26

    .line 1091
    :cond_a
    :try_start_a
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0
    :try_end_e
    .catch Ljava/net/UnknownHostException; {:try_start_a .. :try_end_e} :catch_f

    return-object p0

    .line 1093
    :catch_f
    sget-object v0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "determineIpAddress: invalid address -  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 1087
    :cond_26
    :goto_26
    sget-object p1, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    const-string v0, "determineIpAddress: empty address."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method private getDnsServers(Landroid/net/LinkProperties;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/LinkProperties;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_50

    .line 1238
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object p0

    .line 1239
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1241
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1242
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_19
    :goto_19
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 1243
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/helper/NetworkUtil;->isIPv4Address(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 1244
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 1245
    :cond_37
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/helper/NetworkUtil;->isIPv6Address(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1246
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 1250
    :cond_49
    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1251
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p1

    :cond_50
    const/4 p0, 0x0

    return-object p0
.end method

.method private getNetworkCapability(I)I
    .registers 2

    .line 0
    const/16 p0, 0xb

    if-eq p1, p0, :cond_15

    const/16 p0, 0xf

    if-eq p1, p0, :cond_12

    const/16 p0, 0x1b

    if-eq p1, p0, :cond_f

    const/16 p0, 0xc

    return p0

    :cond_f
    const/16 p0, 0x9

    return p0

    :cond_12
    const/16 p0, 0xa

    return p0

    :cond_15
    const/4 p0, 0x4

    return p0
.end method

.method private handleConnectedPdnType(IILcom/sec/internal/ims/core/NetworkCallback;Ljava/lang/String;)V
    .registers 9

    .line 760
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v0

    if-nez v0, :cond_e

    .line 762
    sget-object p0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    const-string p1, "onPdnConnected: NetworkState is null!"

    invoke-static {p0, p2, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_e
    const/16 v1, 0xb

    const/4 v2, 0x1

    if-ne p1, v1, :cond_4d

    .line 773
    iget-object p3, p3, Lcom/sec/internal/ims/core/NetworkCallback;->mLinkProperties:Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    .line 774
    invoke-virtual {p3}, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->getInterfaceName()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_4d

    .line 775
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->isEpdgConnected()Z

    move-result p1

    if-eqz p1, :cond_a1

    .line 776
    iget-object p1, p0, Lcom/sec/internal/ims/core/PdnController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string p3, "onPdnConnected: epdg network for ims pdn"

    invoke-virtual {p1, p2, p3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 777
    iget-object p1, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    monitor-enter p1

    .line 778
    :try_start_2b
    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_31
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_48

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;

    .line 779
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataNetworkType()I

    move-result p4

    invoke-interface {p3, p4, v2, p2}, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;->onDataConnectionStateChanged(IZI)V

    .line 780
    invoke-interface {p3, p2}, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;->onEpdgConnected(I)V

    goto :goto_31

    .line 782
    :cond_48
    monitor-exit p1

    goto :goto_a1

    :catchall_4a
    move-exception p0

    monitor-exit p1
    :try_end_4c
    .catchall {:try_start_2b .. :try_end_4c} :catchall_4a

    throw p0

    :cond_4d
    const/16 p3, 0xf

    if-ne p1, p3, :cond_a1

    const-string/jumbo p1, "ril.subtype"

    const-string p3, ""

    .line 785
    invoke-static {p1, p3}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 786
    iget-object p3, p0, Lcom/sec/internal/ims/core/PdnController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eccPath : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    const-string p3, "IWLAN"

    .line 787
    invoke-virtual {p1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_7b

    .line 788
    invoke-virtual {v0, v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->setEmergencyEpdgConnected(Z)V

    .line 790
    :cond_7b
    iget-object p3, p0, Lcom/sec/internal/ims/core/PdnController;->mEPDNintfName:[Ljava/lang/String;

    aput-object p4, p3, p2

    .line 791
    sget-object p3, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleConnectedPdnType: eccPath="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "mEPDNintfName : "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mEPDNintfName:[Ljava/lang/String;

    aget-object p0, p0, p2

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p2, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :cond_a1
    :goto_a1
    return-void
.end method

.method private static synthetic lambda$getCurrentCellIdentity$0(ILcom/sec/internal/helper/os/CellIdentityWrapper;)Z
    .registers 2

    .line 349
    invoke-virtual {p1, p0}, Lcom/sec/internal/helper/os/CellIdentityWrapper;->isMatched(I)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$handlePcscfRestorationIntent$2(ILjava/util/Map$Entry;)Z
    .registers 4

    .line 1463
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/NetworkCallback;

    iget v0, v0, Lcom/sec/internal/ims/core/NetworkCallback;->mNetworkType:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_18

    .line 1464
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/core/NetworkCallback;

    iget p1, p1, Lcom/sec/internal/ims/core/NetworkCallback;->mPhoneId:I

    if-ne p1, p0, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method

.method private static synthetic lambda$handlePcscfRestorationIntent$3(Ljava/util/List;Lcom/sec/internal/interfaces/ims/core/PdnEventListener;)V
    .registers 3

    const/16 v0, 0xb

    .line 1466
    invoke-interface {p1, v0, p0}, Lcom/sec/internal/interfaces/ims/core/PdnEventListener;->onPcscfRestorationNotified(ILjava/util/List;)V

    return-void
.end method

.method private static synthetic lambda$requestNetwork$1(Lcom/sec/internal/interfaces/ims/core/PdnEventListener;ILcom/sec/internal/ims/core/NetworkCallback;)V
    .registers 3

    .line 550
    iget-object p2, p2, Lcom/sec/internal/ims/core/NetworkCallback;->mNetwork:Landroid/net/Network;

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/PdnEventListener;->onConnected(ILandroid/net/Network;)V

    return-void
.end method

.method private onDefaultNetworkChanged()V
    .registers 6

    .line 1019
    sget-object v0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onDefaultNetworkChanged:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    monitor-enter v0

    .line 1021
    :try_start_a
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isDualIMS()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 1022
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;

    .line 1023
    iget-object v3, p0, Lcom/sec/internal/ims/core/PdnController;->mSimManagers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_28
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 1024
    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v4

    invoke-interface {v2, v4}, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;->onDefaultNetworkStateChanged(I)V

    goto :goto_28

    .line 1028
    :cond_3c
    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_42
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_56

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;

    .line 1029
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;->onDefaultNetworkStateChanged(I)V

    goto :goto_42

    .line 1032
    :cond_56
    monitor-exit v0

    return-void

    :catchall_58
    move-exception p0

    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_a .. :try_end_5a} :catchall_58

    throw p0
.end method

.method private onEpdgConnected(ILjava/lang/String;Z)V
    .registers 10

    .line 866
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v0

    const-string v1, "emergency"

    .line 867
    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_34

    if-eqz v0, :cond_34

    .line 868
    sget-object p0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EpdgEvent onEpdgConnected: emergency  connected="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mIsEmergencyEpdgConnected="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 869
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->isEmergencyEpdgConnected()Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 868
    invoke-static {p0, p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 870
    invoke-virtual {v0, p3}, Lcom/sec/internal/constants/ims/os/NetworkState;->setEmergencyEpdgConnected(Z)V

    return-void

    :cond_34
    const-string v1, "ims"

    .line 874
    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13b

    if-nez v0, :cond_40

    goto/16 :goto_13b

    .line 878
    :cond_40
    sget-object v1, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EpdgEvent onEpdgConnected: apnType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " connected="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " mIsEpdgConnected="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 879
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->isEpdgConnected()Z

    move-result p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 878
    invoke-static {v1, p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 882
    iget-object p2, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_74
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_8a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/NetworkCallback;

    .line 883
    iget v1, v1, Lcom/sec/internal/ims/core/NetworkCallback;->mNetworkType:I

    const/16 v4, 0xb

    if-ne v1, v4, :cond_74

    move p2, v2

    goto :goto_8b

    :cond_8a
    move p2, v3

    .line 889
    :goto_8b
    sget-object v1, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onEpdgConnected: existCallBack="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " connected="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " dataRat="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 891
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataNetworkType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mobileDataRat="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 892
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getMobileDataNetworkType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " voiceRat ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 893
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getVoiceNetworkType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 889
    invoke-static {v1, p1, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-nez p2, :cond_d3

    .line 896
    invoke-virtual {v0, v3}, Lcom/sec/internal/constants/ims/os/NetworkState;->setEpdgConnected(Z)V

    return-void

    :cond_d3
    const/16 p2, 0x12

    if-eqz p3, :cond_102

    .line 902
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->isEpdgConnected()Z

    move-result p3

    if-eqz p3, :cond_de

    return-void

    .line 905
    :cond_de
    invoke-virtual {v0, v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->setEpdgConnected(Z)V

    .line 906
    iget-object p3, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    monitor-enter p3

    .line 907
    :try_start_e4
    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_ea
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_fd

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;

    .line 908
    invoke-interface {v0, p2, v2, p1}, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;->onDataConnectionStateChanged(IZI)V

    .line 909
    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;->onEpdgConnected(I)V

    goto :goto_ea

    .line 911
    :cond_fd
    monitor-exit p3

    goto :goto_137

    :catchall_ff
    move-exception p0

    monitor-exit p3
    :try_end_101
    .catchall {:try_start_e4 .. :try_end_101} :catchall_ff

    throw p0

    .line 914
    :cond_102
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->isEpdgConnected()Z

    move-result p3

    if-nez p3, :cond_109

    return-void

    .line 917
    :cond_109
    invoke-virtual {v0, v3}, Lcom/sec/internal/constants/ims/os/NetworkState;->setEpdgConnected(Z)V

    .line 919
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataNetworkType()I

    move-result p3

    if-ne p3, p2, :cond_116

    .line 921
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getMobileDataNetworkType()I

    move-result p3

    .line 928
    :cond_116
    iget-object p2, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    monitor-enter p2

    .line 929
    :try_start_119
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_136

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;

    .line 930
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/PdnController;->isWifiConnected()Z

    move-result v2

    invoke-interface {v1, p3, v2, p1}, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;->onDataConnectionStateChanged(IZI)V

    .line 931
    invoke-interface {v1, p1}, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;->onEpdgDisconnected(I)V

    goto :goto_11f

    .line 933
    :cond_136
    monitor-exit p2

    :goto_137
    return-void

    :catchall_138
    move-exception p0

    monitor-exit p2
    :try_end_13a
    .catchall {:try_start_119 .. :try_end_13a} :catchall_138

    throw p0

    :cond_13b
    :goto_13b
    return-void
.end method

.method private onEpdgIkeError(I)V
    .registers 4

    .line 858
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    monitor-enter v0

    .line 859
    :try_start_3
    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;

    .line 860
    invoke-interface {v1, p1}, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;->onIKEAuthFAilure(I)V

    goto :goto_9

    .line 862
    :cond_19
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method private onLinkPropertiesChanged(ILandroid/net/Network;Lcom/sec/internal/interfaces/ims/core/PdnEventListener;Landroid/net/LinkProperties;)V
    .registers 11

    .line 828
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    monitor-enter v0

    .line 829
    :try_start_3
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/NetworkCallback;

    .line 830
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_8c

    if-nez v1, :cond_16

    .line 833
    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string p1, "ignore onLinkPropertiesChanged as requestStopNetwork preceded this"

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    return-void

    .line 836
    :cond_16
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLinkPropertiesChanged: networkType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 837
    sget-object v0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLinkPropertiesChanged: linkProperties="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    new-instance v0, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    invoke-direct {v0, p4}, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;-><init>(Landroid/net/LinkProperties;)V

    .line 840
    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/core/NetworkCallback;->isLocalIpChanged(Lcom/sec/internal/helper/os/LinkPropertiesWrapper;)I

    move-result p4

    .line 841
    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/core/NetworkCallback;->isPcscfAddressChanged(Lcom/sec/internal/helper/os/LinkPropertiesWrapper;)Z

    move-result v2

    const/4 v3, 0x1

    if-ge p4, v3, :cond_54

    if-eqz v2, :cond_8b

    .line 843
    :cond_54
    iput-object v0, v1, Lcom/sec/internal/ims/core/NetworkCallback;->mLinkProperties:Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    if-lt p4, v3, :cond_7b

    .line 846
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onLinkPropertiesChanged: LinkProperties changed type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " call onLocalIpChanged"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    const/4 v1, 0x2

    if-ne p4, v1, :cond_77

    goto :goto_78

    :cond_77
    const/4 v3, 0x0

    .line 847
    :goto_78
    invoke-interface {p3, p1, p2, v3}, Lcom/sec/internal/interfaces/ims/core/PdnEventListener;->onLocalIpChanged(ILandroid/net/Network;Z)V

    :cond_7b
    if-eqz v2, :cond_8b

    .line 851
    iget-object p4, p0, Lcom/sec/internal/ims/core/PdnController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "onLinkPropertiesChanged: LinkProperties changed call onPcscfAddressChanged"

    invoke-virtual {p4, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 852
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/PdnController;->readPcscfFromLinkProperties(Lcom/sec/internal/helper/os/LinkPropertiesWrapper;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p3, p1, p2, p0}, Lcom/sec/internal/interfaces/ims/core/PdnEventListener;->onPcscfAddressChanged(ILandroid/net/Network;Ljava/util/List;)V

    :cond_8b
    return-void

    :catchall_8c
    move-exception p0

    .line 830
    :try_start_8d
    monitor-exit v0
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_8c

    throw p0
.end method

.method private onPdnDisconnected(IILcom/sec/internal/interfaces/ims/core/PdnEventListener;)V
    .registers 9

    .line 797
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPdnDisconnected: networkType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 798
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v0

    .line 800
    invoke-interface {p3, p1}, Lcom/sec/internal/interfaces/ims/core/PdnEventListener;->onResumed(I)V

    const/16 v1, 0xb

    const/16 v2, 0xf

    const/4 v3, 0x0

    if-ne p1, v1, :cond_3a

    .line 802
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->isEpdgConnected()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 803
    invoke-virtual {v0, v3}, Lcom/sec/internal/constants/ims/os/NetworkState;->setEpdgConnected(Z)V

    .line 805
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataNetworkType()I

    move-result v1

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataRegState()I

    move-result v0

    const/4 v4, 0x1

    invoke-virtual {p0, v1, v0, v4, p2}, Lcom/sec/internal/ims/core/PdnController;->notifyDataConnectionState(IIZI)V

    goto :goto_45

    :cond_3a
    if-ne p1, v2, :cond_45

    .line 806
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->isEmergencyEpdgConnected()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 807
    invoke-virtual {v0, v3}, Lcom/sec/internal/constants/ims/os/NetworkState;->setEmergencyEpdgConnected(Z)V

    :cond_45
    :goto_45
    const/4 v0, 0x0

    if-ne p1, v2, :cond_4c

    .line 811
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mEPDNintfName:[Ljava/lang/String;

    aput-object v0, v1, p2

    .line 814
    :cond_4c
    iget-object p2, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    monitor-enter p2

    .line 815
    :try_start_4f
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    invoke-interface {v1, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 816
    invoke-interface {p3, p1}, Lcom/sec/internal/interfaces/ims/core/PdnEventListener;->onDisconnected(I)V

    .line 817
    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    invoke-interface {p0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/core/NetworkCallback;

    .line 818
    new-instance p1, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    invoke-direct {p1}, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/NetworkCallback;->mLinkProperties:Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    .line 819
    iput-object v0, p0, Lcom/sec/internal/ims/core/NetworkCallback;->mNetwork:Landroid/net/Network;

    .line 820
    iput-boolean v3, p0, Lcom/sec/internal/ims/core/NetworkCallback;->mPdnConnected:Z

    .line 822
    :cond_6d
    monitor-exit p2

    return-void

    :catchall_6f
    move-exception p0

    monitor-exit p2
    :try_end_71
    .catchall {:try_start_4f .. :try_end_71} :catchall_6f

    throw p0
.end method

.method private onStopPdnCompleted()V
    .registers 6

    .line 699
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mPendingRequests:Ljava/util/Set;

    monitor-enter v0

    const/4 v1, 0x0

    .line 700
    :try_start_4
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/PdnController;->mIsDisconnecting:Z

    .line 703
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mPendingRequests:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 704
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    invoke-virtual {p0, v3, v4, v2}, Lcom/sec/internal/ims/core/PdnController;->requestNetwork(IILcom/sec/internal/interfaces/ims/core/PdnEventListener;)V

    goto :goto_c

    .line 706
    :cond_38
    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mPendingRequests:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    .line 707
    monitor-exit v0

    return-void

    :catchall_3f
    move-exception p0

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_4 .. :try_end_41} :catchall_3f

    throw p0
.end method

.method private onWifiConnected()V
    .registers 8

    .line 938
    sget-object v0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onWifiConnected:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    monitor-enter v0

    .line 940
    :try_start_a
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isDualIMS()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4c

    .line 941
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_71

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;

    .line 942
    iget-object v4, p0, Lcom/sec/internal/ims/core/PdnController;->mSimManagers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_29
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 943
    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v6

    if-nez v6, :cond_40

    goto :goto_29

    .line 947
    :cond_40
    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataNetworkType()I

    move-result v6

    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v5

    invoke-interface {v3, v6, v2, v5}, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;->onDataConnectionStateChanged(IZI)V

    goto :goto_29

    .line 951
    :cond_4c
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_52
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_71

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;

    .line 952
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v4

    .line 953
    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v5

    if-nez v5, :cond_69

    goto :goto_52

    .line 957
    :cond_69
    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataNetworkType()I

    move-result v5

    invoke-interface {v3, v5, v2, v4}, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;->onDataConnectionStateChanged(IZI)V

    goto :goto_52

    .line 960
    :cond_71
    monitor-exit v0
    :try_end_72
    .catchall {:try_start_a .. :try_end_72} :catchall_bf

    .line 962
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mSimManagers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_78
    :goto_78
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_be

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 964
    :try_start_84
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimAvailable()Z

    move-result v2

    if-eqz v2, :cond_78

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/Mno;->ZAIN_KUWAIT:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_78

    iget-object v2, p0, Lcom/sec/internal/ims/core/PdnController;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    const-string v3, "mmtel"

    .line 966
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v4

    const/16 v5, 0x14

    .line 965
    invoke-interface {v2, v3, v5, v4}, Lcom/sec/internal/interfaces/ims/IImsFramework;->isServiceAvailable(Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_78

    .line 967
    iget-object v2, p0, Lcom/sec/internal/ims/core/PdnController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/sec/internal/helper/os/ITelephonyManager;->getCallState(I)I

    move-result v2

    if-nez v2, :cond_78

    .line 968
    iget-object v2, p0, Lcom/sec/internal/ims/core/PdnController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v1

    const/4 v3, 0x4

    invoke-interface {v2, v1, v3}, Lcom/sec/internal/helper/os/ITelephonyManager;->semSetNrMode(II)V
    :try_end_b8
    .catch Landroid/os/RemoteException; {:try_start_84 .. :try_end_b8} :catch_b9

    goto :goto_78

    :catch_b9
    move-exception v1

    .line 972
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_78

    :cond_be
    return-void

    :catchall_bf
    move-exception p0

    .line 960
    :try_start_c0
    monitor-exit v0
    :try_end_c1
    .catchall {:try_start_c0 .. :try_end_c1} :catchall_bf

    throw p0
.end method

.method private onWifiDisconnected()V
    .registers 8

    .line 978
    sget-object v0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onWifiDisConnected:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    monitor-enter v0

    .line 980
    :try_start_a
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isDualIMS()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4c

    .line 981
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_71

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;

    .line 982
    iget-object v4, p0, Lcom/sec/internal/ims/core/PdnController;->mSimManagers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_29
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 983
    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v6

    if-nez v6, :cond_40

    goto :goto_29

    .line 987
    :cond_40
    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataNetworkType()I

    move-result v6

    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v5

    invoke-interface {v3, v6, v2, v5}, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;->onDataConnectionStateChanged(IZI)V

    goto :goto_29

    .line 991
    :cond_4c
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_52
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_71

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;

    .line 992
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v4

    .line 993
    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v5

    if-nez v5, :cond_69

    goto :goto_52

    .line 997
    :cond_69
    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataNetworkType()I

    move-result v5

    invoke-interface {v3, v5, v2, v4}, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;->onDataConnectionStateChanged(IZI)V

    goto :goto_52

    .line 1000
    :cond_71
    monitor-exit v0
    :try_end_72
    .catchall {:try_start_a .. :try_end_72} :catchall_bf

    .line 1002
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mSimManagers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_78
    :goto_78
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_be

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 1004
    :try_start_84
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimAvailable()Z

    move-result v2

    if-eqz v2, :cond_78

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/Mno;->ZAIN_KUWAIT:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_78

    iget-object v2, p0, Lcom/sec/internal/ims/core/PdnController;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    const-string v3, "mmtel"

    .line 1006
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v4

    const/16 v5, 0x14

    .line 1005
    invoke-interface {v2, v3, v5, v4}, Lcom/sec/internal/interfaces/ims/IImsFramework;->isServiceAvailable(Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_78

    .line 1007
    iget-object v2, p0, Lcom/sec/internal/ims/core/PdnController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/sec/internal/helper/os/ITelephonyManager;->getCallState(I)I

    move-result v2

    if-nez v2, :cond_78

    .line 1008
    iget-object v2, p0, Lcom/sec/internal/ims/core/PdnController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v1

    const/4 v3, 0x3

    invoke-interface {v2, v1, v3}, Lcom/sec/internal/helper/os/ITelephonyManager;->semSetNrMode(II)V
    :try_end_b8
    .catch Landroid/os/RemoteException; {:try_start_84 .. :try_end_b8} :catch_b9

    goto :goto_78

    :catch_b9
    move-exception v1

    .line 1012
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_78

    :cond_be
    return-void

    :catchall_bf
    move-exception p0

    .line 1000
    :try_start_c0
    monitor-exit v0
    :try_end_c1
    .catchall {:try_start_c0 .. :try_end_c1} :catchall_bf

    throw p0
.end method

.method private requestStopNetwork(IILcom/sec/internal/interfaces/ims/core/PdnEventListener;)V
    .registers 10

    const/16 v0, 0xf

    if-ne p1, v0, :cond_9

    .line 645
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mEPDNintfName:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v2, v1, p2

    .line 648
    :cond_9
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mPendingRequests:Ljava/util/Set;

    monitor-enter v1

    .line 650
    :try_start_c
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-static {v2, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    .line 652
    iget-object v3, p0, Lcom/sec/internal/ims/core/PdnController;->mPendingRequests:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 653
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_be

    .line 655
    iget-object v2, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    monitor-enter v2

    .line 656
    :try_start_25
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager$NetworkCallback;

    .line 657
    iget-object v3, p0, Lcom/sec/internal/ims/core/PdnController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestStopNetwork: network "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", callback is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_47

    const-string v5, "exist"

    goto :goto_49

    :cond_47
    const-string v5, "null"

    .line 658
    :goto_49
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 657
    invoke-virtual {v3, p2, v4}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    const/4 v3, 0x1

    if-eqz v1, :cond_81

    .line 660
    invoke-interface {p3, p1}, Lcom/sec/internal/interfaces/ims/core/PdnEventListener;->onResumed(I)V

    .line 661
    invoke-interface {p3, p1}, Lcom/sec/internal/interfaces/ims/core/PdnEventListener;->onResumedBySnapshot(I)V
    :try_end_5c
    .catchall {:try_start_25 .. :try_end_5c} :catchall_bb

    .line 663
    :try_start_5c
    iget-object v4, p0, Lcom/sec/internal/ims/core/PdnController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v4, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_61
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5c .. :try_end_61} :catch_62
    .catchall {:try_start_5c .. :try_end_61} :catchall_bb

    goto :goto_6c

    :catch_62
    move-exception v1

    .line 665
    :try_start_63
    sget-object v4, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    :goto_6c
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    invoke-interface {v1, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    iput-boolean v3, p0, Lcom/sec/internal/ims/core/PdnController;->mIsDisconnecting:Z

    const/16 p3, 0x66

    .line 675
    invoke-virtual {p0, p3}, Landroid/os/Handler;->removeMessages(I)V

    .line 676
    invoke-virtual {p0, p3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p3

    const-wide/16 v4, 0x3e8

    invoke-virtual {p0, p3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 678
    :cond_81
    monitor-exit v2
    :try_end_82
    .catchall {:try_start_63 .. :try_end_82} :catchall_bb

    .line 679
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object p3

    const/16 v1, 0xb

    const/4 v2, 0x0

    if-ne p1, v1, :cond_a8

    .line 680
    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/os/NetworkState;->isEpdgConnected()Z

    move-result v1

    if-eqz v1, :cond_a8

    .line 683
    invoke-virtual {p3, v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->setEpdgConnected(Z)V

    .line 684
    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataNetworkType()I

    move-result p1

    const/16 v0, 0x12

    if-eq p1, v0, :cond_ba

    .line 685
    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataNetworkType()I

    move-result p1

    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataRegState()I

    move-result p3

    invoke-virtual {p0, p1, p3, v3, p2}, Lcom/sec/internal/ims/core/PdnController;->notifyDataConnectionState(IIZI)V

    goto :goto_ba

    :cond_a8
    if-ne p1, v0, :cond_ba

    .line 688
    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/os/NetworkState;->isEmergencyEpdgConnected()Z

    move-result p1

    if-eqz p1, :cond_b3

    .line 689
    invoke-virtual {p3, v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->setEmergencyEpdgConnected(Z)V

    .line 692
    :cond_b3
    iget-object p1, p0, Lcom/sec/internal/ims/core/PdnController;->mEPDNQN:[I

    aput v2, p1, p2

    .line 693
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/PdnController;->applyEmergencyQualifiedNetowrk(I)V

    :cond_ba
    :goto_ba
    return-void

    :catchall_bb
    move-exception p0

    .line 678
    :try_start_bc
    monitor-exit v2
    :try_end_bd
    .catchall {:try_start_bc .. :try_end_bd} :catchall_bb

    throw p0

    :catchall_be
    move-exception p0

    .line 653
    :try_start_bf
    monitor-exit v1
    :try_end_c0
    .catchall {:try_start_bf .. :try_end_c0} :catchall_be

    throw p0
.end method


# virtual methods
.method protected applyEmergencyQualifiedNetowrk(I)V
    .registers 6

    const/16 v0, 0x70

    .line 1405
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1406
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getWfcEpdgManager()Lcom/sec/internal/interfaces/ims/core/IWfcEpdgManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IWfcEpdgManager;->getEpdgMgr()Lcom/sec/epdg/EpdgManager;

    move-result-object v0

    if-eqz v0, :cond_51

    .line 1408
    sget-object v1, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setEmergencyRat: set ePDN QN to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/PdnController;->mEPDNQN:[I

    aget v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1409
    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mEPDNQN:[I

    aget p0, p0, p1

    invoke-virtual {v0, p1, p0}, Lcom/sec/epdg/EpdgManager;->setEmergencyQualifiedNetwork(II)V

    const-wide/16 p0, 0xc8

    .line 1413
    :try_start_35
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_38
    .catch Ljava/lang/InterruptedException; {:try_start_35 .. :try_end_38} :catch_39

    goto :goto_59

    :catch_39
    move-exception p0

    .line 1415
    sget-object p1, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sleep exception : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_59

    .line 1418
    :cond_51
    sget-object p0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "setEmergencyRat: em is null"

    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :goto_59
    return-void
.end method

.method public dump()V
    .registers 4

    .line 1355
    sget-object v0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dump of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 1356
    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->increaseIndent(Ljava/lang/String;)V

    .line 1357
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/PdnController;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "History of PdnController:"

    .line 1358
    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 1359
    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->increaseIndent(Ljava/lang/String;)V

    .line 1360
    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {p0}, Lcom/sec/internal/helper/SimpleEventLog;->dump()V

    .line 1361
    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->decreaseIndent(Ljava/lang/String;)V

    .line 1362
    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->decreaseIndent(Ljava/lang/String;)V

    return-void
.end method

.method public filterAddresses(Ljava/lang/Iterable;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/net/InetAddress;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 1060
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_7f

    .line 1062
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 1063
    sget-boolean v1, Lcom/sec/internal/ims/core/PdnController;->DBG:Z

    if-eqz v1, :cond_31

    .line 1064
    sget-object v2, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getIpAddressList: inetAddress: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    if-eqz v0, :cond_b

    .line 1068
    invoke-virtual {v0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual {v0}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v2

    if-nez v2, :cond_b

    .line 1069
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual {v0}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v2

    if-nez v2, :cond_b

    if-eqz v1, :cond_67

    .line 1071
    sget-object v1, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIpAddressList: inetAddress IP: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    :cond_67
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/helper/NetworkUtil;->isIPv4Address(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7b

    .line 1075
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    .line 1074
    invoke-static {v1}, Lcom/sec/internal/helper/NetworkUtil;->isIPv6Address(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1076
    :cond_7b
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_7f
    return-object p0
.end method

.method public getAllCellInfo(IZ)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .line 291
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    .line 292
    sget-object v1, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAllCellInfo mNeedCellLocationUpdate : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/ims/core/PdnController;->mNeedCellLocationUpdate:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 305
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v2

    if-eqz v0, :cond_35

    .line 306
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_35

    if-nez p2, :cond_35

    iget-boolean p2, p0, Lcom/sec/internal/ims/core/PdnController;->mNeedCellLocationUpdate:Z

    if-nez p2, :cond_35

    const/4 p2, -0x1

    if-ne v2, p2, :cond_61

    .line 307
    :cond_35
    iget-object p2, p0, Lcom/sec/internal/ims/core/PdnController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {p2, v2}, Lcom/sec/internal/helper/os/ITelephonyManager;->getAllCellInfoBySubId(I)Ljava/util/List;

    move-result-object p2

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get latest cellInfo and store, subId = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 309
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/internal/constants/ims/os/NetworkState;->setAllCellInfo(Ljava/util/List;)V

    .line 310
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/os/NetworkState;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    const/4 p1, 0x0

    .line 311
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/PdnController;->mNeedCellLocationUpdate:Z

    :cond_61
    return-object v0
.end method

.method public getCellIdentity(IZ)Landroid/telephony/CellIdentity;
    .registers 4

    if-eqz p2, :cond_13

    .line 320
    iget-object p2, p0, Lcom/sec/internal/ims/core/PdnController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/sec/internal/ims/util/SemTelephonyAdapter;->getCellIdentityFromSemTelephony(ILjava/lang/String;Ljava/lang/String;)Landroid/telephony/CellIdentity;

    move-result-object p2

    goto :goto_35

    .line 322
    :cond_13
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/os/NetworkState;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object p2

    if-nez p2, :cond_35

    .line 324
    sget-object p2, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "reget cid from ril since null restored value"

    invoke-static {p2, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 325
    iget-object p2, p0, Lcom/sec/internal/ims/core/PdnController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/sec/internal/ims/util/SemTelephonyAdapter;->getCellIdentityFromSemTelephony(ILjava/lang/String;Ljava/lang/String;)Landroid/telephony/CellIdentity;

    move-result-object p2

    .line 329
    :cond_35
    :goto_35
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/internal/constants/ims/os/NetworkState;->setCellIdentity(Landroid/telephony/CellIdentity;)V

    return-object p2
.end method

.method public getCurrentCellIdentity(II)Lcom/sec/internal/helper/os/CellIdentityWrapper;
    .registers 5

    .line 335
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 336
    invoke-virtual {p0, p1, v1}, Lcom/sec/internal/ims/core/PdnController;->getCellIdentity(IZ)Landroid/telephony/CellIdentity;

    move-result-object p0

    .line 337
    invoke-static {p0}, Lcom/sec/internal/helper/os/CellIdentityWrapper;->from(Landroid/telephony/CellIdentity;)Lcom/sec/internal/helper/os/CellIdentityWrapper;

    move-result-object p0

    return-object p0

    .line 340
    :cond_14
    invoke-virtual {p0, p1, v1}, Lcom/sec/internal/ims/core/PdnController;->getAllCellInfo(IZ)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_24

    .line 342
    sget-object p0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    const-string p2, "getCurrentCellIdentity: getAllCellInfo null"

    invoke-static {p0, p1, p2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 343
    sget-object p0, Lcom/sec/internal/helper/os/CellIdentityWrapper;->DEFAULT:Lcom/sec/internal/helper/os/CellIdentityWrapper;

    return-object p0

    .line 346
    :cond_24
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/core/PdnController$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/sec/internal/ims/core/PdnController$$ExternalSyntheticLambda0;-><init>()V

    .line 347
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/core/PdnController$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/sec/internal/ims/core/PdnController$$ExternalSyntheticLambda1;-><init>()V

    .line 348
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/core/PdnController$$ExternalSyntheticLambda2;

    invoke-direct {p1, p2}, Lcom/sec/internal/ims/core/PdnController$$ExternalSyntheticLambda2;-><init>(I)V

    .line 349
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 350
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Lcom/sec/internal/helper/os/CellIdentityWrapper;->DEFAULT:Lcom/sec/internal/helper/os/CellIdentityWrapper;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/helper/os/CellIdentityWrapper;

    return-object p0
.end method

.method public getDataState(I)I
    .registers 3

    .line 1390
    sget-object p0, Lcom/sec/internal/ims/core/PdnController;->mDataState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1d

    .line 1391
    sget-object p0, Lcom/sec/internal/ims/core/PdnController;->mDataState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1d
    const/4 p0, -0x1

    return p0
.end method

.method public getDefaultNetworkBearer()I
    .registers 4

    .line 1367
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    .line 1368
    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    if-eqz p0, :cond_1e

    const/4 v0, 0x1

    .line 1369
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_1e

    const/16 v1, 0xc

    .line 1370
    invoke-virtual {p0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    if-eqz p0, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    .line 1374
    :goto_1f
    sget-object p0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDefaultNetworkBearer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_30

    const-string v2, "CELLULAR"

    goto :goto_32

    :cond_30
    const-string v2, " WIFI"

    .line 1375
    :goto_32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1374
    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getDnsServers(Lcom/sec/internal/interfaces/ims/core/PdnEventListener;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/interfaces/ims/core/PdnEventListener;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1222
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    monitor-enter v0

    .line 1223
    :try_start_3
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/core/NetworkCallback;

    if-eqz p1, :cond_1b

    .line 1224
    iget-object p1, p1, Lcom/sec/internal/ims/core/NetworkCallback;->mLinkProperties:Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    if-eqz p1, :cond_1b

    .line 1225
    invoke-virtual {p1}, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getDnsServers(Landroid/net/LinkProperties;)Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 1227
    :cond_1b
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_1e
    move-exception p0

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public getDnsServersByNetType()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1233
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/PdnController;->getDnsServers(Landroid/net/LinkProperties;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getEmcBsIndication(I)Lcom/sec/internal/constants/ims/os/EmcBsIndication;
    .registers 2

    .line 286
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getEmcBsIndication()Lcom/sec/internal/constants/ims/os/EmcBsIndication;

    move-result-object p0

    return-object p0
.end method

.method public getEpdgPhysicalInterface(I)I
    .registers 3

    .line 268
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getEpdgPhysicalInterface()I

    move-result p0
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_8} :catch_9

    return p0

    .line 270
    :catch_9
    sget-object p0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Network State is NULL"

    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public getInterfaceName(Lcom/sec/internal/interfaces/ims/core/PdnEventListener;)Ljava/lang/String;
    .registers 3

    .line 1207
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    monitor-enter v0

    .line 1208
    :try_start_3
    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/core/NetworkCallback;

    if-eqz p0, :cond_19

    .line 1209
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkCallback;->mLinkProperties:Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    if-eqz p0, :cond_19

    .line 1210
    invoke-virtual {p0}, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->getInterfaceName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_19

    .line 1212
    monitor-exit v0

    return-object p0

    .line 1215
    :cond_19
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_1c
    move-exception p0

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public getIntfNameByNetType()Ljava/lang/String;
    .registers 2

    .line 1258
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/PdnController;->getIntfNameByNetType(Landroid/net/Network;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getIntfNameByNetType(Landroid/net/Network;)Ljava/lang/String;
    .registers 2

    .line 1263
    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p0, p1}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 1265
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLinkProperties(Lcom/sec/internal/interfaces/ims/core/PdnEventListener;)Lcom/sec/internal/helper/os/LinkPropertiesWrapper;
    .registers 2

    .line 1170
    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/core/NetworkCallback;

    if-eqz p0, :cond_d

    .line 1172
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkCallback;->mLinkProperties:Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMobileDataRegState(I)I
    .registers 2

    .line 277
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getMobileDataRegState()I

    move-result p0

    return p0
.end method

.method public getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;
    .registers 4

    .line 363
    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStates:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/os/NetworkState;

    .line 364
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getSimSlot()I

    move-result v1

    if-ne v1, p1, :cond_6

    return-object v0

    .line 368
    :cond_19
    sget-object p0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    const-string v0, "NetworkState is not exist. Return default NetworkState."

    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 369
    invoke-static {p1}, Lcom/sec/internal/constants/ims/os/NetworkState;->create(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object p0

    return-object p0
.end method

.method public getVoiceRegState(I)I
    .registers 2

    .line 262
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getVoiceRegState()I

    move-result p0

    return p0
.end method

.method public getVopsIndication(I)Lcom/sec/internal/constants/ims/os/VoPsIndication;
    .registers 2

    .line 249
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getVopsIndication()Lcom/sec/internal/constants/ims/os/VoPsIndication;

    move-result-object p0

    return-object p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 439
    sget-object v0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: what "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_9c

    goto/16 :goto_9a

    .line 489
    :pswitch_1f
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->applyEmergencyQualifiedNetowrk(I)V

    goto/16 :goto_9a

    .line 463
    :pswitch_26
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/constants/ims/core/LinkPropertiesChangedEvent;

    .line 464
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/core/LinkPropertiesChangedEvent;->getNetwork()Landroid/net/Network;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/core/LinkPropertiesChangedEvent;->getListener()Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    move-result-object v2

    .line 465
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/core/LinkPropertiesChangedEvent;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v0

    .line 464
    invoke-direct {p0, p1, v1, v2, v0}, Lcom/sec/internal/ims/core/PdnController;->onLinkPropertiesChanged(ILandroid/net/Network;Lcom/sec/internal/interfaces/ims/core/PdnEventListener;Landroid/net/LinkProperties;)V

    goto :goto_9a

    .line 485
    :pswitch_3c
    invoke-direct {p0}, Lcom/sec/internal/ims/core/PdnController;->onDefaultNetworkChanged()V

    goto :goto_9a

    .line 481
    :pswitch_40
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->onEpdgIkeError(I)V

    goto :goto_9a

    .line 454
    :pswitch_46
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/core/PdnController$PdnConnectedEvent;

    .line 455
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0}, Lcom/sec/internal/ims/core/PdnController$PdnConnectedEvent;->-$$Nest$fgetmListener(Lcom/sec/internal/ims/core/PdnController$PdnConnectedEvent;)Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    move-result-object v2

    invoke-static {v0}, Lcom/sec/internal/ims/core/PdnController$PdnConnectedEvent;->-$$Nest$fgetmNetwork(Lcom/sec/internal/ims/core/PdnController$PdnConnectedEvent;)Landroid/net/Network;

    move-result-object v0

    invoke-virtual {p0, v1, p1, v2, v0}, Lcom/sec/internal/ims/core/PdnController;->onPdnConnected(IILcom/sec/internal/interfaces/ims/core/PdnEventListener;Landroid/net/Network;)V

    goto :goto_9a

    .line 446
    :pswitch_5a
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/internal/ims/core/PdnController;->requestStopNetwork(IILcom/sec/internal/interfaces/ims/core/PdnEventListener;)V

    goto :goto_9a

    .line 477
    :pswitch_66
    invoke-direct {p0}, Lcom/sec/internal/ims/core/PdnController;->onWifiDisconnected()V

    goto :goto_9a

    .line 473
    :pswitch_6a
    invoke-direct {p0}, Lcom/sec/internal/ims/core/PdnController;->onWifiConnected()V

    goto :goto_9a

    .line 469
    :pswitch_6e
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget p1, p1, Landroid/os/Message;->arg2:I

    const/4 v2, 0x1

    if-ne p1, v2, :cond_7a

    goto :goto_7b

    :cond_7a
    const/4 v2, 0x0

    :goto_7b
    invoke-direct {p0, v0, v1, v2}, Lcom/sec/internal/ims/core/PdnController;->onEpdgConnected(ILjava/lang/String;Z)V

    goto :goto_9a

    .line 459
    :pswitch_7f
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/internal/ims/core/PdnController;->onPdnDisconnected(IILcom/sec/internal/interfaces/ims/core/PdnEventListener;)V

    goto :goto_9a

    .line 450
    :pswitch_8b
    invoke-direct {p0}, Lcom/sec/internal/ims/core/PdnController;->onStopPdnCompleted()V

    goto :goto_9a

    .line 442
    :pswitch_8f
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    invoke-virtual {p0, v0, v1, p1}, Lcom/sec/internal/ims/core/PdnController;->requestNetwork(IILcom/sec/internal/interfaces/ims/core/PdnEventListener;)V

    :goto_9a
    return-void

    nop

    :pswitch_data_9c
    .packed-switch 0x65
        :pswitch_8f
        :pswitch_8b
        :pswitch_7f
        :pswitch_6e
        :pswitch_6a
        :pswitch_66
        :pswitch_5a
        :pswitch_46
        :pswitch_40
        :pswitch_3c
        :pswitch_26
        :pswitch_1f
    .end packed-switch
.end method

.method protected handlePcscfRestorationIntent(Landroid/content/Intent;)V
    .registers 6

    const-string v0, "V4"

    .line 1446
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_1d

    .line 1447
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1d
    const-string v0, "V6"

    .line 1449
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    const-string v3, ","

    if-eqz v1, :cond_4f

    .line 1450
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1451
    :cond_3c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_4f
    const-string v0, "PhoneId"

    const/4 v1, 0x0

    .line 1453
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 1454
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1455
    sget-object v1, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "phoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", pcscfList for restoration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1457
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_88

    const-string p0, "invalid pcscf restoration intent"

    .line 1458
    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1461
    :cond_88
    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/sec/internal/ims/core/PdnController$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lcom/sec/internal/ims/core/PdnController$$ExternalSyntheticLambda3;-><init>(I)V

    .line 1462
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/core/PdnController$$ExternalSyntheticLambda4;

    invoke-direct {p1}, Lcom/sec/internal/ims/core/PdnController$$ExternalSyntheticLambda4;-><init>()V

    .line 1465
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 1466
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/core/PdnController$$ExternalSyntheticLambda5;

    invoke-direct {p1, v0}, Lcom/sec/internal/ims/core/PdnController$$ExternalSyntheticLambda5;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public hasEmergencyServiceOnly(I)Z
    .registers 2

    .line 243
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result p1

    .line 244
    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {p0, p1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getDataServiceState(I)I

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public initSequentially()V
    .registers 4

    .line 150
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mSimManagers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 151
    iget-object v2, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStates:Ljava/util/List;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v1

    invoke-static {v1}, Lcom/sec/internal/constants/ims/os/NetworkState;->create(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 154
    :cond_20
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mSimManagers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 155
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/PdnController;->registerTelephonyCallback(I)V

    goto :goto_26

    .line 157
    :cond_3a
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getWfcEpdgManager()Lcom/sec/internal/interfaces/ims/core/IWfcEpdgManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mEpdgHandoverListener:Lcom/sec/ims/ImsManager$EpdgListener;

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/IWfcEpdgManager;->registerEpdgHandoverListener(Lcom/sec/ims/IEpdgListener;)V

    .line 158
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v1, 0x1

    .line 159
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0xc

    .line 160
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 161
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 162
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/sec/internal/ims/core/PdnController;->mWifiStateListener:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v0, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 163
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mDefaultNetworkListener:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 165
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.intent.action.UPDATE_PCSCF_RESTORATION"

    .line 166
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 167
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mPcscfRestorationEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public isConnected(ILcom/sec/internal/interfaces/ims/core/PdnEventListener;)Z
    .registers 7

    const/16 v0, 0xf

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_15

    .line 1133
    check-cast p2, Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result p1

    .line 1134
    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mEPDNintfName:[Ljava/lang/String;

    aget-object p0, p0, p1

    if-eqz p0, :cond_13

    goto :goto_14

    :cond_13
    move v1, v2

    :goto_14
    return v1

    .line 1139
    :cond_15
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    monitor-enter v0

    .line 1140
    :try_start_18
    iget-object v3, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 1141
    sget-object p0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    const-string p1, "isConnected: No callback exists"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    monitor-exit v0

    return v2

    .line 1144
    :cond_29
    iget-object v3, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/core/NetworkCallback;

    .line 1145
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_18 .. :try_end_32} :catchall_97

    if-eqz p2, :cond_96

    .line 1147
    iget-object v0, p2, Lcom/sec/internal/ims/core/NetworkCallback;->mNetwork:Landroid/net/Network;

    if-eqz v0, :cond_96

    iget v0, p2, Lcom/sec/internal/ims/core/NetworkCallback;->mNetworkType:I

    if-eq v0, p1, :cond_3d

    goto :goto_96

    .line 1151
    :cond_3d
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/NetworkCallback;->isDisconnectRequested()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 1152
    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isConnected: Disconnect msg is in queue for networkType ["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    return v2

    :cond_5f
    if-eqz p1, :cond_67

    if-ne p1, v1, :cond_64

    goto :goto_67

    .line 1162
    :cond_64
    iget-boolean p0, p2, Lcom/sec/internal/ims/core/NetworkCallback;->mPdnConnected:Z

    goto :goto_72

    .line 1160
    :cond_67
    :goto_67
    iget-object p0, p2, Lcom/sec/internal/ims/core/NetworkCallback;->mLinkProperties:Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    invoke-virtual {p0}, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->getInterfaceName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/2addr p0, v1

    .line 1164
    :goto_72
    sget-object p2, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isConnected:  ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "] networktype ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_96
    :goto_96
    return v2

    :catchall_97
    move-exception p0

    .line 1145
    :try_start_98
    monitor-exit v0
    :try_end_99
    .catchall {:try_start_98 .. :try_end_99} :catchall_97

    throw p0
.end method

.method public isDataRoaming(I)Z
    .registers 2

    .line 258
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/os/NetworkState;->isDataRoaming()Z

    move-result p0

    return p0
.end method

.method public isDisconnecting()Z
    .registers 1

    .line 1332
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/PdnController;->mIsDisconnecting:Z

    return p0
.end method

.method public isEmergencyEpdgConnected(I)Z
    .registers 2

    .line 1189
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/core/PdnController$$ExternalSyntheticLambda6;

    invoke-direct {p1}, Lcom/sec/internal/ims/core/PdnController$$ExternalSyntheticLambda6;-><init>()V

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

.method public isEpdgAvailable(I)Z
    .registers 2

    .line 1184
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/core/PdnController$$ExternalSyntheticLambda7;

    invoke-direct {p1}, Lcom/sec/internal/ims/core/PdnController$$ExternalSyntheticLambda7;-><init>()V

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

.method public isEpdgConnected(I)Z
    .registers 2

    .line 1180
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/core/PdnController$$ExternalSyntheticLambda8;

    invoke-direct {p1}, Lcom/sec/internal/ims/core/PdnController$$ExternalSyntheticLambda8;-><init>()V

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

.method public isEpsOnlyReg(I)Z
    .registers 2

    .line 238
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object p0

    .line 239
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/os/NetworkState;->isPsOnlyReg()Z

    move-result p1

    if-eqz p1, :cond_16

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataNetworkType()I

    move-result p0

    invoke-static {p0}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method public isInternationalRoaming(I)Z
    .registers 2

    .line 354
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/os/NetworkState;->isInternationalRoaming()Z

    move-result p0

    return p0
.end method

.method public isNeedCellLocationUpdate()Z
    .registers 1

    .line 358
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/PdnController;->mNeedCellLocationUpdate:Z

    return p0
.end method

.method public isNetworkAvailable(III)Z
    .registers 9

    const/16 v0, 0xf

    const/4 v1, 0x1

    if-eq p2, v0, :cond_57

    const/4 v0, -0x1

    if-ne p2, v0, :cond_9

    goto :goto_57

    .line 1275
    :cond_9
    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v0

    .line 1277
    sget-object v2, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isNetworkAvailable: isEpdgConnected="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->isEpdgConnected()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " getDataNetworkType()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1278
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataNetworkType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1277
    invoke-static {v2, p3, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/16 p3, 0x12

    const/4 v2, 0x0

    if-ne p1, p3, :cond_49

    if-eq p2, v1, :cond_49

    .line 1280
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->isEpdgConnected()Z

    move-result p0

    if-nez p0, :cond_48

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataNetworkType()I

    move-result p0

    if-ne p0, p3, :cond_47

    goto :goto_48

    :cond_47
    move v1, v2

    :cond_48
    :goto_48
    return v1

    .line 1282
    :cond_49
    sget-object p1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->AIRPLANE_MODE:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result p0

    sget p1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->AIRPLANE_MODE_ON:I

    if-eq p0, p1, :cond_56

    goto :goto_57

    :cond_56
    move v1, v2

    :cond_57
    :goto_57
    return v1
.end method

.method public isNetworkRequested(Lcom/sec/internal/interfaces/ims/core/PdnEventListener;)Z
    .registers 2

    .line 1288
    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isPendedEPDGWeakSignal(I)Z
    .registers 2

    .line 205
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/os/NetworkState;->isPendedEPDGWeakSignal()Z

    move-result p0

    return p0
.end method

.method public isPsOnlyReg(I)Z
    .registers 2

    .line 281
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/os/NetworkState;->isPsOnlyReg()Z

    move-result p0

    return p0
.end method

.method public isVoiceRoaming(I)Z
    .registers 2

    .line 254
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/os/NetworkState;->isVoiceRoaming()Z

    move-result p0

    return p0
.end method

.method public isWifiConnected()Z
    .registers 4

    .line 1194
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_11

    .line 1196
    sget-object p0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    const-string v0, "isWifiConnected: Default NW is null "

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1200
    :cond_11
    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    if-eqz p0, :cond_30

    const/4 v0, 0x1

    .line 1201
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-eqz v2, :cond_30

    const/16 v2, 0xc

    .line 1202
    invoke-virtual {p0, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2

    if-nez v2, :cond_2f

    const/4 v2, 0x4

    .line 1203
    invoke-virtual {p0, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    if-eqz p0, :cond_30

    :cond_2f
    move v1, v0

    :cond_30
    return v1
.end method

.method notifyDataConnectionState(IIZI)V
    .registers 9

    .line 1292
    sget-object v0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    const-string v1, "notifyDataConnectionState"

    invoke-static {v0, p4, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1294
    invoke-virtual {p0, p4}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v1

    if-nez v1, :cond_e

    return-void

    .line 1299
    :cond_e
    invoke-static {p1}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result v2

    if-eqz v2, :cond_1d

    const-string v2, "initialize PendedEPDGWeakSignal flag"

    .line 1300
    invoke-static {v0, p4, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v2, 0x0

    .line 1301
    invoke-virtual {p0, p4, v2}, Lcom/sec/internal/ims/core/PdnController;->setPendedEPDGWeakSignal(IZ)V

    .line 1304
    :cond_1d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyDataConnectionState: needNotify="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " networkType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " isEpdgConnected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1306
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/os/NetworkState;->isEpdgConnected()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " dataNetType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1307
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataNetworkType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "=>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " dataRegState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1308
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataRegState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "=>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1304
    invoke-static {v0, p4, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1310
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/os/NetworkState;->isEpdgConnected()Z

    move-result v0

    if-eqz v0, :cond_8f

    const/16 v0, 0x12

    if-eq p1, v0, :cond_8f

    .line 1311
    invoke-static {p4}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v2, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->DISH:Lcom/sec/internal/constants/Mno;

    filled-new-array {v2, v3}, [Lcom/sec/internal/constants/Mno;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    if-nez v0, :cond_8f

    .line 1314
    invoke-virtual {v1, p1}, Lcom/sec/internal/constants/ims/os/NetworkState;->setDataNetworkType(I)V

    .line 1315
    invoke-virtual {v1, p2}, Lcom/sec/internal/constants/ims/os/NetworkState;->setDataRegState(I)V

    :cond_8f
    if-nez p3, :cond_9d

    .line 1318
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataNetworkType()I

    move-result p3

    if-ne p1, p3, :cond_9d

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataRegState()I

    move-result p3

    if-eq p2, p3, :cond_c5

    .line 1319
    :cond_9d
    invoke-virtual {v1, p1}, Lcom/sec/internal/constants/ims/os/NetworkState;->setDataNetworkType(I)V

    .line 1320
    invoke-virtual {v1, p2}, Lcom/sec/internal/constants/ims/os/NetworkState;->setDataRegState(I)V

    .line 1322
    iget-object p1, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    monitor-enter p1

    .line 1323
    :try_start_a6
    iget-object p2, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_ac
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_c4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;

    .line 1324
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataNetworkType()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/PdnController;->isWifiConnected()Z

    move-result v2

    invoke-interface {p3, v0, v2, p4}, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;->onDataConnectionStateChanged(IZI)V

    goto :goto_ac

    .line 1326
    :cond_c4
    monitor-exit p1

    :cond_c5
    return-void

    :catchall_c6
    move-exception p0

    monitor-exit p1
    :try_end_c8
    .catchall {:try_start_a6 .. :try_end_c8} :catchall_c6

    throw p0
.end method

.method onPdnConnected(IILcom/sec/internal/interfaces/ims/core/PdnEventListener;Landroid/net/Network;)V
    .registers 11

    const/16 v0, 0xb

    if-ne p1, v0, :cond_34

    .line 712
    invoke-static {p2}, Lcom/sec/internal/log/IMSLogTimer;->setPdnEndTime(I)V

    .line 713
    move-object v0, p3

    check-cast v0, Lcom/sec/internal/ims/core/RegisterTask;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PDN SETUP TIME : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    invoke-static {p2}, Lcom/sec/internal/log/IMSLogTimer;->getPdnEndTime(I)J

    move-result-wide v2

    invoke-static {p2}, Lcom/sec/internal/log/IMSLogTimer;->getPdnStartTime(I)J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 713
    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->lazer(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    .line 717
    :cond_34
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    monitor-enter v0

    .line 718
    :try_start_37
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/NetworkCallback;

    .line 719
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_37 .. :try_end_40} :catchall_f9

    if-nez v1, :cond_5e

    .line 722
    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ignore onPdnConnected: network "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " as requestStopNetwork preceded this"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    return-void

    .line 726
    :cond_5e
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p4}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v0

    if-eqz v0, :cond_f1

    .line 727
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6e

    goto/16 :goto_f1

    .line 733
    :cond_6e
    iget-object v2, p0, Lcom/sec/internal/ims/core/PdnController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPdnConnected: network="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/PdnController;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 734
    iput-object p4, v1, Lcom/sec/internal/ims/core/NetworkCallback;->mNetwork:Landroid/net/Network;

    const/4 v2, 0x1

    .line 735
    iput-boolean v2, v1, Lcom/sec/internal/ims/core/NetworkCallback;->mPdnConnected:Z

    .line 737
    new-instance v3, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    invoke-direct {v3, v0}, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;-><init>(Landroid/net/LinkProperties;)V

    .line 739
    sget-object v0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPdnConnected: link properties "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, p2, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 741
    invoke-virtual {v3}, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/sec/internal/ims/core/PdnController;->handleConnectedPdnType(IILcom/sec/internal/ims/core/NetworkCallback;Ljava/lang/String;)V

    .line 743
    iget-object p2, v1, Lcom/sec/internal/ims/core/NetworkCallback;->mLinkProperties:Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    invoke-virtual {p2}, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->getInterfaceName()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_e9

    .line 744
    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/core/NetworkCallback;->isLocalIpChanged(Lcom/sec/internal/helper/os/LinkPropertiesWrapper;)I

    move-result p2

    if-lt p2, v2, :cond_d9

    const/4 v0, 0x2

    if-ne p2, v0, :cond_d5

    goto :goto_d6

    :cond_d5
    const/4 v2, 0x0

    .line 746
    :goto_d6
    invoke-interface {p3, p1, p4, v2}, Lcom/sec/internal/interfaces/ims/core/PdnEventListener;->onLocalIpChanged(ILandroid/net/Network;Z)V

    .line 748
    :cond_d9
    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/core/NetworkCallback;->isPcscfAddressChanged(Lcom/sec/internal/helper/os/LinkPropertiesWrapper;)Z

    move-result p2

    if-eqz p2, :cond_e6

    .line 749
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/core/PdnController;->readPcscfFromLinkProperties(Lcom/sec/internal/helper/os/LinkPropertiesWrapper;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p3, p1, p4, p0}, Lcom/sec/internal/interfaces/ims/core/PdnEventListener;->onPcscfAddressChanged(ILandroid/net/Network;Ljava/util/List;)V

    .line 751
    :cond_e6
    iput-object v3, v1, Lcom/sec/internal/ims/core/NetworkCallback;->mLinkProperties:Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    goto :goto_f0

    .line 754
    :cond_e9
    iput-object v3, v1, Lcom/sec/internal/ims/core/NetworkCallback;->mLinkProperties:Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    .line 755
    iget-object p0, v1, Lcom/sec/internal/ims/core/NetworkCallback;->mListener:Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    invoke-interface {p0, p1, p4}, Lcom/sec/internal/interfaces/ims/core/PdnEventListener;->onConnected(ILandroid/net/Network;)V

    :goto_f0
    return-void

    .line 728
    :cond_f1
    :goto_f1
    sget-object p0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    const-string p1, "onPdnConnected: linkProperties or interface name is null, wait for next onPdnConnected()"

    invoke-static {p0, p2, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :catchall_f9
    move-exception p0

    .line 719
    :try_start_fa
    monitor-exit v0
    :try_end_fb
    .catchall {:try_start_fa .. :try_end_fb} :catchall_f9

    throw p0
.end method

.method protected readPcscfFromLinkProperties(Lcom/sec/internal/helper/os/LinkPropertiesWrapper;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/helper/os/LinkPropertiesWrapper;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 415
    sget-object p0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "readPcscfFromLinkProperties: lp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_12

    const-string v1, "null"

    goto :goto_14

    :cond_12
    const-string v1, "not null"

    :goto_14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_26

    return-object p0

    .line 421
    :cond_26
    invoke-virtual {p1}, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->getPcscfServers()Ljava/util/List;

    move-result-object p1

    .line 422
    invoke-static {p1}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_7e

    .line 423
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_34
    :goto_34
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 424
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 425
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_34

    const-string v1, "0.0.0.0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    const-string v1, "0:0:0:0:0:0:0:0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    const-string v1, "::"

    .line 426
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_63

    goto :goto_34

    .line 429
    :cond_63
    sget-object v1, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "readPcscfFromLinkProperties: Valid pcscf: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_34

    :cond_7e
    return-object p0
.end method

.method public registerForNetworkState(Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;)V
    .registers 2

    .line 521
    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerTelephonyCallback(I)V
    .registers 7

    .line 171
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v0

    .line 172
    sget-object v1, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerPhoneStateListener subId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-gez v0, :cond_1e

    return-void

    .line 177
    :cond_1e
    iget-object v2, p0, Lcom/sec/internal/ims/core/PdnController;->mTelephonyCallbacks:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;

    if-eqz v2, :cond_4f

    .line 179
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerPhoneStateListener: callback exits subId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->getSubId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 180
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->getSubId()I

    move-result v1

    if-ne v1, v0, :cond_4c

    return-void

    .line 183
    :cond_4c
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->unRegisterTelephonyCallback(I)V

    .line 187
    :cond_4f
    new-instance v1, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;

    iget-object v2, p0, Lcom/sec/internal/ims/core/PdnController;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-direct {v1, p0, v2, p1, v0}, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;-><init>(Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/interfaces/ims/IImsFramework;II)V

    .line 189
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mTelephonyCallbacks:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-interface {v0, p1, p0, v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->registerTelephonyCallbackForSlot(ILjava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    return-void
.end method

.method public removeRouteToHostAddress(ILjava/lang/String;)Z
    .registers 6

    .line 1113
    sget-object v0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeRouteToHostAddress: hostAddress "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " networkType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/core/PdnController;->determineIpAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p2

    if-eqz p2, :cond_2c

    .line 1123
    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-static {p0, p1, p2}, Lcom/sec/ims/extensions/ConnectivityManagerExt;->removeRouteToHostAddress(Landroid/net/ConnectivityManager;ILjava/net/InetAddress;)Z

    move-result p0

    goto :goto_2d

    :cond_2c
    const/4 p0, 0x0

    :goto_2d
    return p0
.end method

.method requestNetwork(IILcom/sec/internal/interfaces/ims/core/PdnEventListener;)V
    .registers 11

    .line 537
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/NetworkCallback;

    .line 538
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestNetwork: networkType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", callback="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_22

    const-string v3, "null"

    goto :goto_28

    .line 539
    :cond_22
    iget v3, v0, Lcom/sec/internal/ims/core/NetworkCallback;->mNetworkType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 538
    invoke-virtual {v1, p2, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    if-eqz v0, :cond_58

    .line 541
    iget v1, v0, Lcom/sec/internal/ims/core/NetworkCallback;->mNetworkType:I

    if-eq v1, p1, :cond_49

    .line 543
    :try_start_38
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_3d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_38 .. :try_end_3d} :catch_3e

    goto :goto_58

    :catch_3e
    move-exception v0

    .line 545
    sget-object v1, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_58

    .line 549
    :cond_49
    invoke-virtual {p0, p1, p3}, Lcom/sec/internal/ims/core/PdnController;->isConnected(ILcom/sec/internal/interfaces/ims/core/PdnEventListener;)Z

    move-result p2

    if-eqz p2, :cond_57

    .line 550
    new-instance p2, Lcom/sec/internal/ims/core/PdnController$$ExternalSyntheticLambda9;

    invoke-direct {p2, p3, p1, v0}, Lcom/sec/internal/ims/core/PdnController$$ExternalSyntheticLambda9;-><init>(Lcom/sec/internal/interfaces/ims/core/PdnEventListener;ILcom/sec/internal/ims/core/NetworkCallback;)V

    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_57
    return-void

    .line 556
    :cond_58
    :goto_58
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mPendingRequests:Ljava/util/Set;

    monitor-enter v0

    .line 557
    :try_start_5b
    iget-boolean v1, p0, Lcom/sec/internal/ims/core/PdnController;->mIsDisconnecting:Z

    if-eqz v1, :cond_8e

    .line 558
    sget-object v1, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Wait until ongoing stop request done."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    iget-object v2, p0, Lcom/sec/internal/ims/core/PdnController;->mPendingRequests:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-static {p1, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 p1, 0x66

    .line 563
    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p2

    if-nez p2, :cond_8c

    const-string/jumbo p2, "requestNetwork: Unexpected event missing case. Send EVENT_STOP_PDN_COMPLETED again"

    .line 564
    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 568
    :cond_8c
    monitor-exit v0

    return-void

    .line 570
    :cond_8e
    monitor-exit v0
    :try_end_8f
    .catchall {:try_start_5b .. :try_end_8f} :catchall_16e

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_95

    move v2, v1

    goto :goto_96

    :cond_95
    move v2, v0

    .line 574
    :goto_96
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkCapability(I)I

    move-result v3

    .line 579
    invoke-static {p2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v4

    .line 581
    invoke-virtual {v4}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v4

    if-eqz v4, :cond_dd

    .line 582
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/PdnController;->getDefaultNetworkBearer()I

    move-result v4

    .line 583
    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/core/PdnController;->translateNetworkBearer(I)I

    move-result v4

    .line 584
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataRegState()I

    move-result v5

    .line 585
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/PdnController;->isDataRoaming(I)Z

    move-result v6

    if-nez v6, :cond_dd

    iget-object v6, p0, Lcom/sec/internal/ims/core/PdnController;->mContext:Landroid/content/Context;

    .line 586
    invoke-static {v6}, Lcom/sec/internal/helper/NetworkUtil;->isMobileDataOn(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_dd

    iget-object v6, p0, Lcom/sec/internal/ims/core/PdnController;->mContext:Landroid/content/Context;

    .line 587
    invoke-static {v6}, Lcom/sec/internal/helper/NetworkUtil;->isMobileDataPressed(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_dd

    if-eq v5, v1, :cond_dd

    sget-object v5, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->AIRPLANE_MODE:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    iget-object v6, p0, Lcom/sec/internal/ims/core/PdnController;->mContext:Landroid/content/Context;

    .line 589
    invoke-virtual {v5, v6, v0}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result v5

    sget v6, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->AIRPLANE_MODE_ON:I

    if-eq v5, v6, :cond_dd

    if-nez p1, :cond_dd

    if-ne v4, v1, :cond_dd

    move v0, v1

    :cond_dd
    if-eqz v0, :cond_e1

    const/16 v3, 0xc

    .line 603
    :cond_e1
    sget-object v4, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startPdnConnectivity: transport "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " capability "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " needRequestMobileNetwork "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, p2, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 606
    new-instance v4, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v4}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 608
    invoke-virtual {v4, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    if-nez v2, :cond_132

    .line 611
    invoke-static {p2}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v2

    if-lez v2, :cond_132

    .line 612
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isDualIMS()Z

    move-result v3

    if-eqz v3, :cond_132

    .line 613
    new-instance v3, Landroid/net/TelephonyNetworkSpecifier$Builder;

    invoke-direct {v3}, Landroid/net/TelephonyNetworkSpecifier$Builder;-><init>()V

    invoke-virtual {v3, v2}, Landroid/net/TelephonyNetworkSpecifier$Builder;->setSubscriptionId(I)Landroid/net/TelephonyNetworkSpecifier$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/TelephonyNetworkSpecifier$Builder;->build()Landroid/net/TelephonyNetworkSpecifier;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/net/NetworkRequest$Builder;->setNetworkSpecifier(Landroid/net/NetworkSpecifier;)Landroid/net/NetworkRequest$Builder;

    .line 617
    :cond_132
    invoke-virtual {v4}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v2

    .line 619
    new-instance v3, Lcom/sec/internal/ims/core/NetworkCallback;

    invoke-direct {v3, p0, p1, p3, p2}, Lcom/sec/internal/ims/core/NetworkCallback;-><init>(Lcom/sec/internal/ims/core/PdnController;ILcom/sec/internal/interfaces/ims/core/PdnEventListener;I)V

    .line 620
    iget-object v4, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    invoke-interface {v4, p3, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v4, 0xf

    if-ne p1, v4, :cond_14a

    .line 624
    :try_start_144
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/PdnController;->applyEmergencyQualifiedNetowrk(I)V

    goto :goto_14a

    :catch_148
    move-exception p1

    goto :goto_15c

    :cond_14a
    :goto_14a
    if-eq p1, v1, :cond_14e

    if-nez p1, :cond_150

    :cond_14e
    if-eqz v0, :cond_156

    .line 628
    :cond_150
    iget-object p1, p0, Lcom/sec/internal/ims/core/PdnController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p1, v2, v3}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    goto :goto_16d

    .line 630
    :cond_156
    iget-object p1, p0, Lcom/sec/internal/ims/core/PdnController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p1, v2, v3}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_15b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_144 .. :try_end_15b} :catch_148

    goto :goto_16d

    .line 636
    :goto_15c
    sget-object p2, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    invoke-interface {p3}, Lcom/sec/internal/interfaces/ims/core/PdnEventListener;->onNetworkRequestFail()V

    .line 639
    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    invoke-interface {p0, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_16d
    return-void

    :catchall_16e
    move-exception p0

    .line 570
    :try_start_16f
    monitor-exit v0
    :try_end_170
    .catchall {:try_start_16f .. :try_end_170} :catchall_16e

    throw p0
.end method

.method public requestRouteToHostAddress(ILjava/lang/String;)Z
    .registers 7

    .line 1101
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/core/PdnController;->determineIpAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 1103
    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-static {p0, p1, v0}, Lcom/sec/ims/extensions/ConnectivityManagerExt;->requestRouteToHostAddress(Landroid/net/ConnectivityManager;ILjava/net/InetAddress;)Z

    move-result p0

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    .line 1106
    :goto_e
    sget-object v1, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestRouteToHostAddress: hostAddress="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " networkType="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " address="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1107
    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " result : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1106
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public resetNetworkState(I)V
    .registers 2

    .line 373
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object p0

    if-eqz p0, :cond_23

    const/4 p1, 0x0

    .line 375
    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/os/NetworkState;->setDataNetworkType(I)V

    .line 376
    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/os/NetworkState;->setMobileDataNetworkType(I)V

    const/4 p1, 0x1

    .line 377
    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/os/NetworkState;->setDataRegState(I)V

    .line 378
    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/os/NetworkState;->setVoiceRegState(I)V

    .line 379
    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/os/NetworkState;->setMobileDataRegState(I)V

    .line 380
    sget p1, Lcom/sec/ims/extensions/ServiceStateExt;->SNAPSHOT_STATUS_DEACTIVATED:I

    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/os/NetworkState;->setSnapshotState(I)V

    const/4 p1, 0x0

    .line 381
    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/os/NetworkState;->setAllCellInfo(Ljava/util/List;)V

    .line 382
    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/os/NetworkState;->setCellIdentity(Landroid/telephony/CellIdentity;)V

    :cond_23
    return-void
.end method

.method public setDataState(II)V
    .registers 3

    .line 1397
    sget-object p0, Lcom/sec/internal/ims/core/PdnController;->mDataState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setEmergencyQualifiedNetowrk(II)V
    .registers 3

    .line 1401
    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mEPDNQN:[I

    aput p2, p0, p1

    return-void
.end method

.method public setPendedEPDGWeakSignal(IZ)V
    .registers 8

    .line 210
    sget-object v0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "setPendedEPDGWeakSignal"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 211
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object p0

    if-eqz p2, :cond_4e

    .line 213
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object p2

    .line 214
    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->DISH:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    sget-object v4, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    filled-new-array {v1, v2, v3, v4}, [Lcom/sec/internal/constants/Mno;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result p2

    if-eqz p2, :cond_52

    if-nez p0, :cond_2d

    const-string/jumbo p0, "setPendedEPDGWeakSignal, networkState is not exist."

    .line 216
    invoke-static {v0, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 220
    :cond_2d
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataRegState()I

    move-result p2

    .line 221
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataNetworkType()I

    move-result v1

    const/4 v2, 0x1

    if-eq p2, v2, :cond_45

    const/4 v3, 0x3

    if-eq p2, v3, :cond_45

    const/16 v3, 0xd

    if-eq v1, v3, :cond_52

    const/16 v3, 0xe

    if-eq v1, v3, :cond_52

    if-nez p2, :cond_52

    :cond_45
    const-string p2, "VzW/ATT/TMOUS/DISH : LOST_LTE_WIFI_CONNECTION:12"

    .line 226
    invoke-static {v0, p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 228
    invoke-virtual {p0, v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->setPendedEpdgWeakSignal(Z)V

    goto :goto_52

    :cond_4e
    const/4 p1, 0x0

    .line 232
    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/os/NetworkState;->setPendedEpdgWeakSignal(Z)V

    :cond_52
    :goto_52
    return-void
.end method

.method public startPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/PdnEventListener;I)I
    .registers 7

    .line 531
    sget-object v0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startPdnConnectivity: networkType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p3, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x65

    .line 532
    invoke-virtual {p0, v0, p1, p3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public stopPdnConnectivity(IILcom/sec/internal/interfaces/ims/core/PdnEventListener;)I
    .registers 9

    .line 1041
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    monitor-enter v0

    .line 1042
    :try_start_3
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/NetworkCallback;

    .line 1043
    iget-object v2, p0, Lcom/sec/internal/ims/core/PdnController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stopPdnConnectivity: network "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", callback is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_25

    const-string v4, "exist"

    goto :goto_27

    :cond_25
    const-string v4, "null"

    .line 1044
    :goto_27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1043
    invoke-virtual {v2, p2, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    if-eqz v1, :cond_37

    .line 1046
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/NetworkCallback;->setDisconnectRequested()V

    goto :goto_4c

    .line 1048
    :cond_37
    sget-object v1, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "requestStopNetwork: callback not found"

    invoke-static {v1, p2, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1049
    invoke-static {p2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 1050
    monitor-exit v0

    const/4 p0, 0x2

    return p0

    .line 1053
    :cond_4c
    :goto_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_3 .. :try_end_4d} :catchall_58

    const/16 v0, 0x6b

    .line 1055
    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 p0, 0x1

    return p0

    :catchall_58
    move-exception p0

    .line 1053
    :try_start_59
    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    throw p0
.end method

.method public stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/PdnEventListener;)I
    .registers 4

    .line 1036
    iget v0, p0, Lcom/sec/internal/ims/core/PdnController;->mActiveDataPhoneId:I

    invoke-virtual {p0, p1, v0, p2}, Lcom/sec/internal/ims/core/PdnController;->stopPdnConnectivity(IILcom/sec/internal/interfaces/ims/core/PdnEventListener;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 1337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1338
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/constants/ims/os/NetworkState;

    .line 1339
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " phoneId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->getSimSlot()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1340
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mIsEpdgConnected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->isEpdgConnected()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1341
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " isWifiConnected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/PdnController;->isWifiConnected()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1342
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mVopsIndication: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->getVopsIndication()Lcom/sec/internal/constants/ims/os/VoPsIndication;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1343
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mDataRoaming:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->isDataRoaming()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1344
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mDataConnectionState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->isDataConnectedState()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1345
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mVoiceRoaming: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->isVoiceRoaming()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1346
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mEmergencyOnly: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->isEmergencyOnly()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1347
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mIsDisconnecting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/sec/internal/ims/core/PdnController;->mIsDisconnecting:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1348
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mPendedEPDGWeakSignal: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->isPendedEPDGWeakSignal()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1349
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mEmcbsIndication: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->getEmcBsIndication()Lcom/sec/internal/constants/ims/os/EmcBsIndication;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 1351
    :cond_11f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public translateNetworkBearer(I)I
    .registers 4

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    const/4 p0, 0x1

    if-ne p0, p1, :cond_8

    return p0

    .line 1385
    :cond_8
    sget-object p0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid bearer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public unRegisterTelephonyCallback(I)V
    .registers 4

    .line 194
    sget-object v0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "unRegisterTelephonyCallback:"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mTelephonyCallbacks:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;

    if-nez v0, :cond_17

    return-void

    .line 199
    :cond_17
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v1, p1, v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->unregisterTelephonyCallbackForSlot(ILandroid/telephony/TelephonyCallback;)V

    .line 200
    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mTelephonyCallbacks:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public unregisterForNetworkState(Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;)V
    .registers 2

    .line 526
    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
