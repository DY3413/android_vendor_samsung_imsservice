.class public Lcom/sec/internal/google/cmc/CmcConnectivityController;
.super Landroid/os/Handler;
.source "CmcConnectivityController.java"

# interfaces
.implements Lcom/sec/internal/google/cmc/ICmcConnectivityController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;,
        Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final EVENT_TRY_NSD_BIND:I = 0x3e9

.field private static final EVENT_TRY_NSD_BIND_DELAYED:I = 0x3ea

.field private static final IMS_PCSCF_IP:Ljava/lang/String; = "ims_pcscf_ip"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final NSD_BIND_TIMEOUT:I = 0x2710

.field private static final SERVER_DOMAIN:Ljava/lang/String; = "p2p.samsungims.com"

.field private static final SIP_DOMAIN:Ljava/lang/String; = "samsungims.com"

.field private static final URN_PREFIX:Ljava/lang/String; = "urn:duid:"

.field private static final WIFI_HS_PCSCF_PREF:Ljava/lang/String; = "mobile_hotspot_pcscf"

.field private static final WIFI_HS_PDN_NAME:Ljava/lang/String; = "swlan"

.field private static final WIFI_HS_PROFILE_NAME_PD:Ljava/lang/String; = "SamsungCMC_WIFI_HS_PD"

.field private static final WIFI_PDN_NAME:Ljava/lang/String; = "wlan"

.field private static final WIFI_PROFILE_NAME_PD:Ljava/lang/String; = "SamsungCMC_WIFI_PD"

.field private static final WIFI_PROFILE_NAME_SD:Ljava/lang/String; = "SamsungCMC_WIFI_SD"

.field public static mWifiRegistered:Z


# instance fields
.field private mBindStatusListener:Lcom/samsung/android/cmcnsd/CmcNsdManager$BindStatusListener;

.field private final mContext:Landroid/content/Context;

.field private mDeviceType:Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

.field private mFirstTrigger:Ljava/lang/String;

.field private mHotspotAuthToken:Ljava/lang/String;

.field private mHotspotHostPcscfIp:Ljava/lang/String;

.field private mHotspotIsConnect:Z

.field private mHotspotLocalIp:Ljava/lang/String;

.field private mHotspotProfile:Lcom/sec/ims/settings/ImsProfile;

.field private mHotspotRegistered:Z

.field private mIpServiceManager:Lcom/sec/internal/google/cmc/IpServiceManager;

.field private mNsdBound:Z

.field private final mNsdManager:Lcom/samsung/android/cmcnsd/CmcNsdManager;

.field private mNsdNetworkCallbackListener:Lcom/samsung/android/cmcnsd/network/NsdNetworkCallback;

.field private mOwnDeviceId:Ljava/lang/String;

.field private mOwnDuid:Ljava/lang/String;

.field private mP2pController:Lcom/sec/internal/google/cmc/CmcP2pController;

.field private mPhoneCount:I

.field private mPrimaryDuid:Ljava/lang/String;

.field private final mRegisterP2pListener:Lcom/sec/ims/IImsRegistrationListener;

.field private mRetryCountBound:I

.field private mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

.field private mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

.field private mWifiAuthToken:Ljava/lang/String;

.field private mWifiHostPcscfIp:Ljava/lang/String;

.field private mWifiIsConnect:Z

.field private mWifiLocalIp:Ljava/lang/String;

.field private mWifiProfile:Lcom/sec/ims/settings/ImsProfile;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHotspotHostPcscfIp(Lcom/sec/internal/google/cmc/CmcConnectivityController;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mHotspotHostPcscfIp:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIpServiceManager(Lcom/sec/internal/google/cmc/CmcConnectivityController;)Lcom/sec/internal/google/cmc/IpServiceManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mIpServiceManager:Lcom/sec/internal/google/cmc/IpServiceManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNsdManager(Lcom/sec/internal/google/cmc/CmcConnectivityController;)Lcom/samsung/android/cmcnsd/CmcNsdManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mNsdManager:Lcom/samsung/android/cmcnsd/CmcNsdManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNsdNetworkCallbackListener(Lcom/sec/internal/google/cmc/CmcConnectivityController;)Lcom/samsung/android/cmcnsd/network/NsdNetworkCallback;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mNsdNetworkCallbackListener:Lcom/samsung/android/cmcnsd/network/NsdNetworkCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmP2pController(Lcom/sec/internal/google/cmc/CmcConnectivityController;)Lcom/sec/internal/google/cmc/CmcP2pController;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mP2pController:Lcom/sec/internal/google/cmc/CmcP2pController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPhoneCount(Lcom/sec/internal/google/cmc/CmcConnectivityController;)I
    .locals 0

    iget p0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mPhoneCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRm(Lcom/sec/internal/google/cmc/CmcConnectivityController;)Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiProfile(Lcom/sec/internal/google/cmc/CmcConnectivityController;)Lcom/sec/ims/settings/ImsProfile;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiProfile:Lcom/sec/ims/settings/ImsProfile;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmHotspotRegistered(Lcom/sec/internal/google/cmc/CmcConnectivityController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mHotspotRegistered:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNsdBound(Lcom/sec/internal/google/cmc/CmcConnectivityController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mNsdBound:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRetryCountBound(Lcom/sec/internal/google/cmc/CmcConnectivityController;I)V
    .locals 0

    iput p1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mRetryCountBound:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetHSPref(Lcom/sec/internal/google/cmc/CmcConnectivityController;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->getHSPref()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$monShutDownNsd(Lcom/sec/internal/google/cmc/CmcConnectivityController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->onShutDownNsd(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monWifiConnectionChanged(Lcom/sec/internal/google/cmc/CmcConnectivityController;ZLjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->onWifiConnectionChanged(ZLjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monWifiDirectConnectionChanged(Lcom/sec/internal/google/cmc/CmcConnectivityController;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->onWifiDirectConnectionChanged(ZLjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mretryWifiRegister(Lcom/sec/internal/google/cmc/CmcConnectivityController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->retryWifiRegister(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetHSPref(Lcom/sec/internal/google/cmc/CmcConnectivityController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->setHSPref(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 65
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->DBG:Z

    .line 66
    const-class v0, Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 114
    sput-boolean v0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiRegistered:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;)V
    .locals 4

    .line 134
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v0, 0x0

    .line 100
    iput-object v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 102
    iput-object v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mIpServiceManager:Lcom/sec/internal/google/cmc/IpServiceManager;

    const/4 v1, 0x0

    .line 103
    iput v1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mPhoneCount:I

    .line 104
    sget-object v2, Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;->None:Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    iput-object v2, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mDeviceType:Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    const-string v3, ""

    .line 105
    iput-object v3, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mFirstTrigger:Ljava/lang/String;

    .line 106
    iput-object v3, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mOwnDeviceId:Ljava/lang/String;

    .line 107
    iput-object v3, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mOwnDuid:Ljava/lang/String;

    .line 108
    iput-object v3, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mPrimaryDuid:Ljava/lang/String;

    .line 109
    iput-boolean v1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mNsdBound:Z

    .line 110
    iput v1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mRetryCountBound:I

    .line 113
    iput-boolean v1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiIsConnect:Z

    .line 115
    iput-object v3, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiLocalIp:Ljava/lang/String;

    .line 116
    iput-object v3, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiHostPcscfIp:Ljava/lang/String;

    .line 117
    iput-object v3, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiAuthToken:Ljava/lang/String;

    .line 118
    iput-object v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiProfile:Lcom/sec/ims/settings/ImsProfile;

    .line 121
    iput-boolean v1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mHotspotIsConnect:Z

    .line 122
    iput-boolean v1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mHotspotRegistered:Z

    .line 123
    iput-object v3, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mHotspotLocalIp:Ljava/lang/String;

    .line 124
    iput-object v3, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mHotspotHostPcscfIp:Ljava/lang/String;

    .line 125
    iput-object v3, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mHotspotAuthToken:Ljava/lang/String;

    .line 126
    iput-object v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mHotspotProfile:Lcom/sec/ims/settings/ImsProfile;

    .line 215
    new-instance v0, Lcom/sec/internal/google/cmc/CmcConnectivityController$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/google/cmc/CmcConnectivityController$1;-><init>(Lcom/sec/internal/google/cmc/CmcConnectivityController;)V

    iput-object v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mBindStatusListener:Lcom/samsung/android/cmcnsd/CmcNsdManager$BindStatusListener;

    .line 247
    new-instance v0, Lcom/sec/internal/google/cmc/CmcConnectivityController$2;

    invoke-direct {v0, p0}, Lcom/sec/internal/google/cmc/CmcConnectivityController$2;-><init>(Lcom/sec/internal/google/cmc/CmcConnectivityController;)V

    iput-object v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mNsdNetworkCallbackListener:Lcom/samsung/android/cmcnsd/network/NsdNetworkCallback;

    .line 354
    new-instance v0, Lcom/sec/internal/google/cmc/CmcConnectivityController$3;

    invoke-direct {v0, p0}, Lcom/sec/internal/google/cmc/CmcConnectivityController$3;-><init>(Lcom/sec/internal/google/cmc/CmcConnectivityController;)V

    iput-object v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mRegisterP2pListener:Lcom/sec/ims/IImsRegistrationListener;

    .line 135
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mContext:Landroid/content/Context;

    .line 136
    iput-object p2, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    .line 137
    invoke-static {v0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 138
    new-instance v1, Lcom/sec/internal/google/cmc/IpServiceManager;

    invoke-direct {v1, v0}, Lcom/sec/internal/google/cmc/IpServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mIpServiceManager:Lcom/sec/internal/google/cmc/IpServiceManager;

    .line 141
    new-instance v1, Lcom/sec/internal/google/cmc/CmcP2pController;

    iget-object v3, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mIpServiceManager:Lcom/sec/internal/google/cmc/IpServiceManager;

    invoke-direct {v1, p1, p2, v3}, Lcom/sec/internal/google/cmc/CmcP2pController;-><init>(Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/google/cmc/IpServiceManager;)V

    iput-object v1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mP2pController:Lcom/sec/internal/google/cmc/CmcP2pController;

    .line 143
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "cmc_device_type"

    invoke-static {p1, p2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "pd"

    .line 144
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 145
    sget-object p1, Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;->PDevice:Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    iput-object p1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mDeviceType:Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    goto :goto_0

    :cond_0
    const-string p2, "sd"

    .line 146
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 147
    sget-object p1, Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;->SDevice:Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    iput-object p1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mDeviceType:Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    goto :goto_0

    .line 149
    :cond_1
    iput-object v2, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mDeviceType:Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    .line 152
    :goto_0
    iget-object p1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mDeviceType:Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    if-eq p1, v2, :cond_2

    .line 153
    invoke-direct {p0}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->registerP2pListener()V

    .line 156
    :cond_2
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result p1

    iput p1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mPhoneCount:I

    .line 157
    sget-object p1, Lcom/sec/internal/google/cmc/CmcConnectivityController;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPhoneCount: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mPhoneCount:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    new-instance p1, Lcom/samsung/android/cmcnsd/CmcNsdManager;

    invoke-direct {p1, v0}, Lcom/samsung/android/cmcnsd/CmcNsdManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mNsdManager:Lcom/samsung/android/cmcnsd/CmcNsdManager;

    .line 160
    iget-object p0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mBindStatusListener:Lcom/samsung/android/cmcnsd/CmcNsdManager$BindStatusListener;

    invoke-virtual {p1, p0}, Lcom/samsung/android/cmcnsd/CmcNsdManager;->registerServiceConnectionListener(Lcom/samsung/android/cmcnsd/CmcNsdManager$BindStatusListener;)V

    return-void
.end method

.method private checkNsdBind()V
    .locals 3

    .line 311
    sget-object v0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNsdBound: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mNsdBound:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mRetryCountBound: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mRetryCountBound:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-boolean v1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mNsdBound:Z

    if-nez v1, :cond_0

    .line 314
    iget v1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mRetryCountBound:I

    const/4 v2, 0x3

    if-gt v1, v2, :cond_0

    const-string v1, "checkNsdBind, called bind.."

    .line 315
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mNsdManager:Lcom/samsung/android/cmcnsd/CmcNsdManager;

    invoke-virtual {v0}, Lcom/samsung/android/cmcnsd/CmcNsdManager;->bind()V

    const/16 v0, 0x3ea

    const-wide/16 v1, 0x2710

    .line 318
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 320
    iget v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mRetryCountBound:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mRetryCountBound:I

    :cond_0
    return-void
.end method

.method private getHSPref()Ljava/lang/String;
    .locals 3

    .line 745
    sget v0, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    iget-object p0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mContext:Landroid/content/Context;

    const-string v1, "ims_pcscf_ip"

    const/4 v2, 0x0

    invoke-static {v0, p0, v1, v2, v2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "mobile_hotspot_pcscf"

    const-string v1, ""

    .line 748
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getIpAddress(Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;)Ljava/lang/String;
    .locals 3

    .line 796
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object p0

    .line 797
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 798
    sget-object v1, Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;->Wifi_HS:Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;

    if-ne p1, v1, :cond_1

    .line 800
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "swlan"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 803
    :cond_1
    sget-object v1, Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;->Wifi:Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;

    if-ne p1, v1, :cond_2

    .line 805
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "wlan"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 808
    :cond_2
    sget-object v1, Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;->Internet:Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;

    if-ne p1, v1, :cond_3

    .line 810
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rmnet0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 815
    :cond_3
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    .line 816
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 818
    invoke-virtual {v1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/helper/NetworkUtil;->isIPv4Address(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 819
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 824
    :catch_0
    sget-object p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->LOG_TAG:Ljava/lang/String;

    const-string p1, "error in parsing"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    :cond_5
    sget-object p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->LOG_TAG:Ljava/lang/String;

    const-string p1, "returning empty ip address"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    return-object p0
.end method

.method private hotspotConnectionChanged(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 561
    iput-boolean p1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mHotspotIsConnect:Z

    .line 562
    iput-object p3, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mHotspotAuthToken:Ljava/lang/String;

    .line 563
    sget-object p1, Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;->Wifi_HS:Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;

    invoke-direct {p0, p1}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->getIpAddress(Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mHotspotHostPcscfIp:Ljava/lang/String;

    .line 565
    invoke-direct {p0}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->isReadyToHotspotRegister()Z

    move-result p2

    if-eqz p2, :cond_3

    const-string/jumbo p2, "swlan"

    const-string p3, "SamsungCMC_WIFI_HS_PD"

    .line 566
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->imsRegister(Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 569
    :cond_0
    iget-boolean p1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mHotspotIsConnect:Z

    if-eqz p1, :cond_3

    .line 570
    sget-object p1, Lcom/sec/internal/google/cmc/CmcConnectivityController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p2, "the Hotspot are all disconnected"

    invoke-static {p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    iget-object p1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mHotspotHostPcscfIp:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 573
    iget-object p1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mIpServiceManager:Lcom/sec/internal/google/cmc/IpServiceManager;

    iget-object p2, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mHotspotHostPcscfIp:Ljava/lang/String;

    const-string p3, "local_network"

    invoke-virtual {p1, p3, p2}, Lcom/sec/internal/google/cmc/IpServiceManager;->ipRuleRemove(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    .line 575
    iput-boolean p1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mHotspotIsConnect:Z

    const-string p2, ""

    .line 576
    iput-object p2, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mHotspotLocalIp:Ljava/lang/String;

    .line 577
    iput-object p2, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mHotspotHostPcscfIp:Ljava/lang/String;

    .line 578
    iput-object p2, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mHotspotAuthToken:Ljava/lang/String;

    .line 579
    iget-boolean p2, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mHotspotRegistered:Z

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mHotspotProfile:Lcom/sec/ims/settings/ImsProfile;

    if-eqz p2, :cond_2

    move p2, p1

    .line 580
    :goto_0
    iget p3, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mPhoneCount:I

    if-ge p2, p3, :cond_2

    .line 581
    iget-object p3, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mHotspotProfile:Lcom/sec/ims/settings/ImsProfile;

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v0

    invoke-interface {p3, v0, p2, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->deregisterProfile(IIZ)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 584
    :cond_2
    iput-boolean p1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mHotspotRegistered:Z

    :cond_3
    :goto_1
    return-void
.end method

.method private imsRegister(Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 590
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mContext:Landroid/content/Context;

    const-string v1, "MDMN"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/ims/settings/ImsProfileLoader;->getProfileListWithMnoName(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 591
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/settings/ImsProfile;

    .line 592
    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SamsungCMC_P2P"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 593
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mOwnDuid:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/sec/ims/settings/ImsProfile;->setDuid(Ljava/lang/String;)V

    .line 594
    invoke-virtual {v1, p2}, Lcom/sec/ims/settings/ImsProfile;->setPdn(Ljava/lang/String;)V

    .line 595
    invoke-virtual {v1, p3}, Lcom/sec/ims/settings/ImsProfile;->setName(Ljava/lang/String;)V

    const-string p2, "p2p.samsungims.com"

    .line 596
    invoke-virtual {v1, p2}, Lcom/sec/ims/settings/ImsProfile;->setDomain(Ljava/lang/String;)V

    .line 597
    iget-object p2, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mPrimaryDuid:Ljava/lang/String;

    invoke-virtual {v1, p2}, Lcom/sec/ims/settings/ImsProfile;->setPriDeviceIdWithURN(Ljava/lang/String;)V

    .line 598
    iget-object p2, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mOwnDeviceId:Ljava/lang/String;

    invoke-virtual {v1, p2}, Lcom/sec/ims/settings/ImsProfile;->setDisplayName(Ljava/lang/String;)V

    const-string/jumbo p2, "sip:D2D@samsungims.com"

    .line 601
    invoke-virtual {v1, p2}, Lcom/sec/ims/settings/ImsProfile;->setImpuList(Ljava/lang/String;)V

    const-string p2, "D2D@samsungims.com"

    .line 602
    invoke-virtual {v1, p2}, Lcom/sec/ims/settings/ImsProfile;->setImpi(Ljava/lang/String;)V

    const/4 p2, 0x4

    .line 603
    invoke-virtual {v1, p2}, Lcom/sec/ims/settings/ImsProfile;->setSslType(I)V

    const/16 p2, 0xd

    .line 605
    invoke-virtual {v1, p2, v2}, Lcom/sec/ims/settings/ImsProfile;->setNetworkEnabled(IZ)V

    const/4 p3, 0x3

    .line 606
    invoke-virtual {v1, p3, v2}, Lcom/sec/ims/settings/ImsProfile;->setNetworkEnabled(IZ)V

    const/16 p3, 0xa

    .line 607
    invoke-virtual {v1, p3, v2}, Lcom/sec/ims/settings/ImsProfile;->setNetworkEnabled(IZ)V

    const/16 p3, 0xf

    .line 608
    invoke-virtual {v1, p3, v2}, Lcom/sec/ims/settings/ImsProfile;->setNetworkEnabled(IZ)V

    const/16 p3, 0x8

    .line 609
    invoke-virtual {v1, p3, v2}, Lcom/sec/ims/settings/ImsProfile;->setNetworkEnabled(IZ)V

    const/16 p3, 0x9

    .line 610
    invoke-virtual {v1, p3, v2}, Lcom/sec/ims/settings/ImsProfile;->setNetworkEnabled(IZ)V

    const/4 p3, 0x1

    .line 611
    invoke-virtual {v1, p3}, Lcom/sec/ims/settings/ImsProfile;->setVceConfigEnabled(Z)V

    .line 613
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 614
    sget-object v3, Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;->Wifi:Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;

    if-ne p1, v3, :cond_1

    .line 615
    iget-object p1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiHostPcscfIp:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 616
    invoke-virtual {v1, v0}, Lcom/sec/ims/settings/ImsProfile;->setPcscfList(Ljava/util/List;)V

    .line 617
    iget-object p1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiAuthToken:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/sec/ims/settings/ImsProfile;->setAccessToken(Ljava/lang/String;)V

    .line 619
    iput-object v1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiProfile:Lcom/sec/ims/settings/ImsProfile;

    .line 620
    :goto_0
    iget p1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mPhoneCount:I

    if-ge v2, p1, :cond_2

    .line 621
    iget-object p1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object p2, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiProfile:Lcom/sec/ims/settings/ImsProfile;

    invoke-interface {p1, p2, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->registerProfile(Lcom/sec/ims/settings/ImsProfile;I)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 623
    :cond_1
    sget-object v3, Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;->Wifi_HS:Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;

    if-ne p1, v3, :cond_2

    .line 624
    iget-object p1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mHotspotHostPcscfIp:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 625
    invoke-virtual {v1, v0}, Lcom/sec/ims/settings/ImsProfile;->setPcscfList(Ljava/util/List;)V

    .line 626
    iget-object p1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mHotspotAuthToken:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/sec/ims/settings/ImsProfile;->setAccessToken(Ljava/lang/String;)V

    .line 629
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    const-string v0, "mmtel"

    .line 630
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 631
    invoke-virtual {v1, p2, p1}, Lcom/sec/ims/settings/ImsProfile;->setServiceSet(ILjava/util/Set;)V

    .line 632
    invoke-virtual {v1, p2, p3}, Lcom/sec/ims/settings/ImsProfile;->setNetworkEnabled(IZ)V

    .line 634
    iput-object v1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mHotspotProfile:Lcom/sec/ims/settings/ImsProfile;

    .line 635
    :goto_1
    iget p1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mPhoneCount:I

    if-ge v2, p1, :cond_2

    .line 636
    iget-object p1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object p2, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mHotspotProfile:Lcom/sec/ims/settings/ImsProfile;

    invoke-interface {p1, p2, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->registerProfile(Lcom/sec/ims/settings/ImsProfile;I)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private isReadyToHotspotRegister()Z
    .locals 3

    .line 710
    sget-object v0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mHotspotIsConnect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mHotspotIsConnect:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mHotspotRegistered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mHotspotRegistered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    iget-boolean v1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mHotspotIsConnect:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 715
    :cond_0
    iget-boolean v1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mHotspotRegistered:Z

    if-eqz v1, :cond_1

    return v2

    .line 719
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mHotspotHostPcscfIp:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v2

    .line 723
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mWifiRegistered: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiRegistered:Z

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    sget-boolean p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiRegistered:Z

    if-eqz p0, :cond_3

    const-string p0, "There is already [wifi] registration. don\'t mobile-hotspot registration"

    .line 725
    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method private isReadyToWifiPDRegister()Z
    .locals 4

    .line 684
    invoke-direct {p0}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->isReadyToWifiRegister()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 688
    :cond_0
    sget-object v0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mHotspotRegistered: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mHotspotRegistered:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    iget-boolean p0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mHotspotRegistered:Z

    if-eqz p0, :cond_1

    const-string p0, "There is already [mobile-hotspot] registration. don\'t wifi registration"

    .line 690
    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private isReadyToWifiRegister()Z
    .locals 3

    .line 645
    sget-object v0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWifiIsConnect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiIsConnect:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mWifiRegistered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiRegistered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    iget-boolean v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiIsConnect:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 651
    :cond_0
    sget-boolean v0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiRegistered:Z

    if-eqz v0, :cond_1

    return v1

    .line 655
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiHostPcscfIp:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private isReadyToWifiSDRegister()Z
    .locals 2

    .line 697
    invoke-direct {p0}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->isReadyToWifiRegister()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 701
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->isCmcRegistered(I)I

    move-result p0

    if-lez p0, :cond_1

    .line 703
    sget-object p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->LOG_TAG:Ljava/lang/String;

    const-string v0, "There is already cmc registration. don\'t wifi registration"

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private onShutDownNsd(Z)V
    .locals 3

    const/4 v0, 0x0

    const-string v1, ""

    .line 469
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->onWifiDirectConnectionChanged(ZLjava/lang/String;)V

    const/4 v2, 0x0

    .line 471
    invoke-direct {p0, v0, v1, v1, v2}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->onWifiConnectionChanged(ZLjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    if-eqz p1, :cond_0

    const/16 p1, 0x3ea

    const-wide/16 v0, 0x2710

    .line 474
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method private onWifiConnectionChanged(ZLjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 482
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mDeviceType:Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    sget-object v1, Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;->None:Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    if-ne v0, v1, :cond_0

    return-void

    .line 486
    :cond_0
    sget-object v0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onWifiConnectionChanged()"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mDeviceType:Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    sget-object v2, Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;->PDevice:Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    if-ne v1, v2, :cond_5

    const/4 v1, 0x0

    if-eqz p4, :cond_4

    .line 488
    invoke-virtual {p4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 498
    :cond_1
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    const-string/jumbo p4, "wifi register by priority (WIFI > MOBILE-HOTSPOT)"

    .line 500
    invoke-static {v0, p4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    invoke-direct {p0, v1, p2, p3}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->hotspotConnectionChanged(ZLjava/lang/String;Ljava/lang/String;)V

    .line 503
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->wifiConnectionChanged(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 505
    :cond_2
    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 506
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tryRegister intf: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "wlan0"

    .line 507
    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_3

    .line 509
    invoke-direct {p0, v1, p2, p3}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->hotspotConnectionChanged(ZLjava/lang/String;Ljava/lang/String;)V

    .line 511
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->wifiConnectionChanged(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 514
    :cond_3
    invoke-direct {p0, v1, p2, p3}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->wifiConnectionChanged(ZLjava/lang/String;Ljava/lang/String;)V

    .line 516
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->hotspotConnectionChanged(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    :goto_0
    const-string/jumbo p1, "there are no network interface, all disconnect"

    .line 489
    invoke-static {v0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    invoke-direct {p0, v1, p2, p3}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->hotspotConnectionChanged(ZLjava/lang/String;Ljava/lang/String;)V

    .line 494
    invoke-direct {p0, v1, p2, p3}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->wifiConnectionChanged(ZLjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 520
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->wifiConnectionChanged(ZLjava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private onWifiDirectConnectionChanged(ZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method private registerP2pListener()V
    .locals 2

    .line 782
    sget-object v0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->LOG_TAG:Ljava/lang/String;

    const-string v1, "registerP2pListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object p0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mRegisterP2pListener:Lcom/sec/ims/IImsRegistrationListener;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->registerP2pListener(Lcom/sec/ims/IImsRegistrationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 786
    :catch_0
    sget-object p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->LOG_TAG:Ljava/lang/String;

    const-string v0, "registerP2pListener failed"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private retryWifiRegister(Ljava/lang/String;)V
    .locals 3

    .line 732
    sget-object v0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "retryWifiRegister: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mDeviceType:Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    sget-object v1, Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;->PDevice:Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    const-string/jumbo v2, "wlan"

    if-ne v0, v1, :cond_0

    .line 734
    invoke-direct {p0}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->isReadyToWifiPDRegister()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 735
    sget-object v0, Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;->Wifi:Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;

    invoke-direct {p0, v0, v2, p1}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->imsRegister(Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 738
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->isReadyToWifiSDRegister()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 739
    sget-object v0, Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;->Wifi:Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;

    invoke-direct {p0, v0, v2, p1}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->imsRegister(Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setHSPref(Ljava/lang/String;)V
    .locals 3

    .line 752
    sget v0, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    iget-object p0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mContext:Landroid/content/Context;

    const-string v1, "ims_pcscf_ip"

    const/4 v2, 0x0

    invoke-static {v0, p0, v1, v2, v2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 754
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "mobile_hotspot_pcscf"

    .line 756
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 757
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 758
    sget-object p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setHSPref: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private unregisterImsRegistrationListener()V
    .locals 1

    .line 791
    sget-object p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "unregisterImsRegistrationListener"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private wifiConnectionChanged(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 526
    iput-boolean p1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiIsConnect:Z

    .line 527
    iput-object p2, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiHostPcscfIp:Ljava/lang/String;

    .line 528
    iput-object p3, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiAuthToken:Ljava/lang/String;

    .line 530
    iget-object p1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mDeviceType:Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    sget-object p2, Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;->PDevice:Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    const-string/jumbo p3, "wlan"

    if-ne p1, p2, :cond_0

    .line 531
    sget-object p1, Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;->Wifi:Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;

    invoke-direct {p0, p1}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->getIpAddress(Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiHostPcscfIp:Ljava/lang/String;

    .line 532
    invoke-direct {p0}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->isReadyToWifiPDRegister()Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "SamsungCMC_WIFI_PD"

    .line 533
    invoke-direct {p0, p1, p3, p2}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->imsRegister(Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 536
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->isReadyToWifiSDRegister()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 537
    sget-object p1, Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;->Wifi:Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;

    const-string p2, "SamsungCMC_WIFI_SD"

    invoke-direct {p0, p1, p3, p2}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->imsRegister(Lcom/sec/internal/google/cmc/CmcConnectivityController$ConnectType;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 541
    :cond_1
    iget-boolean p1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiIsConnect:Z

    if-eqz p1, :cond_3

    .line 543
    sget-object p1, Lcom/sec/internal/google/cmc/CmcConnectivityController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p2, "the Wifi are all disconnected"

    invoke-static {p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 544
    iput-boolean p1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiIsConnect:Z

    const-string p2, ""

    .line 545
    iput-object p2, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiLocalIp:Ljava/lang/String;

    .line 546
    iput-object p2, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiHostPcscfIp:Ljava/lang/String;

    .line 547
    iput-object p2, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiAuthToken:Ljava/lang/String;

    .line 548
    sget-boolean p2, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiRegistered:Z

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiProfile:Lcom/sec/ims/settings/ImsProfile;

    if-eqz p2, :cond_2

    move p2, p1

    .line 549
    :goto_0
    iget p3, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mPhoneCount:I

    if-ge p2, p3, :cond_2

    .line 550
    iget-object p3, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiProfile:Lcom/sec/ims/settings/ImsProfile;

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v0

    invoke-interface {p3, v0, p2, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->deregisterProfile(IIZ)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 553
    :cond_2
    sput-boolean p1, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiRegistered:Z

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public getDeviceType()Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;
    .locals 0

    .line 464
    iget-object p0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mDeviceType:Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    return-object p0
.end method

.method public getNsdManager()Lcom/samsung/android/cmcnsd/CmcNsdManager;
    .locals 0

    .line 277
    iget-object p0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mNsdManager:Lcom/samsung/android/cmcnsd/CmcNsdManager;

    return-object p0
.end method

.method public getP2pCallSessionId()I
    .locals 0

    .line 195
    iget-object p0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mP2pController:Lcom/sec/internal/google/cmc/CmcP2pController;

    invoke-virtual {p0}, Lcom/sec/internal/google/cmc/CmcP2pController;->getP2pCallSessionId()I

    move-result p0

    return p0
.end method

.method public getP2pDeviceType()Lcom/sec/internal/google/cmc/CmcP2pController$DeviceType;
    .locals 0

    .line 187
    iget-object p0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mP2pController:Lcom/sec/internal/google/cmc/CmcP2pController;

    invoke-virtual {p0}, Lcom/sec/internal/google/cmc/CmcP2pController;->getDeviceType()Lcom/sec/internal/google/cmc/CmcP2pController$DeviceType;

    move-result-object p0

    return-object p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 763
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3ea

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 771
    :cond_0
    sget-object p1, Lcom/sec/internal/google/cmc/CmcConnectivityController;->LOG_TAG:Ljava/lang/String;

    const-string v0, "EVENT_TRY_NSD_BIND_DELAYED"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    invoke-direct {p0}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->checkNsdBind()V

    goto :goto_0

    .line 765
    :cond_1
    sget-object p1, Lcom/sec/internal/google/cmc/CmcConnectivityController;->LOG_TAG:Ljava/lang/String;

    const-string v0, "EVENT_TRY_NSD_BIND"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    invoke-virtual {p0}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->immediateNsdBind()V

    :goto_0
    return-void
.end method

.method public immediateNsdBind()V
    .locals 3

    .line 288
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "com.samsung.android.mdecservice"

    const/16 v2, 0x80

    .line 290
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v1, "d2d_trial"

    const/4 v2, 0x0

    .line 294
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mNsdManager:Lcom/samsung/android/cmcnsd/CmcNsdManager;

    invoke-virtual {v0}, Lcom/samsung/android/cmcnsd/CmcNsdManager;->isBound()Z

    move-result v0

    if-nez v0, :cond_0

    .line 296
    sget-object v0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->LOG_TAG:Ljava/lang/String;

    const-string v1, "immediateNsdBind, called bind.."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mNsdManager:Lcom/samsung/android/cmcnsd/CmcNsdManager;

    invoke-virtual {v0}, Lcom/samsung/android/cmcnsd/CmcNsdManager;->bind()V

    const/16 v0, 0x3ea

    const-wide/16 v1, 0x2710

    .line 299
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 306
    sget-object v0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public isEnabledWifiDirectFeature()Z
    .locals 0

    .line 167
    iget-object p0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mP2pController:Lcom/sec/internal/google/cmc/CmcP2pController;

    invoke-virtual {p0}, Lcom/sec/internal/google/cmc/CmcP2pController;->isEnabledWifiDirectFeature()Z

    move-result p0

    return p0
.end method

.method public isExistP2pConnection()Z
    .locals 0

    .line 211
    iget-object p0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mP2pController:Lcom/sec/internal/google/cmc/CmcP2pController;

    invoke-virtual {p0}, Lcom/sec/internal/google/cmc/CmcP2pController;->isExistP2pConnection()Z

    move-result p0

    return p0
.end method

.method public needP2pCallSession(Z)V
    .locals 0

    .line 191
    iget-object p0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mP2pController:Lcom/sec/internal/google/cmc/CmcP2pController;

    invoke-virtual {p0, p1}, Lcom/sec/internal/google/cmc/CmcP2pController;->needP2pCallSession(Z)V

    return-void
.end method

.method public setCmcActivation(Z)V
    .locals 0

    .line 203
    iget-object p0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mP2pController:Lcom/sec/internal/google/cmc/CmcP2pController;

    invoke-virtual {p0, p1}, Lcom/sec/internal/google/cmc/CmcP2pController;->setCmcActivation(Z)V

    return-void
.end method

.method public setP2pCallSessionId(I)V
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mP2pController:Lcom/sec/internal/google/cmc/CmcP2pController;

    invoke-virtual {p0, p1}, Lcom/sec/internal/google/cmc/CmcP2pController;->setP2pCallSessionId(I)V

    return-void
.end method

.method public setP2pPD()V
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mP2pController:Lcom/sec/internal/google/cmc/CmcP2pController;

    invoke-virtual {p0}, Lcom/sec/internal/google/cmc/CmcP2pController;->setP2pPD()V

    return-void
.end method

.method public startNsdBind()V
    .locals 2

    .line 282
    sget-object v0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "startNsdBind"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x3e9

    .line 283
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public startP2pBind()V
    .locals 0

    .line 177
    iget-object p0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mP2pController:Lcom/sec/internal/google/cmc/CmcP2pController;

    invoke-virtual {p0}, Lcom/sec/internal/google/cmc/CmcP2pController;->startP2pBind()V

    return-void
.end method

.method public startRegi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 327
    iput-object p1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mOwnDeviceId:Ljava/lang/String;

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "urn:duid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mOwnDuid:Ljava/lang/String;

    .line 329
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mPrimaryDuid:Ljava/lang/String;

    .line 330
    sget-object p1, Lcom/sec/internal/google/cmc/CmcConnectivityController;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ownDuid: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mOwnDuid:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", primaryDuid: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mPrimaryDuid:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", deviceType: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mDeviceType:Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object p1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mDeviceType:Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    sget-object p2, Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;->SDevice:Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    if-ne p1, p2, :cond_0

    const-string p1, "SamsungCMC_WIFI_SD"

    .line 334
    invoke-direct {p0, p1}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->retryWifiRegister(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public stopP2p()V
    .locals 0

    .line 172
    iget-object p0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mP2pController:Lcom/sec/internal/google/cmc/CmcP2pController;

    invoke-virtual {p0}, Lcom/sec/internal/google/cmc/CmcP2pController;->stopP2p()V

    return-void
.end method

.method public stopRegi()V
    .locals 5

    .line 340
    sget-object v0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopRegi, mWifiRegistered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiRegistered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mDeviceType:Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    sget-object v1, Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;->SDevice:Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    if-ne v0, v1, :cond_1

    .line 343
    sget-boolean v0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiRegistered:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    .line 344
    :goto_0
    iget v2, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mPhoneCount:I

    if-ge v1, v2, :cond_0

    .line 345
    iget-object v2, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v3, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiProfile:Lcom/sec/ims/settings/ImsProfile;

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->deregisterProfile(IIZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 347
    :cond_0
    sput-boolean v0, Lcom/sec/internal/google/cmc/CmcConnectivityController;->mWifiRegistered:Z

    :cond_1
    return-void
.end method
