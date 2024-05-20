.class public Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;
.super Lcom/sec/internal/ims/core/RegistrationGovernorAtt;
.source "RegistrationGovernorSoftphone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone$WifiEventReceiver;,
        Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone$ShutdownEventReceiver;
    }
.end annotation


# static fields
.field protected static final INTENT_ACTION_WIFI_MODE_CHANGED:Ljava/lang/String; = "com.samsung.android.net.wifi.SEC_NETWORK_STATE_CHANGED"

.field private static final LOG_TAG:Ljava/lang/String; = "RegiGvnSoftp"


# instance fields
.field protected mForbiddenCount:I

.field protected final mForbiddenRetryTime:[I

.field protected final mShutdownEventReceiver:Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone$ShutdownEventReceiver;

.field protected final mWifiEventReceiver:Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone$WifiEventReceiver;


# direct methods
.method public static synthetic $r8$lambda$Nu4OKA-MA2W91kgSiAC_JXpAd3E(Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;Lcom/sec/internal/interfaces/ims/core/IGeolocationController;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->lambda$isLocationInfoLoaded$0(Lcom/sec/internal/interfaces/ims/core/IGeolocationController;)V

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/ims/core/RegistrationManagerInternal;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Landroid/content/Context;)V
    .locals 0

    .line 66
    invoke-direct/range {p0 .. p7}, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;-><init>(Lcom/sec/internal/ims/core/RegistrationManagerInternal;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Landroid/content/Context;)V

    const/4 p1, 0x3

    new-array p1, p1, [I

    .line 58
    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->mForbiddenRetryTime:[I

    const/4 p1, 0x0

    .line 62
    iput p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->mForbiddenCount:I

    .line 115
    new-instance p1, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone$ShutdownEventReceiver;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone$ShutdownEventReceiver;-><init>(Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;)V

    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->mShutdownEventReceiver:Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone$ShutdownEventReceiver;

    .line 142
    new-instance p2, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone$WifiEventReceiver;

    invoke-direct {p2, p0}, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone$WifiEventReceiver;-><init>(Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;)V

    iput-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->mWifiEventReceiver:Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone$WifiEventReceiver;

    const-string p0, "RegiGvnSoftp"

    const-string p3, "Register : ShutdownEventReceiver"

    .line 68
    invoke-static {p0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string p3, "android.intent.action.ACTION_SHUTDOWN"

    .line 70
    invoke-virtual {p0, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p7, p1, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 73
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string p1, "com.samsung.android.net.wifi.SEC_NETWORK_STATE_CHANGED"

    .line 74
    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p7, p2, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :array_0
    .array-data 4
        0x11
        0x22
        0x44
    .end array-data
.end method

.method private synthetic lambda$isLocationInfoLoaded$0(Lcom/sec/internal/interfaces/ims/core/IGeolocationController;)V
    .locals 1

    .line 82
    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lcom/sec/internal/interfaces/ims/core/IGeolocationController;->startGeolocationUpdate(IZ)Z

    return-void
.end method

.method private sendDelayMsgToWifi(Z)V
    .locals 2

    .line 372
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    .line 374
    sget v1, Lcom/sec/ims/extensions/WiFiManagerExt;->SEC_COMMAND_ID_DELAY_DISCONNECT_TRANSITION:I

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 376
    iput p1, v0, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_0

    const/16 p1, 0x2710

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 378
    :goto_0
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 379
    invoke-static {p0, v0}, Lcom/sec/ims/extensions/WiFiManagerExt;->callSECApi(Landroid/net/wifi/WifiManager;Landroid/os/Message;)I

    const-string p0, "RegiGvnSoftp"

    const-string p1, "Notify to WiFiManager"

    .line 380
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method


# virtual methods
.method protected addIpv4Addr(Ljava/util/List;Ljava/util/List;Lcom/sec/internal/helper/os/LinkPropertiesWrapper;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/internal/helper/os/LinkPropertiesWrapper;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 231
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 232
    invoke-static {v0}, Lcom/sec/internal/helper/NetworkUtil;->isIPv4Address(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    const-string v0, "RegiGvnSoftp"

    if-eqz p0, :cond_3

    .line 238
    invoke-virtual {p3}, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->hasIPv4Address()Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "ipv4 address found"

    .line 239
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 242
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 243
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 244
    invoke-static {p1}, Lcom/sec/internal/helper/NetworkUtil;->isIPv4Address(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 245
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const-string p0, "Ipv4 pcscf addr isn\'t exist for Softphone"

    .line 250
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-interface {p2}, Ljava/util/List;->clear()V

    :cond_4
    return-object p2
.end method

.method protected checkCallStatus()Z
    .locals 3

    .line 161
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManager;->getTelephonyCallStatus(I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v0, v2, :cond_1

    return v1

    .line 165
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    iget-boolean p0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mIsUpdateRegistering:Z

    if-eqz p0, :cond_2

    const-string p0, "RegiGvnSoftp"

    const-string v0, "isReadyToRegister: Task State is UpdateRegistering"

    .line 166
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method protected checkNetworkEvent(I)Z
    .locals 5

    .line 351
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->isNetworkRoaming()Z

    move-result v0

    .line 352
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/internal/helper/NetworkUtil;->isMobileDataOn(Landroid/content/Context;)Z

    move-result v1

    .line 353
    sget-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->DATA_ROAMING:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    sget v3, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->DATA_ROAMING_UNKNOWN:I

    invoke-virtual {v2, p0, v3}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result p0

    sget v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->ROAMING_DATA_ENABLED:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne p0, v2, :cond_0

    move p0, v3

    goto :goto_0

    :cond_0
    move p0, v4

    :goto_0
    const/16 v2, 0xd

    if-ne p1, v2, :cond_2

    if-eqz v1, :cond_1

    if-eqz v0, :cond_2

    if-nez p0, :cond_2

    :cond_1
    const-string p0, "RegiGvnSoftp"

    const-string p1, "Mobile data off. Do not try IMS registration on LTE."

    .line 357
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_2
    return v3
.end method

.method public determineDeRegistration(II)Z
    .locals 2

    .line 386
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result v0

    const/16 v1, 0x12

    if-eq v0, v1, :cond_0

    if-eq p1, v1, :cond_1

    :cond_0
    if-ne v0, v1, :cond_2

    if-eq p1, v1, :cond_2

    .line 389
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 390
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2, p2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    const/4 p0, 0x1

    return p0

    .line 394
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->determineDeRegistration(II)Z

    move-result p0

    return p0
.end method

.method public filterService(Ljava/util/Set;I)Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 179
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 180
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 181
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v2

    const-string v3, "ims"

    .line 180
    invoke-static {v1, v3, v2}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 182
    :goto_0
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 183
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v5

    const-string/jumbo v6, "volte"

    .line 182
    invoke-static {v4, v6, v5}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    .line 184
    :goto_1
    sget-object v5, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VILTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    iget-object v6, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result v5

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    move v3, v2

    :goto_2
    if-eqz p1, :cond_3

    .line 189
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_3
    if-nez v1, :cond_4

    const-string p1, "RegiGvnSoftp"

    const-string p2, "filterEnabledCoreService: IMS is disabled."

    .line 193
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object p1, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->MAIN_SWITCHES_OFF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 195
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0

    :cond_4
    if-nez v4, :cond_6

    .line 199
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getVoLteServiceList()[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    move v4, v2

    :goto_3
    if-ge v4, v1, :cond_5

    aget-object v5, p1, v4

    const-string v6, "VoLTE disabled"

    .line 200
    invoke-virtual {p0, v0, v5, v6}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 202
    :cond_5
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v1, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->NO_MMTEL_IMS_SWITCH_OFF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    :cond_6
    if-eqz v3, :cond_7

    const/16 p1, 0x12

    if-eq p2, p1, :cond_8

    .line 207
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    .line 208
    invoke-static {p1}, Lcom/sec/internal/helper/NetworkUtil;->isMobileDataOn(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_8

    :cond_7
    const-string p1, "mmtel-video"

    const-string p2, "MobileData or Setting off"

    .line 209
    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :cond_8
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mConfigModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->isValidAcsVersion(I)Z

    move-result p1

    if-nez p1, :cond_9

    .line 214
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getRcsServiceList()[Ljava/lang/String;

    move-result-object p1

    array-length p2, p1

    :goto_4
    if-ge v2, p2, :cond_9

    aget-object v1, p1, v2

    const-string v3, "RCS disabled."

    .line 215
    invoke-virtual {p0, v0, v1, v3}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_9
    return-object v0
.end method

.method protected getVoiceTechType()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isLocationInfoLoaded(I)Z
    .locals 2

    .line 81
    iget p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    const-string v0, "RegiGvnSoftp"

    const-string/jumbo v1, "update geo location"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 82
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getGeolocationController()Lcom/sec/internal/interfaces/ims/core/IGeolocationController;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const/4 p0, 0x1

    return p0
.end method

.method public isReadyToRegister(I)Z
    .locals 1

    .line 174
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->checkEmergencyStatus()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->checkCallStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->checkNetworkEvent(I)Z

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

.method public onDeregistrationDone(Z)V
    .locals 0

    const/4 p1, 0x0

    .line 112
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->sendDelayMsgToWifi(Z)V

    return-void
.end method

.method public onPublishError(Lcom/sec/ims/util/SipError;)V
    .locals 3

    .line 322
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->FORBIDDEN:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 323
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/16 v0, 0x2d

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 324
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "publish error"

    invoke-interface {p1, p0, v0, v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onRegistrationDone()V
    .locals 2

    .line 101
    invoke-super {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->onRegistrationDone()V

    const/4 v0, 0x0

    .line 102
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->mForbiddenCount:I

    .line 103
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/PdnController;->isWifiConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 104
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->sendDelayMsgToWifi(Z)V

    goto :goto_0

    .line 106
    :cond_0
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->sendDelayMsgToWifi(Z)V

    :goto_0
    return-void
.end method

.method public onRegistrationError(Lcom/sec/ims/util/SipError;IZ)V
    .locals 4

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRegistrationError: state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " retryAfter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mCurPcscfIpIdx "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurPcscfIpIdx:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mNumOfPcscfIp "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mNumOfPcscfIp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mFailureCounter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mFailureCounter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mIsPermanentStopped "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIsPermanentStopped:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiGvnSoftp"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-gez p2, :cond_0

    const/4 p2, 0x0

    .line 267
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/constants/ims/SipErrorBase;->isImsForbiddenError(Lcom/sec/ims/util/SipError;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 268
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "403 response : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->mForbiddenCount:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->mForbiddenCount:I

    const/4 p2, 0x3

    if-lt p1, p2, :cond_1

    const-string p1, "got 403 response over 3 times..."

    .line 270
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 271
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIsPermanentStopped:Z

    return-void

    .line 274
    :cond_1
    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->mForbiddenRetryTime:[I

    add-int/lit8 p3, p1, 0x1

    iput p3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->mForbiddenCount:I

    aget p1, p2, p1

    if-lez p1, :cond_2

    .line 276
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p2

    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mRegiAt:J

    .line 277
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->startRetryTimer(J)V

    :cond_2
    return-void

    .line 281
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->onRegistrationError(Lcom/sec/ims/util/SipError;IZ)V

    return-void
.end method

.method public onSipError(Ljava/lang/String;Lcom/sec/ims/util/SipError;)Lcom/sec/ims/util/SipError;
    .locals 5

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSipError: service="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiGvnSoftp"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mNumOfPcscfIp:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIsValid:Z

    const-string v0, "mmtel"

    .line 296
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/16 v0, 0x2b

    if-eqz p1, :cond_2

    .line 297
    sget-object p1, Lcom/sec/internal/constants/ims/SipErrorBase;->SIP_INVITE_TIMEOUT:Lcom/sec/ims/util/SipError;

    invoke-virtual {p1, p2}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/sec/internal/constants/ims/SipErrorBase;->SIP_TIMEOUT:Lcom/sec/ims/util/SipError;

    .line 298
    invoke-virtual {p1, p2}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/sec/internal/constants/ims/SipErrorBase;->FORBIDDEN:Lcom/sec/ims/util/SipError;

    .line 299
    invoke-virtual {p1, p2}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/sec/internal/constants/ims/SipErrorBase;->SERVER_TIMEOUT:Lcom/sec/ims/util/SipError;

    .line 300
    invoke-virtual {p1, p2}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 301
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 302
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    iget-boolean v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIsValid:Z

    const-string v4, "Sip Error[MMTEL]. DeRegister.."

    invoke-interface {p1, v2, v1, v3, v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    .line 309
    :cond_2
    sget-object p1, Lcom/sec/internal/constants/ims/SipErrorBase;->PROXY_AUTHENTICATION_REQUIRED:Lcom/sec/ims/util/SipError;

    invoke-virtual {p1, p2}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Lcom/sec/internal/constants/ims/SipErrorBase;->SERVICE_UNAVAILABLE:Lcom/sec/ims/util/SipError;

    .line 310
    invoke-virtual {p1, p2}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 311
    :cond_3
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 312
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    iget-boolean p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIsValid:Z

    const-string v2, "Sip Error 407 or 503. DeRegister.."

    invoke-interface {p1, v0, v1, p0, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    :cond_4
    return-object p2
.end method

.method public releaseThrottle(I)V
    .locals 4

    const-string v0, "RegiGvnSoftp"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 332
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIsPermanentStopped:Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    const-string v2, "releaseThrottle: sendDeregister"

    .line 334
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    const/16 v3, 0xc

    invoke-interface {v2, v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->sendDeregister(I)V

    .line 337
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIsPermanentStopped:Z

    .line 338
    iput v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mFailureCounter:I

    const-wide/16 v2, 0x0

    .line 339
    iput-wide v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mRegiAt:J

    .line 340
    iput v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->mForbiddenCount:I

    .line 341
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->stopRetryTimer()V

    .line 344
    :cond_1
    :goto_0
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIsPermanentStopped:Z

    if-nez p0, :cond_2

    .line 345
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "releaseThrottle: case by "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public unRegisterIntentReceiver()V
    .locals 3

    const-string v0, "RegiGvnSoftp"

    const-string v1, "Un-register intent receiver(s)"

    .line 89
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->mShutdownEventReceiver:Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone$ShutdownEventReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 93
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->mWifiEventReceiver:Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone$WifiEventReceiver;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string/jumbo p0, "unRegisterIntentReceiver: Receiver not registered!"

    .line 95
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
