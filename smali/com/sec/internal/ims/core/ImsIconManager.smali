.class public Lcom/sec/internal/ims/core/ImsIconManager;
.super Ljava/lang/Object;
.source "ImsIconManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;,
        Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;,
        Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;,
        Lcom/sec/internal/ims/core/ImsIconManager$Icon;
    }
.end annotation


# static fields
.field private static final CMC_SD_ICON:Ljava/lang/String; = "stat_sys_phone_call_skt"

.field private static final CROSS_SIM_ICON_NAME:[Ljava/lang/String;

.field public static final DEFAULT_VOLTE_REGI_ICON_ID:Ljava/lang/String; = "stat_notify_volte_service_avaliable"

.field private static final DUAL_IMS_NO_CTC_VOLTE_ICON_NAME:Ljava/lang/String; = "stat_sys_phone_no_volte_chn_hd"

.field private static final INTENT_ACTION_CONFIGURATION_CHANGED:Ljava/lang/String; = "android.intent.action.CONFIGURATION_CHANGED"

.field private static final INTENT_ACTION_SILENT_REDIAL:Ljava/lang/String; = "com.samsung.intent.action.PHONE_NEED_SILENT_REDIAL"

.field private static final LOG_TAG:Ljava/lang/String; = "ImsIconManager"

.field private static final NOTIFICATION_BUILDER_ID:I = -0x6687

.field private static final NO_CTC_VOLTE_ICON_NAME:Ljava/lang/String; = "stat_sys_phone_no_volte_chn_ctc"

.field private static final PRIMARY_CHANNEL:Ljava/lang/String; = "imsicon_channel"

.field private static final RCS_ICON_DESCRIPTION:Ljava/lang/String; = "RCS"

.field protected static final RCS_ICON_NAME:Ljava/lang/String; = "stat_notify_rcs_service_avaliable"

.field protected static final RCS_ICON_NAME_CHN:Ljava/lang/String; = "stat_notify_rcs"

.field protected static final RCS_ICON_NAME_DUAL:[Ljava/lang/String;

.field protected static final RCS_ICON_SLOT:Ljava/lang/String; = "com.samsung.rcs"

.field private static final VOLTE_ICON_SLOT_HEAD:Ljava/lang/String; = "ims_volte"

.field private static final VoLTE_ICON_WFC_WARNING_NAME:Ljava/lang/String; = "stat_notify_wfc_warning"

.field static mShowVoWIFILabel:[Z

.field static mVowifiOperatorLabel:[Ljava/lang/String;

.field static mVowifiOperatorLabelOngoing:[I

.field static mWifiSubTextOnLockScreen:[Ljava/lang/String;


# instance fields
.field protected VOLTE_ICON_SLOT:Ljava/lang/String;

.field mConnectivityManager:Landroid/net/ConnectivityManager;

.field mContext:Landroid/content/Context;

.field protected mCurrentInRoaming:Z

.field protected mCurrentNetworkType:I

.field mCurrentPhoneState:I

.field protected mCurrentServiceState:I

.field protected mCurrentVoiceRatType:I

.field mDisplayDensity:I

.field mForceRefreshIcon:Z

.field final mIconBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field protected mIsDebuggable:Z

.field mIsDuringEmergencyCall:Z

.field mIsFirstVoLTEIconShown:Z

.field mIsSilentRedialInProgress:Z

.field mLastRcsVisiblity:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

.field mLastVoLTEResourceId:I

.field mLastVoLTEVisiblity:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

.field mMno:Lcom/sec/internal/constants/Mno;

.field mNotificationManager:Landroid/app/NotificationManager;

.field mOmcCode:Ljava/lang/String;

.field mPackageName:Ljava/lang/String;

.field mPdnController:Lcom/sec/internal/ims/core/PdnController;

.field mPhoneId:I

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field mPhoneStateManager:Lcom/sec/internal/ims/util/ImsPhoneStateManager;

.field mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

.field mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

.field mUseDualVolteIcon:Z

.field final mVolteNotiObserver:Landroid/database/ContentObserver;


# direct methods
.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    const-string/jumbo v0, "stat_notify_rcs_service_avaliable_1"

    const-string/jumbo v1, "stat_notify_rcs_service_avaliable_2"

    const-string/jumbo v2, "stat_notify_rcs_service_avaliable_dual"

    .line 67
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->RCS_ICON_NAME_DUAL:[Ljava/lang/String;

    const-string/jumbo v0, "stat_sys_cross_sim_calling1_spr"

    const-string/jumbo v1, "stat_sys_cross_sim_calling2_spr"

    .line 74
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->CROSS_SIM_ICON_NAME:[Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [Z

    .line 122
    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->mShowVoWIFILabel:[Z

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 123
    fill-array-data v0, :array_1

    sput-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->mVowifiOperatorLabelOngoing:[I

    const-string v0, ""

    .line 124
    filled-new-array {v0, v0}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/internal/ims/core/ImsIconManager;->mWifiSubTextOnLockScreen:[Ljava/lang/String;

    .line 125
    filled-new-array {v0, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->mVowifiOperatorLabel:[Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/constants/Mno;I)V
    .locals 3

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mIsDebuggable:Z

    const-string v0, ""

    .line 63
    iput-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->VOLTE_ICON_SLOT:Ljava/lang/String;

    const/4 v0, -0x1

    .line 117
    iput v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mLastVoLTEResourceId:I

    .line 118
    sget-object v1, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;->UNKNOWN:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    iput-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mLastVoLTEVisiblity:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    .line 119
    sget-object v1, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;->HIDE:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    iput-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mLastRcsVisiblity:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    const/4 v1, 0x0

    .line 120
    iput v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    .line 131
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mUseDualVolteIcon:Z

    .line 132
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mIsFirstVoLTEIconShown:Z

    .line 134
    iput v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mDisplayDensity:I

    .line 135
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mForceRefreshIcon:Z

    .line 1080
    new-instance v0, Lcom/sec/internal/ims/core/ImsIconManager$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/ImsIconManager$1;-><init>(Lcom/sec/internal/ims/core/ImsIconManager;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 1160
    new-instance v0, Lcom/sec/internal/ims/core/ImsIconManager$2;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/ImsIconManager$2;-><init>(Lcom/sec/internal/ims/core/ImsIconManager;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mIconBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1198
    new-instance v1, Lcom/sec/internal/ims/core/ImsIconManager$3;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/sec/internal/ims/core/ImsIconManager$3;-><init>(Lcom/sec/internal/ims/core/ImsIconManager;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mVolteNotiObserver:Landroid/database/ContentObserver;

    .line 139
    iput-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    .line 140
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPackageName:Ljava/lang/String;

    .line 142
    iget-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 144
    iput-object p2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    .line 145
    iput-object p3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 147
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mOmcCode:Ljava/lang/String;

    .line 148
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->showDualVolteIcon()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mUseDualVolteIcon:Z

    .line 150
    iget-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    const-string p2, "connectivity"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 153
    iput p5, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    .line 157
    new-instance p1, Lcom/sec/internal/ims/util/ImsPhoneStateManager;

    iget-object p2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    const/16 p3, 0x21

    invoke-direct {p1, p2, p3}, Lcom/sec/internal/ims/util/ImsPhoneStateManager;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneStateManager:Lcom/sec/internal/ims/util/ImsPhoneStateManager;

    const-string/jumbo p1, "volte_noti_settings"

    .line 160
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 161
    iget-object p2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 163
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "com.samsung.intent.action.PHONE_NEED_SILENT_REDIAL"

    .line 164
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "android.intent.action.CONFIGURATION_CHANGED"

    .line 165
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    iget-object p2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 168
    iget-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    const-string p2, "notification"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mNotificationManager:Landroid/app/NotificationManager;

    .line 171
    invoke-virtual {p0, p4, p5}, Lcom/sec/internal/ims/core/ImsIconManager;->initConfiguration(Lcom/sec/internal/constants/Mno;I)V

    return-void
.end method


# virtual methods
.method checkKORVolteIcon()Z
    .locals 8

    .line 881
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 883
    array-length v3, v0

    move v4, v2

    move v5, v4

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v6, v0, v4

    const-string v7, "mmtel"

    .line 884
    invoke-virtual {v6, v7}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 885
    invoke-virtual {v6}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v6

    if-nez v6, :cond_0

    iget v6, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentNetworkType:I

    .line 886
    invoke-static {v6}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move v5, v2

    .line 891
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSimState()I

    move-result v0

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_3

    goto :goto_1

    .line 898
    :cond_3
    iget v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentNetworkType:I

    if-nez v0, :cond_4

    .line 899
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string v1, "checkKORVolteIcon : network is unknown."

    invoke-static {v0, p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    .line 902
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    iget v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string v3, "ril.currentplmn"

    const-string v4, ""

    invoke-interface {v0, v1, v3, v4}, Lcom/sec/internal/helper/os/ITelephonyManager;->semGetTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "oversea"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 903
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_5

    .line 904
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string v1, "checkKORVolteIcon : on roaming. Hide VoLTE icon"

    invoke-static {v0, p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    .line 907
    :cond_5
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkKORVolteIcon : on roaming. Volte featuremask = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v5

    .line 912
    :cond_6
    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/core/ImsIconManager;->checkKORVolteIconOperatorSpecifics(Z)Z

    move-result p0

    return p0

    .line 894
    :cond_7
    :goto_1
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string v1, "SIM state is unknown or absent"

    invoke-static {v0, p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v2
.end method

.method checkKORVolteIconOperatorSpecifics(Z)Z
    .locals 8

    .line 916
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKTTOmcCode()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v3, :cond_4

    .line 917
    iget-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const/4 v3, -0x1

    invoke-static {p1, v3, v0}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getVoiceCallType(Landroid/content/Context;II)I

    move-result p1

    if-ne p1, v3, :cond_1

    .line 921
    invoke-static {}, Lcom/sec/ims/extensions/Extensions$UserHandle;->myUserId()I

    move-result p1

    if-eqz p1, :cond_0

    .line 922
    sget-object p1, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string v3, "checkKORVolteIcon : Settings not found, return VOLTE_PREFERRED"

    invoke-static {p1, v0, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    move v3, v2

    goto :goto_0

    .line 926
    :cond_0
    sget-object p1, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string v4, "checkKORVolteIcon : Settings not found"

    invoke-static {p1, v0, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    move v3, p1

    .line 930
    :goto_0
    sget-object p1, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkKORVolteIcon : KT device and KT sim, ServiceState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 931
    invoke-interface {v5}, Lcom/sec/internal/helper/os/ITelephonyManager;->getDataServiceState()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", voicecall_type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 930
    invoke-static {p1, v0, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 933
    iget-object p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {p0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getServiceState()I

    move-result p0

    if-nez p0, :cond_2

    if-eqz v3, :cond_3

    const/4 p0, 0x2

    if-ne v3, p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :cond_3
    :goto_1
    return v1

    .line 934
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    if-ne v0, v3, :cond_5

    .line 935
    sget-object p1, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string v0, "checkKORVolteIcon : SIM card is LGT, return false"

    invoke-static {p1, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    .line 937
    :cond_5
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 940
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v3, :cond_7

    .line 941
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mIsSilentRedialInProgress:Z

    .line 944
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isSKTOmcCode()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 947
    :try_start_0
    iget-object v3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "volte_noti_settings"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 950
    :catch_0
    sget-object v3, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v4, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string v5, "checkKORVolteIcon : volte_noti_settings is not exists"

    invoke-static {v3, v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    move v3, v2

    goto :goto_2

    :cond_6
    move v3, v1

    goto :goto_2

    :cond_7
    move v3, v1

    move v0, v2

    .line 958
    :goto_2
    sget-object v4, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v5, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkKORVolteIcon : volte_noti_settings = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", isVolteFeatureEnabled = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", isHide = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", ServiceState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 960
    invoke-interface {v7}, Lcom/sec/internal/helper/os/ITelephonyManager;->getServiceState()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 958
    invoke-static {v4, v5, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-ne v3, v1, :cond_8

    if-eqz p1, :cond_8

    if-nez v0, :cond_8

    .line 961
    iget-object p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 962
    invoke-interface {p0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getServiceState()I

    move-result p0

    if-nez p0, :cond_8

    goto :goto_3

    :cond_8
    move v1, v2

    :goto_3
    return v1

    :cond_9
    return v2
.end method

.method checkSameVoWIFILabel()Z
    .locals 4

    .line 679
    iget v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getOppositeSimSlot(I)I

    move-result v0

    .line 681
    sget-object v1, Lcom/sec/internal/ims/core/ImsIconManager;->mVowifiOperatorLabelOngoing:[I

    iget v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    aget v3, v1, v2

    aget v1, v1, v0

    if-ne v3, v1, :cond_0

    sget-object v1, Lcom/sec/internal/ims/core/ImsIconManager;->mWifiSubTextOnLockScreen:[Ljava/lang/String;

    aget-object v2, v1, v2

    aget-object v1, v1, v0

    .line 682
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/internal/ims/core/ImsIconManager;->mVowifiOperatorLabel:[Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    aget-object p0, v1, p0

    aget-object v0, v1, v0

    .line 683
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method clearIcon(I)V
    .locals 1

    .line 1207
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/ImsIconManager;->needShowRcsIcon(I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1208
    sget-object p1, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;->HIDE:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    const-string v0, "com.samsung.rcs"

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/ImsIconManager;->setIconVisibility(Ljava/lang/String;Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;)V

    .line 1210
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->needShowNoCTCVoLTEIcon()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1211
    iget-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->VOLTE_ICON_SLOT:Ljava/lang/String;

    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;->HIDE:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/core/ImsIconManager;->setIconVisibility(Ljava/lang/String;Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;)V

    :cond_1
    return-void
.end method

.method fillWifiLabel()V
    .locals 8

    .line 657
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->mVowifiOperatorLabelOngoing:[I

    iget v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string/jumbo v2, "vowifi_operator_label_ongoing"

    const/4 v3, 0x0

    .line 658
    invoke-static {v1, v2, v3}, Lcom/sec/internal/ims/registry/ImsRegistry;->getInt(ILjava/lang/String;I)I

    move-result v4

    aput v4, v0, v1

    .line 660
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->mWifiSubTextOnLockScreen:[Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string/jumbo v4, "vowifi_subtext_on_lockscreen"

    const-string v5, ""

    .line 661
    invoke-static {v1, v4, v5}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v1

    .line 663
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->mVowifiOperatorLabel:[Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string/jumbo v6, "vowifi_operator_label"

    .line 664
    invoke-static {v1, v6, v5}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v1

    .line 666
    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-static {p0}, Lcom/sec/internal/helper/SimUtil;->getOppositeSimSlot(I)I

    move-result p0

    .line 668
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->mVowifiOperatorLabelOngoing:[I

    .line 669
    invoke-static {p0, v2, v3}, Lcom/sec/internal/ims/registry/ImsRegistry;->getInt(ILjava/lang/String;I)I

    move-result v1

    aput v1, v0, p0

    .line 671
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->mWifiSubTextOnLockScreen:[Ljava/lang/String;

    .line 672
    invoke-static {p0, v4, v5}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p0

    .line 674
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->mVowifiOperatorLabel:[Ljava/lang/String;

    .line 675
    invoke-static {p0, v6, v5}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p0

    return-void
.end method

.method getCrossSimIconName()Ljava/lang/String;
    .locals 4

    .line 967
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->CROSS_SIM_ICON_NAME:[Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    aget-object v0, v0, p0

    .line 968
    sget-object v1, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCrossSimIconName() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method getDualIMSIconName(Lcom/sec/internal/ims/core/ImsIconManager$Icon;)Ljava/lang/String;
    .locals 3

    .line 1010
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mUseDualVolteIcon:Z

    if-eqz v0, :cond_7

    .line 1012
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager$4;->$SwitchMap$com$sec$internal$ims$core$ImsIconManager$Icon:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const-string v0, ""

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    move-object p1, v0

    goto :goto_0

    .line 1020
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "vo5g_regi_icon_id"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    add-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1017
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "vowifi_regi_icon_id"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    add-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1014
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "volte_regi_icon_id"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    add-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1025
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1026
    iget v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-static {v1, p1, v0}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1030
    :cond_3
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKOROmcCode()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result p0

    if-eqz p0, :cond_8

    .line 1033
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKorOpenOmcCode()Z

    move-result p0

    if-eqz p0, :cond_4

    const-string/jumbo v0, "stat_sys_phone_call"

    goto :goto_1

    .line 1035
    :cond_4
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isSKTOmcCode()Z

    move-result p0

    if-eqz p0, :cond_5

    const-string/jumbo v0, "stat_sys_phone_call_skt"

    goto :goto_1

    .line 1037
    :cond_5
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKTTOmcCode()Z

    move-result p0

    if-eqz p0, :cond_6

    const-string/jumbo v0, "stat_sys_phone_call_kt"

    goto :goto_1

    :cond_6
    const-string/jumbo v0, "stat_sys_phone_call_lgt"

    goto :goto_1

    :cond_7
    const-string/jumbo v0, "stat_notify_volte_service_avaliable"

    :cond_8
    :goto_1
    return-object v0
.end method

.method public getDuringEmergencyCall()Z
    .locals 0

    .line 1253
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mIsDuringEmergencyCall:Z

    return p0
.end method

.method getRcsIconVisibility(Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;)Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;
    .locals 0

    .line 570
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->isShowRcsIcon()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isRcsRegistered()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;->SHOW:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;->HIDE:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    :goto_0
    return-object p0
.end method

.method protected getResourceIdByName(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 875
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p2, p1, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method getVo5gIconName()Ljava/lang/String;
    .locals 2

    .line 977
    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string/jumbo v0, "vo5g_regi_icon_id"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getVolteIconName()Ljava/lang/String;
    .locals 2

    .line 983
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKOROmcCode()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 986
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKorOpenOmcCode()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string/jumbo p0, "stat_sys_phone_call"

    goto :goto_0

    .line 988
    :cond_0
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isSKTOmcCode()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string/jumbo p0, "stat_sys_phone_call_skt"

    goto :goto_0

    .line 990
    :cond_1
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKTTOmcCode()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string/jumbo p0, "stat_sys_phone_call_kt"

    goto :goto_0

    :cond_2
    const-string/jumbo p0, "stat_sys_phone_call_lgt"

    goto :goto_0

    .line 996
    :cond_3
    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string/jumbo v0, "volte_regi_icon_id"

    const-string v1, ""

    .line 997
    invoke-static {p0, v0, v1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 999
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const-string/jumbo p0, "stat_notify_volte_service_avaliable"

    :goto_0
    return-object p0
.end method

.method getVolteIconVisibility(Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;)Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;
    .locals 1

    .line 565
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->isShowVolteIcon()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKOROmcCode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result p0

    if-nez p0, :cond_3

    :cond_0
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isVolteRegistered()Z

    move-result p0

    if-nez p0, :cond_3

    .line 566
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->isShowVowiFiIcon()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isVowifiRegistered()Z

    move-result p0

    if-nez p0, :cond_3

    :cond_2
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isCrossSimRegistered()Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    sget-object p0, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;->SHOW:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    goto :goto_0

    :cond_4
    sget-object p0, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;->HIDE:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    :goto_0
    return-object p0
.end method

.method getVowifiIconName()Ljava/lang/String;
    .locals 2

    .line 973
    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string/jumbo v0, "vowifi_regi_icon_id"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method hasVolteService(Lcom/sec/ims/ImsRegistration;)Z
    .locals 2

    .line 647
    iget v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    .line 648
    iget-object p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-eq p0, v1, :cond_1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMnoName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "GenericIR92_US:Cellcom"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 652
    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->hasVolteService()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const-string p0, "mmtel"

    .line 649
    invoke-virtual {p1, p0}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "mmtel-video"

    .line 650
    invoke-virtual {p1, p0}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p0, 0x1

    :goto_2
    return p0
.end method

.method public initConfiguration(Lcom/sec/internal/constants/Mno;I)V
    .locals 1

    .line 175
    iput-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    .line 176
    iput p2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    .line 177
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ims_volte"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const-string v0, "2"

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->VOLTE_ICON_SLOT:Ljava/lang/String;

    const/4 p1, 0x0

    .line 178
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mIsSilentRedialInProgress:Z

    .line 179
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mIsDuringEmergencyCall:Z

    .line 181
    iget-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneStateManager:Lcom/sec/internal/ims/util/ImsPhoneStateManager;

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->hasListener(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 182
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->unRegisterPhoneStateListener()V

    .line 185
    :cond_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->registerPhoneStateListener()V

    .line 186
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/ImsIconManager;->clearIcon(I)V

    return-void
.end method

.method isCrossSimConnected(Lcom/sec/ims/ImsRegistration;)Z
    .locals 1

    .line 501
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result p1

    .line 502
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getCurrentNetwork(I)I

    move-result p1

    const/16 v0, 0x12

    if-ne p1, v0, :cond_0

    .line 503
    iget-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/PdnController;->isEpdgConnected(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    .line 504
    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/PdnController;->getEpdgPhysicalInterface(I)I

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

.method isOtherSimInCallStatus()Z
    .locals 3

    .line 1216
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isDSDAMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1217
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string v2, "isOtherSimInCallStatus: DSDA not need to check"

    invoke-static {v0, p0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v1

    .line 1221
    :cond_0
    iget v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const/4 v2, 0x1

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1222
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getTelephonyCallStatus(I)I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    if-ne p0, v2, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    return v1
.end method

.method isRcsRegistered(IZ)Z
    .locals 4

    .line 706
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 708
    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p1, v2

    .line 709
    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->hasRcsService()Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez p2, :cond_2

    iget-object v3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    .line 710
    invoke-static {v3}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsChn(Lcom/sec/internal/constants/Mno;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentServiceState:I

    if-nez v3, :cond_2

    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    .line 711
    invoke-static {v3}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsChn(Lcom/sec/internal/constants/Mno;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->isOtherSimInCallStatus()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method isServiceAvailable(Ljava/lang/String;)Z
    .locals 7

    .line 190
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mOmcCode:Ljava/lang/String;

    const-string v1, "ATT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "mmtel-video"

    const-string v2, "mmtel"

    const/16 v3, 0x12

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mOmcCode:Ljava/lang/String;

    const-string v6, "APP"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v6, Lcom/sec/internal/constants/Mno;->BOG:Lcom/sec/internal/constants/Mno;

    if-eq v0, v6, :cond_2

    sget-object v6, Lcom/sec/internal/constants/Mno;->ORANGE:Lcom/sec/internal/constants/Mno;

    if-eq v0, v6, :cond_2

    sget-object v6, Lcom/sec/internal/constants/Mno;->ORANGE_POLAND:Lcom/sec/internal/constants/Mno;

    if-eq v0, v6, :cond_2

    sget-object v6, Lcom/sec/internal/constants/Mno;->DIGI:Lcom/sec/internal/constants/Mno;

    if-eq v0, v6, :cond_2

    sget-object v6, Lcom/sec/internal/constants/Mno;->TELECOM_ITALY:Lcom/sec/internal/constants/Mno;

    if-eq v0, v6, :cond_2

    sget-object v6, Lcom/sec/internal/constants/Mno;->VODAFONE:Lcom/sec/internal/constants/Mno;

    if-eq v0, v6, :cond_2

    .line 210
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isTmobile()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v6, Lcom/sec/internal/constants/Mno;->TELEKOM_ALBANIA:Lcom/sec/internal/constants/Mno;

    if-eq v0, v6, :cond_2

    sget-object v6, Lcom/sec/internal/constants/Mno;->VODAFONE_NEWZEALAND:Lcom/sec/internal/constants/Mno;

    if-eq v0, v6, :cond_2

    sget-object v6, Lcom/sec/internal/constants/Mno;->WINDTRE:Lcom/sec/internal/constants/Mno;

    if-ne v0, v6, :cond_1

    goto :goto_0

    :cond_1
    return v5

    .line 214
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget v6, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-interface {v0, v6}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getCurrentNetworkByPhoneId(I)I

    move-result v0

    .line 215
    invoke-static {v0}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result v6

    if-nez v6, :cond_4

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    .line 217
    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/core/PdnController;->isEpdgConnected(I)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    return v4

    .line 218
    :cond_4
    :goto_1
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    .line 219
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_5
    move v4, v5

    :cond_6
    return v4

    .line 192
    :cond_7
    :goto_2
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isSoftphoneEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    return v5

    .line 196
    :cond_8
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getCurrentNetworkByPhoneId(I)I

    move-result p0

    .line 197
    invoke-static {p0}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result v0

    if-nez v0, :cond_a

    if-eq p0, v3, :cond_a

    .line 199
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    .line 200
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    move v4, v5

    :cond_9
    return v4

    :cond_a
    return v5
.end method

.method isVoImsRegistered(Lcom/sec/ims/ImsRegistration;)Z
    .locals 1

    .line 481
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/ImsIconManager;->hasVolteService(Lcom/sec/ims/ImsRegistration;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "mmtel"

    .line 482
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/ImsIconManager;->isServiceAvailable(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "mmtel-video"

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/ImsIconManager;->isServiceAvailable(Ljava/lang/String;)Z

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

.method isVoWiFiConnected(Lcom/sec/ims/ImsRegistration;)Z
    .locals 5

    .line 486
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v0

    .line 487
    iget-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getCurrentNetwork(I)I

    move-result v0

    .line 488
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getRegiRat()I

    move-result p1

    .line 489
    sget-object v1, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRegiRat ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "], getCurrentNetwork ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v1, 0x0

    const/16 v2, 0x12

    if-ne v0, v2, :cond_1

    .line 490
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget v3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/core/PdnController;->isEpdgConnected(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget v3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    .line 491
    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/core/PdnController;->getEpdgPhysicalInterface(I)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 492
    iget-object p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v0, Lcom/sec/internal/constants/Mno;->CHT:Lcom/sec/internal/constants/Mno;

    if-ne p0, v0, :cond_0

    if-eq p1, v2, :cond_0

    return v1

    :cond_0
    return v3

    :cond_1
    return v1
.end method

.method isVoWiFiRegistered(I)Z
    .locals 6

    .line 687
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 689
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 690
    invoke-virtual {v4}, Lcom/sec/ims/ImsRegistration;->hasVolteService()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "mmtel"

    .line 691
    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/core/ImsIconManager;->isServiceAvailable(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "mmtel-video"

    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/core/ImsIconManager;->isServiceAvailable(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 692
    :cond_0
    iget-object v4, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v4, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getCurrentNetworkByPhoneId(I)I

    move-result v4

    const/16 v5, 0x12

    if-ne v4, v5, :cond_1

    .line 693
    iget-object v4, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 694
    invoke-virtual {v4, p1}, Lcom/sec/internal/ims/core/PdnController;->getEpdgPhysicalInterface(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 695
    invoke-virtual {v4, p1}, Lcom/sec/internal/ims/core/PdnController;->isEpdgConnected(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 696
    sget-object p1, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string v0, "isVoWIFIRegistered"

    invoke-static {p1, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method needDisplayVo5gIcon()Z
    .locals 3

    .line 508
    iget v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentNetworkType:I

    const/4 v1, 0x0

    const/16 v2, 0x14

    if-ne v0, v2, :cond_0

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string v0, "separate_vo5g_icon"

    invoke-static {p0, v0, v1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method needShowNoCTCVoLTEIcon()Z
    .locals 5

    .line 231
    iget v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 232
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getRilSimOperator()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CTC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mUseDualVolteIcon:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    .line 233
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 234
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    const/4 v3, -0x1

    iget v4, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-static {v2, v3, v4}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getVoiceCallType(Landroid/content/Context;II)I

    move-result v2

    .line 236
    iget-object v3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v2, :cond_1

    .line 238
    iget v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentNetworkType:I

    .line 239
    invoke-static {v2}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v3, :cond_1

    .line 241
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    iget v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    .line 242
    invoke-interface {v0, v2}, Lcom/sec/internal/helper/os/ITelephonyManager;->getCurrentPhoneTypeForSlot(I)I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentVoiceRatType:I

    const/4 v2, 0x7

    if-eq v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentInRoaming:Z

    if-nez v0, :cond_1

    const/4 v1, 0x1

    .line 249
    :cond_1
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "needShowNoCTCVoLTEIcon: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v1
.end method

.method needShowRcsIcon(I)Z
    .locals 3

    .line 1257
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    .line 1258
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentNetworkType:I

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1259
    iget-object v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/core/PdnController;->isSuspended(Landroid/net/NetworkInfo;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    .line 1261
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/core/ImsIconManager;->isRcsRegistered(IZ)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1262
    sget-object p1, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string v0, "needShowRcsIcon: true"

    invoke-static {p1, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    :cond_1
    return v1
.end method

.method public registerPhoneStateListener()V
    .locals 3

    .line 1048
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string v2, "registerPhoneStateListener:"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1050
    iget v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v0

    if-gez v0, :cond_0

    return-void

    .line 1055
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneStateManager:Lcom/sec/internal/ims/util/ImsPhoneStateManager;

    iget-object v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-virtual {v1, v2, v0, p0}, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->registerListener(Landroid/telephony/PhoneStateListener;II)V

    return-void
.end method

.method public setCurrentNetworkType(I)V
    .locals 0

    .line 1065
    iput p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentNetworkType:I

    return-void
.end method

.method public setCurrentRoamingState(Z)V
    .locals 0

    .line 1077
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentInRoaming:Z

    return-void
.end method

.method public setCurrentServiceState(I)V
    .locals 0

    .line 1069
    iput p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentServiceState:I

    return-void
.end method

.method public setCurrentVoiceRatType(I)V
    .locals 0

    .line 1073
    iput p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentVoiceRatType:I

    return-void
.end method

.method public setDuringEmergencyCall(Z)V
    .locals 5

    .line 1246
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->VODAFONE_AUSTRALIA:Lcom/sec/internal/constants/Mno;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/constants/Mno;->APT:Lcom/sec/internal/constants/Mno;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1247
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mIsDuringEmergencyCall:Z

    .line 1248
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/core/ImsIconManager;->updateRegistrationIcon(Z)V

    :cond_0
    return-void
.end method

.method protected setIconSlot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "drawable"

    .line 794
    invoke-virtual {p0, v0, p2}, Lcom/sec/internal/ims/core/ImsIconManager;->getResourceIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 797
    iget-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->VOLTE_ICON_SLOT:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 798
    iget v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mLastVoLTEResourceId:I

    if-eq v1, v0, :cond_0

    .line 799
    iput v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mLastVoLTEResourceId:I

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    const-string p3, "com.samsung.rcs"

    .line 802
    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_4

    const-string p3, "RCS"

    :goto_0
    if-nez v2, :cond_2

    .line 810
    iget-boolean v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mForceRefreshIcon:Z

    if-eqz v1, :cond_3

    .line 812
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "statusbar"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    .line 814
    invoke-virtual {v1, p1, v0, v3, p3}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 816
    sget-object p1, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setIconSlot: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " (id: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p0, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 819
    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    :cond_3
    :goto_1
    return-void

    .line 806
    :cond_4
    sget-object p2, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Wrong slot name: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method protected setIconVisibility(Ljava/lang/String;Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;)V
    .locals 7

    const-string v0, "!@Boot: "

    .line 834
    iget-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->VOLTE_ICON_SLOT:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 835
    iget-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mLastVoLTEVisiblity:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    if-eq v1, p2, :cond_0

    .line 836
    iput-object p2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mLastVoLTEVisiblity:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    move v1, v3

    goto :goto_1

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    const-string v1, "com.samsung.rcs"

    .line 839
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 840
    iget-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mLastRcsVisiblity:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    if-eq v1, p2, :cond_2

    .line 841
    iput-object p2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mLastRcsVisiblity:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    if-nez v1, :cond_3

    .line 844
    sget-object v4, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;->SHOW:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    if-eq p2, v4, :cond_3

    iget-boolean v4, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mForceRefreshIcon:Z

    if-eqz v4, :cond_3

    .line 846
    sget-object p1, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string p2, "RCS not registered on this SIM. Skip refresh."

    invoke-static {p1, p0, p2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_3
    :goto_1
    if-nez v1, :cond_4

    .line 854
    iget-boolean v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mForceRefreshIcon:Z

    if-eqz v1, :cond_7

    .line 856
    :cond_4
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "statusbar"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    .line 857
    sget-object v4, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;->SHOW:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    if-ne p2, v4, :cond_5

    move v2, v3

    :cond_5
    invoke-virtual {v1, p1, v2}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 859
    iget-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->VOLTE_ICON_SLOT:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "]"

    const-string v5, ": ["

    const-string/jumbo v6, "setIconVisibility: "

    if-eqz v1, :cond_6

    .line 860
    :try_start_1
    iget-boolean v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mIsFirstVoLTEIconShown:Z

    if-nez v1, :cond_6

    if-ne p2, v4, :cond_6

    .line 861
    iput-boolean v3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mIsFirstVoLTEIconShown:Z

    .line 862
    sget-object v1, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v3, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 866
    :cond_6
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 869
    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    :cond_7
    :goto_2
    return-void

    .line 850
    :cond_8
    sget-object p2, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wrong slot name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method showDualVolteIcon()Z
    .locals 7

    .line 1230
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isDualIMS()Z

    move-result p0

    const-string v0, "persist.ril.esim.slotswitch"

    const-string v1, ""

    .line 1231
    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "tsds2"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 1233
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_EMBEDDED_SIM"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1235
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string v4, "CscFeature_RIL_SupportEsim"

    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 1236
    sget-object v4, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "supportDualVolte:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ",configESimSlotSwitch:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, "ESim Features - floating:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", csc:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    const/4 v3, 0x1

    :cond_1
    return v3
.end method

.method declared-synchronized showWifiRegistrationStateQuickPanel(IZ)V
    .locals 8

    monitor-enter p0

    .line 726
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->mShowVoWIFILabel:[Z

    add-int/lit8 v1, p1, 0x1

    aget-boolean v2, v0, v1

    if-ne v2, p2, :cond_0

    .line 727
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no need to update mShowVoWIFILabel["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]  aready ["

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 728
    monitor-exit p0

    return-void

    :cond_0
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    :try_start_1
    const-string v3, "imsicon_channel_both"

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    const-string v3, "imsicon_channel_0"

    goto :goto_0

    :cond_2
    const-string v3, "imsicon_channel_1"

    :goto_0
    const/16 v4, -0x6687

    const/4 v5, 0x0

    if-eq p1, v2, :cond_3

    .line 740
    aget-boolean v0, v0, v5

    if-eqz v0, :cond_3

    .line 741
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v2, "imsicon_channel_both"

    invoke-virtual {v0, v2, v4}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 744
    :cond_3
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "show notification VoWiFi tag["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] in quick panel ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v2, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 745
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->mShowVoWIFILabel:[Z

    aput-boolean p2, v0, v1

    const/4 v0, 0x1

    if-gtz p1, :cond_4

    move p1, v5

    goto :goto_1

    :cond_4
    move p1, v0

    .line 754
    :goto_1
    new-instance v1, Landroid/app/NotificationChannel;

    const-string v2, "imsicon_channel"

    const/4 v6, 0x2

    invoke-direct {v1, v2, v3, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 756
    invoke-virtual {v1, v5}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 757
    iget-object v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    if-eqz p2, :cond_7

    .line 760
    new-instance p2, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    const-string v2, "imsicon_channel"

    invoke-direct {p2, v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v1, "drawable"

    const-string/jumbo v2, "stat_notify_wfc_warning"

    .line 761
    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/core/ImsIconManager;->getResourceIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 762
    sget-object v1, Lcom/sec/internal/ims/core/ImsIconManager;->mVowifiOperatorLabel:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {p2, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    const-wide/16 v1, 0x0

    .line 763
    invoke-virtual {p2, v1, v2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 764
    invoke-virtual {p2, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 766
    sget-object v1, Lcom/sec/internal/ims/core/ImsIconManager;->mWifiSubTextOnLockScreen:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "string"

    .line 767
    sget-object v2, Lcom/sec/internal/ims/core/ImsIconManager;->mWifiSubTextOnLockScreen:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/core/ImsIconManager;->getResourceIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 768
    iget-object v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 769
    invoke-virtual {p2, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 770
    new-instance v2, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v2}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v2, v1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 773
    :cond_5
    sget-object v1, Lcom/sec/internal/ims/core/ImsIconManager;->mVowifiOperatorLabelOngoing:[I

    aget p1, v1, p1

    if-ne p1, v0, :cond_6

    .line 774
    invoke-virtual {p2, v0}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 777
    :cond_6
    invoke-virtual {p2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 778
    iget-object p2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p2, v3, v4, p1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    goto :goto_2

    .line 780
    :cond_7
    iget-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p1, v3, v4}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 782
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public unRegisterPhoneStateListener()V
    .locals 3

    .line 1059
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string/jumbo v2, "unRegisterPhoneStateListener:"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1061
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneStateManager:Lcom/sec/internal/ims/util/ImsPhoneStateManager;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->unRegisterListener(I)V

    return-void
.end method

.method updateRcsIcon(Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;Z)V
    .locals 6

    .line 574
    iget v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string/jumbo v1, "show_rcs_regi_icon"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result v0

    .line 576
    sget-object v1, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isRcsIconVisible: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 578
    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->setShowRcsIcon(Z)V

    .line 583
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/ImsIconManager;->getRcsIconVisibility(Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;)Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    move-result-object p1

    .line 584
    iget-object p2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-static {p2}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsChn(Lcom/sec/internal/constants/Mno;)Z

    move-result p2

    const/4 v0, 0x0

    const-string v3, "com.samsung.rcs"

    if-eqz p2, :cond_1

    .line 585
    sget-object p2, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;->SHOW:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    if-ne p1, p2, :cond_7

    const-string/jumbo p2, "stat_notify_rcs"

    .line 586
    invoke-virtual {p0, v3, p2, v0}, Lcom/sec/internal/ims/core/ImsIconManager;->setIconSlot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 588
    :cond_1
    iget-boolean p2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mIsDebuggable:Z

    if-eqz p2, :cond_7

    .line 589
    iget-object p2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->refreshDualRcsReg(Landroid/content/Context;)V

    .line 590
    iget p2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    move v2, v1

    .line 591
    :goto_0
    iget-object p2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p2}, Lcom/sec/internal/constants/Mno;->isEur()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isDualRcsSettings()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 592
    sget-object p2, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;->SHOW:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    if-ne p1, p2, :cond_4

    .line 593
    invoke-virtual {p0, v2, p3}, Lcom/sec/internal/ims/core/ImsIconManager;->isRcsRegistered(IZ)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 594
    sget-object p2, Lcom/sec/internal/ims/core/ImsIconManager;->RCS_ICON_NAME_DUAL:[Ljava/lang/String;

    const/4 p3, 0x2

    aget-object p2, p2, p3

    invoke-virtual {p0, v3, p2, v0}, Lcom/sec/internal/ims/core/ImsIconManager;->setIconSlot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 596
    :cond_3
    sget-object p2, Lcom/sec/internal/ims/core/ImsIconManager;->RCS_ICON_NAME_DUAL:[Ljava/lang/String;

    iget p3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    aget-object p2, p2, p3

    invoke-virtual {p0, v3, p2, v0}, Lcom/sec/internal/ims/core/ImsIconManager;->setIconSlot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 599
    :cond_4
    invoke-virtual {p0, v2, p3}, Lcom/sec/internal/ims/core/ImsIconManager;->isRcsRegistered(IZ)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 600
    sget-object p1, Lcom/sec/internal/ims/core/ImsIconManager;->RCS_ICON_NAME_DUAL:[Ljava/lang/String;

    aget-object p1, p1, v2

    invoke-virtual {p0, v3, p1, v0}, Lcom/sec/internal/ims/core/ImsIconManager;->setIconSlot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 605
    :cond_5
    sget-object p2, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;->SHOW:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    const-string/jumbo v1, "stat_notify_rcs_service_avaliable"

    if-ne p1, p2, :cond_6

    .line 606
    invoke-virtual {p0, v3, v1, v0}, Lcom/sec/internal/ims/core/ImsIconManager;->setIconSlot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 608
    :cond_6
    iget v4, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v5

    if-eq v4, v5, :cond_7

    invoke-virtual {p0, v2, p3}, Lcom/sec/internal/ims/core/ImsIconManager;->isRcsRegistered(IZ)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 609
    invoke-virtual {p0, v3, v1, v0}, Lcom/sec/internal/ims/core/ImsIconManager;->setIconSlot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move-object p1, p2

    .line 615
    :cond_7
    :goto_2
    invoke-virtual {p0, v3, p1}, Lcom/sec/internal/ims/core/ImsIconManager;->setIconVisibility(Ljava/lang/String;Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;)V

    return-void
.end method

.method public updateRegistrationIcon(Z)V
    .locals 9

    .line 340
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getVoiceCallType(Landroid/content/Context;II)I

    move-result v0

    .line 342
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/ImsIconManager;->updateShowIconSettings(I)Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;

    move-result-object v1

    .line 344
    iget-object v3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget v4, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-interface {v3, v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;

    move-result-object v3

    .line 345
    invoke-virtual {p0, v3, p1, v0}, Lcom/sec/internal/ims/core/ImsIconManager;->updateRegistrationStatus([Lcom/sec/ims/ImsRegistration;ZI)Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;

    move-result-object v0

    .line 347
    sget-object v4, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v5, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateRegistrationIcon: VoLTE [show: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->isShowVolteIcon()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", regi: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isVolteRegistered()Z

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, "] VoWiFi [show: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->isShowVowiFiIcon()Z

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isVowifiRegistered()Z

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, "] RCS [show: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->isShowRcsIcon()Z

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isRcsRegistered()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, "] CROSS SIM [regi: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isCrossSimRegistered()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, "] (SUSPENDED: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 347
    invoke-static {v4, v5, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 354
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isCmcRegistered()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    array-length v3, v3

    if-ne v3, v5, :cond_0

    move v2, v5

    .line 355
    :cond_0
    invoke-virtual {p0, v1, v0, v2}, Lcom/sec/internal/ims/core/ImsIconManager;->updateVolteIcon(Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;Z)V

    .line 356
    invoke-virtual {p0, v1, v0, p1}, Lcom/sec/internal/ims/core/ImsIconManager;->updateRcsIcon(Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;Z)V

    .line 357
    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/core/ImsIconManager;->updateVoWifiLabel(Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;)V

    return-void
.end method

.method updateRegistrationStatus([Lcom/sec/ims/ImsRegistration;ZI)Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;
    .locals 9

    .line 422
    new-instance v0, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;-><init>()V

    .line 424
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKOROmcCode()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getServiceState()I

    move-result v1

    if-nez v1, :cond_0

    .line 426
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->setVolteRegistered(Z)V

    :cond_0
    if-nez p1, :cond_1

    return-object v0

    .line 434
    :cond_1
    array-length v1, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_a

    aget-object v5, p1, v4

    .line 437
    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/core/ImsIconManager;->isVoImsRegistered(Lcom/sec/ims/ImsRegistration;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 438
    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/core/ImsIconManager;->isVoWiFiConnected(Lcom/sec/ims/ImsRegistration;)Z

    move-result v6

    .line 439
    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/core/ImsIconManager;->isCrossSimConnected(Lcom/sec/ims/ImsRegistration;)Z

    move-result v7

    if-nez v6, :cond_2

    if-nez v7, :cond_2

    move v8, v2

    goto :goto_1

    :cond_2
    move v8, v3

    .line 441
    :goto_1
    invoke-virtual {v0, v8}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->setVolteRegistered(Z)V

    .line 442
    invoke-virtual {v0, v6}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->setVowifiRegistered(Z)V

    .line 443
    invoke-virtual {v0, v7}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->setCrossSimRegistered(Z)V

    .line 446
    :cond_3
    invoke-virtual {v5}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_4

    .line 447
    invoke-virtual {v5}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v6

    const/4 v7, 0x4

    if-eq v6, v7, :cond_4

    .line 448
    invoke-virtual {v5}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_5

    .line 449
    :cond_4
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->setCmcRegistered(Z)V

    .line 452
    :cond_5
    invoke-virtual {v5}, Lcom/sec/ims/ImsRegistration;->hasRcsService()Z

    move-result v5

    if-eqz v5, :cond_8

    if-nez p2, :cond_8

    .line 453
    iget-object v5, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-static {v5}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsChn(Lcom/sec/internal/constants/Mno;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget v5, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentServiceState:I

    if-nez v5, :cond_8

    .line 454
    :cond_6
    iget-object v5, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-static {v5}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsChn(Lcom/sec/internal/constants/Mno;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->isOtherSimInCallStatus()Z

    move-result v5

    if-nez v5, :cond_8

    .line 455
    :cond_7
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->setRcsRegistered(Z)V

    .line 460
    :cond_8
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isAllRegistered()Z

    move-result v5

    if-eqz v5, :cond_9

    goto :goto_2

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 465
    :cond_a
    :goto_2
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->getDuringEmergencyCall()Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isVowifiRegistered()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 466
    iget-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object p2, Lcom/sec/internal/constants/Mno;->APT:Lcom/sec/internal/constants/Mno;

    if-ne p1, p2, :cond_c

    .line 467
    sget-object p1, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string p2, "APT special requirement"

    invoke-static {p1, p0, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-nez p3, :cond_b

    move v3, v2

    .line 469
    :cond_b
    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->setVolteRegistered(Z)V

    xor-int/lit8 p0, v3, 0x1

    .line 470
    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->setVowifiRegistered(Z)V

    goto :goto_3

    .line 471
    :cond_c
    sget-object p2, Lcom/sec/internal/constants/Mno;->VODAFONE_AUSTRALIA:Lcom/sec/internal/constants/Mno;

    if-ne p1, p2, :cond_d

    .line 472
    sget-object p1, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string p2, "Vodafone AUS special requirement"

    invoke-static {p1, p0, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 473
    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->setVowifiRegistered(Z)V

    :cond_d
    :goto_3
    return-object v0
.end method

.method updateShowIconSettings(I)Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;
    .locals 8

    .line 362
    new-instance v0, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;-><init>()V

    const/4 v1, 0x1

    .line 363
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->setShowVolteIcon(Z)V

    .line 364
    iget v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string/jumbo v3, "show_vowifi_regi_icon"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->setShowVoWiFiIcon(Z)V

    .line 365
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->setShowRcsIcon(Z)V

    .line 367
    iget v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string/jumbo v3, "show_volte_regi_icon"

    invoke-static {v2, v3, v4}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result v2

    .line 368
    iget v3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-static {v3}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v3

    const-string v5, "ro.product.first_api_level"

    .line 369
    invoke-static {v5, v4}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/16 v6, 0x20

    if-lt v5, v6, :cond_2

    if-eqz v3, :cond_0

    .line 370
    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMnoName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "GenericIR92_US:Cellcom"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/sec/internal/constants/Mno;

    sget-object v6, Lcom/sec/internal/constants/Mno;->DPAC:Lcom/sec/internal/constants/Mno;

    aput-object v6, v5, v4

    sget-object v6, Lcom/sec/internal/constants/Mno;->GTA:Lcom/sec/internal/constants/Mno;

    aput-object v6, v5, v1

    const/4 v6, 0x2

    sget-object v7, Lcom/sec/internal/constants/Mno;->ITE:Lcom/sec/internal/constants/Mno;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    sget-object v7, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    aput-object v7, v5, v6

    invoke-virtual {v3, v5}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 371
    :cond_1
    sget-object v2, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string v5, "Volte RegistrationIcon: need to turn off"

    invoke-static {v2, v3, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    move v2, v4

    .line 374
    :cond_2
    iget v3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string v5, "remove_icon_nosvc"

    invoke-static {v3, v5, v4}, Lcom/sec/internal/ims/registry/ImsRegistry;->getInt(ILjava/lang/String;I)I

    move-result v3

    .line 376
    iget-boolean v5, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mIsDebuggable:Z

    if-nez v5, :cond_4

    if-nez v2, :cond_3

    .line 378
    sget-object v2, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v5, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string v6, "Volte/RCS RegistrationIcon: turned off."

    invoke-static {v2, v5, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 379
    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->setShowVolteIcon(Z)V

    .line 382
    :cond_3
    iget-object v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-static {v2}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsChn(Lcom/sec/internal/constants/Mno;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 383
    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->setShowRcsIcon(Z)V

    .line 387
    :cond_4
    iget v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string v5, "hide_vowifi_icon_when_cs_call"

    invoke-static {v2, v5, v4}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 388
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->isShowVowiFiIcon()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mIsSilentRedialInProgress:Z

    if-eqz v2, :cond_5

    .line 389
    sget-object v2, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v5, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string v6, "VoWIFI Special Req.: Hide vowifi icon when CSFB"

    invoke-static {v2, v5, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 390
    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->setShowVoWiFiIcon(Z)V

    .line 394
    :cond_5
    iget-object v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mOmcCode:Ljava/lang/String;

    const-string v5, "DCM"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 395
    iget-object v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget v5, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/PdnController;->getVopsIndication(I)Lcom/sec/internal/constants/ims/os/VoPsIndication;

    move-result-object v2

    sget-object v5, Lcom/sec/internal/constants/ims/os/VoPsIndication;->NOT_SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    if-ne v2, v5, :cond_6

    .line 396
    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->setShowVolteIcon(Z)V

    .line 400
    :cond_6
    iget-object v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 401
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKOROmcCode()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 402
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->checkKORVolteIcon()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->setShowVolteIcon(Z)V

    return-object v0

    :cond_7
    if-eqz p1, :cond_8

    .line 405
    sget-object p1, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string v5, "KOR requirement"

    invoke-static {p1, v2, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 406
    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->setShowVolteIcon(Z)V

    :cond_8
    if-ne v3, v1, :cond_a

    .line 411
    iget p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentServiceState:I

    if-nez p1, :cond_9

    iget p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentNetworkType:I

    .line 412
    invoke-static {p1}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result p1

    if-nez p1, :cond_a

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentNetworkType:I

    const/16 p1, 0x12

    if-eq p0, p1, :cond_a

    .line 414
    :cond_9
    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->setShowVolteIcon(Z)V

    :cond_a
    return-object v0
.end method

.method updateVoWifiLabel(Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;)V
    .locals 3

    .line 622
    iget v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string/jumbo v1, "vowifi_operator_label"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 623
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->isShowVowiFiIcon()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 624
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->fillWifiLabel()V

    .line 625
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->checkSameVoWIFILabel()Z

    move-result p1

    .line 626
    iget v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getOppositeSimSlot(I)I

    move-result v0

    if-eqz p1, :cond_2

    .line 629
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/ImsIconManager;->isVoWiFiRegistered(I)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isVowifiRegistered()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    const/4 p2, -0x1

    .line 630
    invoke-virtual {p0, p2, p1}, Lcom/sec/internal/ims/core/ImsIconManager;->showWifiRegistrationStateQuickPanel(IZ)V

    return-void

    .line 633
    :cond_2
    iget p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isVowifiRegistered()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/ImsIconManager;->showWifiRegistrationStateQuickPanel(IZ)V

    :cond_3
    return-void
.end method

.method protected updateVolteIcon(Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;Z)V
    .locals 6

    .line 515
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mUseDualVolteIcon:Z

    const/high16 v1, 0x7f070000

    const v2, 0x7f070001

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_4

    .line 516
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isVowifiRegistered()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->isShowVowiFiIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 517
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager$Icon;->VOWIFI:Lcom/sec/internal/ims/core/ImsIconManager$Icon;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/ImsIconManager;->getDualIMSIconName(Lcom/sec/internal/ims/core/ImsIconManager$Icon;)Ljava/lang/String;

    move-result-object v3

    .line 518
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v5, v3

    move-object v3, v0

    move-object v0, v5

    goto/16 :goto_3

    .line 519
    :cond_0
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isVolteRegistered()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->isShowVolteIcon()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 520
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->needDisplayVo5gIcon()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager$Icon;->VO5G:Lcom/sec/internal/ims/core/ImsIconManager$Icon;

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager$Icon;->VOLTE:Lcom/sec/internal/ims/core/ImsIconManager$Icon;

    .line 521
    :goto_1
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/ImsIconManager;->getDualIMSIconName(Lcom/sec/internal/ims/core/ImsIconManager$Icon;)Ljava/lang/String;

    move-result-object v3

    .line 522
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 523
    :cond_2
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->needShowNoCTCVoLTEIcon()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 524
    invoke-virtual {p2, v4}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->setVolteRegistered(Z)V

    .line 525
    invoke-virtual {p1, v4}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->setShowVolteIcon(Z)V

    .line 526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stat_sys_phone_no_volte_chn_hd"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    add-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 527
    :cond_3
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isCrossSimRegistered()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 528
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->getCrossSimIconName()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 530
    :cond_4
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isVolteRegistered()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->isShowVolteIcon()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 531
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->needDisplayVo5gIcon()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->getVo5gIconName()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->getVolteIconName()Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object v3, v0

    .line 532
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 533
    :cond_6
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isVowifiRegistered()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->isShowVowiFiIcon()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 534
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->getVowifiIconName()Ljava/lang/String;

    move-result-object v3

    .line 535
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 537
    :cond_7
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->needShowNoCTCVoLTEIcon()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 538
    invoke-virtual {p2, v4}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->setVolteRegistered(Z)V

    .line 539
    invoke-virtual {p1, v4}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->setShowVolteIcon(Z)V

    const-string/jumbo v0, "stat_sys_phone_no_volte_chn_ctc"

    goto :goto_3

    :cond_8
    move-object v0, v3

    :goto_3
    if-nez v3, :cond_9

    const-string v3, ""

    .line 549
    :cond_9
    iget-boolean v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mIsDebuggable:Z

    if-eqz v1, :cond_a

    if-eqz p3, :cond_a

    .line 551
    invoke-virtual {p2, v4}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->setVolteRegistered(Z)V

    const-string/jumbo v0, "stat_sys_phone_call_skt"

    .line 554
    :cond_a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_b

    .line 555
    iget-object p3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->VOLTE_ICON_SLOT:Ljava/lang/String;

    invoke-virtual {p0, p3, v0, v3}, Lcom/sec/internal/ims/core/ImsIconManager;->setIconSlot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    :cond_b
    iget-object p3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->VOLTE_ICON_SLOT:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/ImsIconManager;->getVolteIconVisibility(Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;)Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lcom/sec/internal/ims/core/ImsIconManager;->setIconVisibility(Ljava/lang/String;Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;)V

    return-void
.end method
