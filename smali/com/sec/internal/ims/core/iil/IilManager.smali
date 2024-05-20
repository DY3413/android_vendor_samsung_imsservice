.class public Lcom/sec/internal/ims/core/iil/IilManager;
.super Landroid/os/Handler;
.source "IilManager.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/iil/IIilManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/core/iil/IilManager$IilPhoneStateListener;,
        Lcom/sec/internal/ims/core/iil/IilManager$ImsSettingsObserver;
    }
.end annotation


# static fields
.field static final DMCONFIG_URI:Ljava/lang/String; = "content://com.samsung.rcs.dmconfigurationprovider/omadm/./3GPP_IMS/"

.field protected static final EVENT_IIL_CONNECTED:I = 0x65

.field private static final EVENT_IMS_READY:I = 0xc

.field private static final EVENT_IMS_SETTING_CHANGED:I = 0x5

.field private static final EVENT_IMS_SETTING_DELAYED:I = 0xb

.field private static final EVENT_IMS_SETTING_REFRESH:I = 0x6

.field private static final EVENT_MODE_CHANGE_DONE:I = 0xa

.field protected static final EVENT_NEW_IPC:I = 0x64

.field private static final EVENT_REGISTRATION_DONE:I = 0x1

.field private static final EVENT_REGISTRATION_E911_DONE:I = 0x3

.field private static final EVENT_REGISTRATION_E911_FAILED:I = 0x4

.field private static final EVENT_REGISTRATION_FAILED:I = 0x2

.field private static final EVENT_REGISTRATION_RETRY_OVER:I = 0x7

.field private static final EVENT_SIM_STATE_CHANGED:I = 0x9

.field private static final EVENT_UPDATE_SSAC_INFO:I = 0xe

.field static final FEATURE_TAG_CS:I = 0x1

.field static final FEATURE_TAG_MMTEL:I = 0x10

.field static final FEATURE_TAG_SMSIP:I = 0x2

.field static final FEATURE_TAG_VIDEO:I = 0x8

.field static final FEATURE_TAG_VOLTE:I = 0x4

.field private static final ISIM_LOADED_BOOTING:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "IilManager"

.field static final NET_TYPE_BLUETOOTH:I = 0x3

.field static final NET_TYPE_ETHERNET:I = 0x4

.field static final NET_TYPE_MAX:I = 0x5

.field static final NET_TYPE_MOBILE:I = 0x0

.field static final NET_TYPE_WIFI:I = 0x1

.field static final NET_TYPE_WIMAX:I = 0x2

.field static final PREF_REGISTRATION_DONE:I = 0x3

.field static final PREF_SETTING_CHANGED:I = 0x2

.field static final PREF_SETTING_REFRESH:I = 0x1

.field private static final REQUEST_NETWORK_MODE_CHANGE:I = 0x5


# instance fields
.field private final mContext:Landroid/content/Context;

.field mEcmp:I

.field mEcmpByNetType:[I

.field mEpdgMode:I

.field mEpdgModeByNetType:[I

.field mFeatureMask:I

.field mFeatureMaskByNetType:[I

.field mFeatureTag:I

.field private final mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

.field mImsPreference:Lcom/sec/internal/ims/core/iil/IilImsPreference;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mIpcDispatcher:Lcom/sec/internal/ims/core/iil/IpcDispatcher;

.field mLimitedMode:I

.field mLimitedModeByNetType:[I

.field private mNeedTwwan911TimerUpdate:Z

.field private mNetworkClass:I

.field private mNetworkType:I

.field mPdnType:I

.field private final mPhoneStateListener:Lcom/sec/internal/ims/core/iil/IilManager$IilPhoneStateListener;

.field private mReg:Lcom/sec/ims/ImsRegistration;

.field mSlotId:I

.field mSrvccVersion:I

.field private mSubId:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmNetworkClass(Lcom/sec/internal/ims/core/iil/IilManager;)I
    .locals 0

    iget p0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mNetworkClass:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNetworkType(Lcom/sec/internal/ims/core/iil/IilManager;)I
    .locals 0

    iget p0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mNetworkType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmReg(Lcom/sec/internal/ims/core/iil/IilManager;)Lcom/sec/ims/ImsRegistration;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mReg:Lcom/sec/ims/ImsRegistration;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmNetworkClass(Lcom/sec/internal/ims/core/iil/IilManager;I)V
    .locals 0

    iput p1, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mNetworkClass:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNetworkType(Lcom/sec/internal/ims/core/iil/IilManager;I)V
    .locals 0

    iput p1, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mNetworkType:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mdisallowReregistration(Lcom/sec/internal/ims/core/iil/IilManager;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/internal/ims/core/iil/IilManager;->disallowReregistration()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mupdateFeature(Lcom/sec/internal/ims/core/iil/IilManager;Lcom/sec/ims/ImsRegistration;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/iil/IilManager;->updateFeature(Lcom/sec/ims/ImsRegistration;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/sec/internal/interfaces/ims/IImsFramework;)V
    .locals 5

    .line 120
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    .line 99
    iput v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mNetworkType:I

    .line 100
    iput v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mNetworkClass:I

    const/4 v1, -0x1

    .line 108
    iput v1, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    const/4 v2, 0x5

    new-array v3, v2, [I

    .line 111
    iput-object v3, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mFeatureMaskByNetType:[I

    new-array v3, v2, [I

    .line 112
    iput-object v3, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mEcmpByNetType:[I

    new-array v3, v2, [I

    .line 113
    iput-object v3, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mLimitedModeByNetType:[I

    new-array v3, v2, [I

    .line 114
    iput-object v3, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mEpdgModeByNetType:[I

    const/4 v3, 0x0

    .line 117
    iput-object v3, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mReg:Lcom/sec/ims/ImsRegistration;

    const/4 v3, 0x1

    .line 118
    iput-boolean v3, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mNeedTwwan911TimerUpdate:Z

    .line 391
    new-instance v4, Lcom/sec/internal/ims/core/iil/IilManager$1;

    invoke-direct {v4, p0}, Lcom/sec/internal/ims/core/iil/IilManager$1;-><init>(Lcom/sec/internal/ims/core/iil/IilManager;)V

    iput-object v4, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 989
    iput v1, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSubId:I

    .line 990
    new-instance v1, Lcom/sec/internal/ims/core/iil/IilManager$IilPhoneStateListener;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/core/iil/IilManager$IilPhoneStateListener;-><init>(Lcom/sec/internal/ims/core/iil/IilManager;)V

    iput-object v1, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mPhoneStateListener:Lcom/sec/internal/ims/core/iil/IilManager$IilPhoneStateListener;

    const-string v1, "IilManager"

    .line 121
    invoke-static {v1, p2, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 123
    iput-object p1, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mContext:Landroid/content/Context;

    .line 124
    iput-object p3, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 126
    iput v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mFeatureMask:I

    .line 127
    iput v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mPdnType:I

    .line 128
    iput v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mFeatureTag:I

    .line 129
    iput v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mEcmp:I

    .line 130
    iput v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mLimitedMode:I

    .line 131
    iput v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mEpdgMode:I

    .line 132
    iput p2, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    .line 133
    iput v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSrvccVersion:I

    move p1, v0

    :goto_0
    if-ge p1, v2, :cond_0

    .line 136
    iget-object p2, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mFeatureMaskByNetType:[I

    aput v0, p2, p1

    .line 137
    iget-object p2, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mEcmpByNetType:[I

    aput v0, p2, p1

    .line 138
    iget-object p2, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mLimitedModeByNetType:[I

    aput v0, p2, p1

    .line 139
    iget-object p2, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mEpdgModeByNetType:[I

    aput v0, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 142
    :cond_0
    iget p1, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    invoke-static {p1}, Lcom/sec/internal/ims/core/iil/IpcDispatcherFactory;->getIpcDispatcher(I)Lcom/sec/internal/ims/core/iil/IpcDispatcher;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mIpcDispatcher:Lcom/sec/internal/ims/core/iil/IpcDispatcher;

    const/16 p2, 0x64

    .line 143
    invoke-virtual {p1, p2, p0}, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->setRegistrant(ILandroid/os/Handler;)Z

    const/16 p2, 0x65

    .line 144
    invoke-virtual {p1, p2, p0}, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->setRegistrantForIilConnected(ILandroid/os/Handler;)Z

    .line 145
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->initDispatcher()V

    .line 147
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "android.intent.action.SIM_STATE_CHANGED"

    .line 148
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    iget-object p2, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, p3, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 151
    new-instance p1, Lcom/sec/internal/ims/core/iil/IilManager$ImsSettingsObserver;

    invoke-direct {p1, p0, p0}, Lcom/sec/internal/ims/core/iil/IilManager$ImsSettingsObserver;-><init>(Lcom/sec/internal/ims/core/iil/IilManager;Landroid/os/Handler;)V

    .line 153
    iget-object p2, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    sget-object p3, Lcom/sec/internal/constants/ims/settings/GlobalSettingsConstants;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p2, p3, v0, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 154
    iget-object p0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "content://com.samsung.rcs.dmconfigurationprovider/omadm/./3GPP_IMS/"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p0, p2, v3, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private UpdateImsPreference()V
    .locals 10

    const-string v0, "mmtel"

    .line 499
    iget-object v1, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mImsPreference:Lcom/sec/internal/ims/core/iil/IilImsPreference;

    if-nez v1, :cond_0

    .line 500
    new-instance v1, Lcom/sec/internal/ims/core/iil/IilImsPreference;

    invoke-direct {v1}, Lcom/sec/internal/ims/core/iil/IilImsPreference;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mImsPreference:Lcom/sec/internal/ims/core/iil/IilImsPreference;

    .line 504
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/iil/IilManager;->getSmsFormat()Ljava/lang/String;

    move-result-object v1

    .line 505
    iget v2, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UpdateImsPreference: SmsFormat="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "IilManager"

    invoke-static {v4, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 506
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v5, 0x1

    if-nez v2, :cond_2

    .line 508
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mImsPreference:Lcom/sec/internal/ims/core/iil/IilImsPreference;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-byte v6, v6

    invoke-virtual {v2, v6}, Lcom/sec/internal/ims/core/iil/IilImsPreference;->setSmsFormat(B)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v2, "3GPP"

    .line 510
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 511
    iget-object v1, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mImsPreference:Lcom/sec/internal/ims/core/iil/IilImsPreference;

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/core/iil/IilImsPreference;->setSmsFormat(B)V

    goto :goto_0

    :cond_1
    const-string v2, "3GPP2"

    .line 512
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 513
    iget-object v1, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mImsPreference:Lcom/sec/internal/ims/core/iil/IilImsPreference;

    invoke-virtual {v1, v5}, Lcom/sec/internal/ims/core/iil/IilImsPreference;->setSmsFormat(B)V

    .line 520
    :cond_2
    :goto_0
    iget v1, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    invoke-static {v1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 521
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/iil/IilManager;->getSmsOverIp()Z

    move-result v2

    const/4 v6, 0x3

    if-nez v2, :cond_4

    new-array v2, v6, [Lcom/sec/internal/constants/Mno;

    sget-object v7, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    aput-object v7, v2, v3

    sget-object v7, Lcom/sec/internal/constants/Mno;->CTCMO:Lcom/sec/internal/constants/Mno;

    aput-object v7, v2, v5

    const/4 v7, 0x2

    sget-object v8, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    aput-object v8, v2, v7

    invoke-virtual {v1, v2}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    move v1, v3

    goto :goto_2

    :cond_4
    :goto_1
    move v1, v5

    .line 522
    :goto_2
    iget-object v2, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mImsPreference:Lcom/sec/internal/ims/core/iil/IilImsPreference;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/core/iil/IilImsPreference;->setSmsOverIms(B)V

    .line 525
    iget-object v1, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    iget v2, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    const-string/jumbo v7, "sms_write_uicc"

    const-string v8, "0"

    invoke-interface {v1, v2, v7, v8}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 527
    iget-object v2, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mImsPreference:Lcom/sec/internal/ims/core/iil/IilImsPreference;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/core/iil/IilImsPreference;->setSmsWriteUicc(B)V

    .line 531
    iget-object v1, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    iget v2, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    const-string/jumbo v7, "voice_domain_pref_eutran"

    invoke-interface {v1, v2, v7, v6}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getInt(ILjava/lang/String;I)I

    move-result v1

    .line 532
    iget-object v2, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    iget v6, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    const-string/jumbo v7, "voice_domain_pref_utran"

    invoke-interface {v2, v6, v7, v5}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getInt(ILjava/lang/String;I)I

    move-result v2

    .line 533
    iget-object v6, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mImsPreference:Lcom/sec/internal/ims/core/iil/IilImsPreference;

    int-to-byte v1, v1

    invoke-virtual {v6, v1}, Lcom/sec/internal/ims/core/iil/IilImsPreference;->setEutranDomain(B)V

    .line 534
    iget-object v1, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mImsPreference:Lcom/sec/internal/ims/core/iil/IilImsPreference;

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/iil/IilImsPreference;->setUtranDomain(B)V

    .line 537
    iget-object v1, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    iget v2, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    const-string/jumbo v6, "ss_domain_setting"

    const-string v7, "PS"

    invoke-interface {v1, v2, v6, v7}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 538
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/core/iil/IilManager;->convertSsDomainToByte(Ljava/lang/String;)B

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    .line 540
    iget-object v6, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mImsPreference:Lcom/sec/internal/ims/core/iil/IilImsPreference;

    invoke-virtual {v6, v1}, Lcom/sec/internal/ims/core/iil/IilImsPreference;->setSsDomain(B)V

    .line 544
    :cond_5
    iget-object v1, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    iget v6, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    const-string/jumbo v8, "ussd_domain_setting"

    const-string v9, "CS"

    invoke-interface {v1, v6, v8, v9}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 545
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/core/iil/IilManager;->convertUssdDomainToByte(Ljava/lang/String;)B

    move-result v1

    if-eq v1, v2, :cond_6

    .line 547
    iget-object v2, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mImsPreference:Lcom/sec/internal/ims/core/iil/IilImsPreference;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/core/iil/IilImsPreference;->setUssdDomain(B)V

    .line 551
    :cond_6
    iget-object v1, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    iget v2, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    const-string v6, "emergency_domain_setting"

    invoke-interface {v1, v2, v6, v7}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "IMS"

    .line 552
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual {v7, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_4

    :cond_7
    const-string v2, "CSFB"

    .line 554
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v9, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_3

    .line 557
    :cond_8
    iget v2, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid emergencyDomainPref="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v2, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_5

    .line 555
    :cond_9
    :goto_3
    iget-object v1, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mImsPreference:Lcom/sec/internal/ims/core/iil/IilImsPreference;

    invoke-virtual {v1, v5}, Lcom/sec/internal/ims/core/iil/IilImsPreference;->setEccPreference(B)V

    goto :goto_5

    .line 553
    :cond_a
    :goto_4
    iget-object v1, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mImsPreference:Lcom/sec/internal/ims/core/iil/IilImsPreference;

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/core/iil/IilImsPreference;->setEccPreference(B)V

    .line 561
    :goto_5
    :try_start_1
    iget-object v1, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    const/16 v2, 0xd

    iget v3, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    invoke-interface {v1, v0, v2, v3}, Lcom/sec/internal/interfaces/ims/IImsFramework;->isServiceAvailable(Ljava/lang/String;II)Z

    move-result v1

    .line 562
    iget-object v2, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    const/16 v3, 0x12

    iget v6, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    invoke-interface {v2, v0, v3, v6}, Lcom/sec/internal/interfaces/ims/IImsFramework;->isServiceAvailable(Ljava/lang/String;II)Z

    move-result v0

    .line 568
    iget-object v2, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mImsPreference:Lcom/sec/internal/ims/core/iil/IilImsPreference;

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/core/iil/IilManager;->convertSupportTypeToByte(ZZ)B

    move-result v0

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/core/iil/IilImsPreference;->setImsSupportType(B)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_1
    move-exception v0

    .line 570
    iget v1, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UpdateImsPreference: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 574
    :goto_6
    iget-object v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    iget v1, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    const/16 v2, 0xa

    const-string/jumbo v3, "srvcc_version"

    invoke-interface {v0, v1, v3, v2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getInt(ILjava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSrvccVersion:I

    .line 575
    iget-object v1, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mImsPreference:Lcom/sec/internal/ims/core/iil/IilImsPreference;

    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/core/iil/IilImsPreference;->setSrvccVersion(B)V

    .line 578
    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/core/iil/IilManager;->getRoamingSupportValueforVolte(Z)Z

    move-result v0

    .line 579
    iget-object v1, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mImsPreference:Lcom/sec/internal/ims/core/iil/IilImsPreference;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/core/iil/IilImsPreference;->setSupportVolteRoaming(B)V

    .line 581
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mNeedTwwan911TimerUpdate:Z

    if-eqz v0, :cond_b

    .line 582
    invoke-direct {p0}, Lcom/sec/internal/ims/core/iil/IilManager;->updateTwwan911Timer()V

    :cond_b
    return-void
.end method

.method private UpdateImsServiceState()V
    .locals 2

    .line 494
    invoke-direct {p0}, Lcom/sec/internal/ims/core/iil/IilManager;->UpdateImsPreference()V

    .line 495
    iget-object v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mIpcDispatcher:Lcom/sec/internal/ims/core/iil/IpcDispatcher;

    iget-object p0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mImsPreference:Lcom/sec/internal/ims/core/iil/IilImsPreference;

    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/sec/internal/ims/core/iil/IilIpcMessage;->encodeImsPreferenceNoti(Lcom/sec/internal/ims/core/iil/IilImsPreference;I)Lcom/sec/internal/ims/core/iil/IilIpcMessage;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->sendMessage(Lcom/sec/internal/ims/core/iil/IpcMessage;)Z

    return-void
.end method

.method private convertSsDomainToByte(Ljava/lang/String;)B
    .locals 2

    const-string v0, "PS"

    .line 595
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "PS_ALWAYS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const-string v0, "CS"

    .line 597
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "CS_ALWAYS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "PSCS"

    .line 599
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "PS_ONLY_VOLTEREGIED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "PS_ONLY_PSREGIED"

    .line 601
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p0, 0x3

    return p0

    .line 604
    :cond_3
    iget p0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from GENERAL.FIELD for SS_DOMAIN_SETTING"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "IilManager"

    invoke-static {v0, p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_4
    :goto_0
    const/4 p0, 0x2

    return p0

    :cond_5
    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_6
    :goto_2
    const/4 p0, 0x0

    return p0
.end method

.method private convertSupportTypeToByte(ZZ)B
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    if-eqz p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    if-eqz p2, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private convertUssdDomainToByte(Ljava/lang/String;)B
    .locals 2

    const-string v0, "PS"

    .line 610
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "CS"

    .line 612
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const-string v0, "PSCS"

    .line 614
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x2

    return p0

    .line 617
    :cond_2
    iget p0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid UssdDomain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "IilManager"

    invoke-static {v0, p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method private disallowReregistration()Z
    .locals 0

    .line 868
    iget-object p0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mReg:Lcom/sec/ims/ImsRegistration;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getDisallowReregi()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static featureMaskToString(I)Ljava/lang/String;
    .locals 4

    and-int/lit8 v0, p0, 0x1

    const/4 v1, 0x1

    const-string v2, ""

    if-ne v0, v1, :cond_0

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "VOLTE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    and-int/lit8 v0, p0, 0x2

    const/4 v1, 0x2

    const-string v3, ", "

    if-ne v0, v1, :cond_2

    .line 475
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 476
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "SMSIP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    and-int/lit8 v0, p0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 479
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 480
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "RCS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_4
    and-int/lit8 v0, p0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_6

    .line 483
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 484
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "PSVT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_6
    const/16 v0, 0x20

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_8

    .line 487
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_7

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 488
    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "CDPN"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_8
    return-object v2
.end method

.method public static featureTagToInt(Ljava/lang/String;)I
    .locals 2

    .line 445
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "cs"

    .line 449
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    const-string/jumbo v0, "smsip"

    .line 452
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_2

    or-int/lit8 v1, v1, 0x2

    :cond_2
    const-string/jumbo v0, "volte"

    .line 455
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_3

    or-int/lit8 v1, v1, 0x4

    :cond_3
    const-string/jumbo v0, "video"

    .line 458
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_4

    or-int/lit8 v1, v1, 0x8

    :cond_4
    const-string v0, "mmtel"

    .line 461
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_5

    or-int/lit8 v1, v1, 0x10

    :cond_5
    return v1
.end method

.method private getTelephonyManager(I)Landroid/telephony/TelephonyManager;
    .locals 1

    .line 980
    iget-object p0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mContext:Landroid/content/Context;

    const-string v0, "phone"

    .line 981
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-ltz p1, :cond_0

    .line 984
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private handleNewIpc(Lcom/sec/internal/ims/core/iil/IpcMessage;)V
    .locals 2

    .line 173
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/iil/IpcMessage;->getMainCmd()I

    move-result v0

    const/16 v1, 0x70

    if-ne v0, v1, :cond_7

    .line 174
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/iil/IpcMessage;->getSubCmd()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 175
    check-cast p1, Lcom/sec/internal/ims/core/iil/IilIpcMessage;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/iil/IilManager;->handleSetDeregistration(Lcom/sec/internal/ims/core/iil/IilIpcMessage;)V

    goto :goto_0

    .line 176
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/iil/IpcMessage;->getSubCmd()I

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    .line 177
    check-cast p1, Lcom/sec/internal/ims/core/iil/IilIpcMessage;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/iil/IilManager;->handleSSACInfo(Lcom/sec/internal/ims/core/iil/IilIpcMessage;)V

    goto :goto_0

    .line 178
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/iil/IpcMessage;->getSubCmd()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_2

    .line 179
    check-cast p1, Lcom/sec/internal/ims/core/iil/IilIpcMessage;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/iil/IilManager;->handleImsSupportStateChanged(Lcom/sec/internal/ims/core/iil/IilIpcMessage;)V

    goto :goto_0

    .line 180
    :cond_2
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/iil/IpcMessage;->getSubCmd()I

    move-result v0

    const/16 v1, 0x11

    if-ne v0, v1, :cond_3

    .line 181
    check-cast p1, Lcom/sec/internal/ims/core/iil/IilIpcMessage;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/iil/IilManager;->handleIsimLoaded(Lcom/sec/internal/ims/core/iil/IilIpcMessage;)V

    goto :goto_0

    .line 182
    :cond_3
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/iil/IpcMessage;->getSubCmd()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_4

    .line 183
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/iil/IpcMessage;->getCmdType()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_7

    .line 184
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/iil/IilManager;->handleGetImsPreference()V

    goto :goto_0

    .line 186
    :cond_4
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/iil/IpcMessage;->getSubCmd()I

    move-result v0

    const/16 v1, 0x15

    if-ne v0, v1, :cond_5

    .line 187
    check-cast p1, Lcom/sec/internal/ims/core/iil/IilIpcMessage;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/iil/IilManager;->handleSetPreferredNetworkType(Lcom/sec/internal/ims/core/iil/IilIpcMessage;)V

    goto :goto_0

    .line 188
    :cond_5
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/iil/IpcMessage;->getSubCmd()I

    move-result v0

    const/16 v1, 0x16

    if-ne v0, v1, :cond_6

    .line 189
    check-cast p1, Lcom/sec/internal/ims/core/iil/IilIpcMessage;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/iil/IilManager;->handleSipSuspend(Lcom/sec/internal/ims/core/iil/IilIpcMessage;)V

    goto :goto_0

    .line 190
    :cond_6
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/iil/IpcMessage;->getSubCmd()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_7

    .line 191
    check-cast p1, Lcom/sec/internal/ims/core/iil/IilIpcMessage;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/iil/IilManager;->handleEmcAttachAuth(Lcom/sec/internal/ims/core/iil/IilIpcMessage;)V

    :cond_7
    :goto_0
    return-void
.end method

.method private isAirplaneModeOn()Z
    .locals 3

    const/4 v0, 0x0

    .line 645
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "airplane_mode_on"

    invoke-static {p0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0

    :catch_0
    move-exception p0

    .line 648
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAirplaneModeOn read fail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "IilManager"

    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private isRadioPowerON()Z
    .locals 1

    .line 639
    iget v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSubId:I

    .line 640
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/iil/IilManager;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getRadioPowerState()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isServiceAvailable()Z
    .locals 6

    .line 872
    iget v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Lcom/sec/internal/constants/Mno;

    .line 873
    sget-object v3, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v2

    const/16 v3, 0x14

    const/16 v5, 0xd

    if-nez v2, :cond_3

    invoke-direct {p0}, Lcom/sec/internal/ims/core/iil/IilManager;->disallowReregistration()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 879
    :cond_0
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 880
    iget p0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mNetworkType:I

    if-eq p0, v5, :cond_2

    if-ne p0, v3, :cond_1

    goto :goto_0

    :cond_1
    move v1, v4

    :cond_2
    :goto_0
    return v1

    .line 875
    :cond_3
    :goto_1
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isSoftphoneEnabled()Z

    move-result v0

    if-nez v0, :cond_5

    iget p0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mNetworkType:I

    if-eq p0, v5, :cond_5

    if-eq p0, v3, :cond_5

    const/16 v0, 0x12

    if-ne p0, v0, :cond_4

    goto :goto_2

    :cond_4
    move v1, v4

    :cond_5
    :goto_2
    return v1
.end method

.method private needSkipDeregister(I)Z
    .locals 3

    .line 285
    iget v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 286
    iget-object p0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mReg:Lcom/sec/ims/ImsRegistration;

    const/4 v1, 0x1

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/sec/ims/ImsRegistration;->getEpdgStatus()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 292
    :cond_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getConfigDualIMS()Ljava/lang/String;

    move-result-object p0

    const-string v2, "SINGLE"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v2, 0x0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne v0, p0, :cond_1

    return v2

    :cond_1
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/16 p0, 0x17

    if-lt p1, p0, :cond_2

    goto :goto_0

    :pswitch_1
    return v1

    :cond_2
    move v1, v2

    :cond_3
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onEmergencyRegistrationDone(I)V
    .locals 14

    .line 964
    iget v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    const-string v1, "IilManager"

    const-string v2, "onRegistrationDone (Emergency)"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 965
    iget-object p0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mIpcDispatcher:Lcom/sec/internal/ims/core/iil/IpcDispatcher;

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move v6, p1

    invoke-static/range {v0 .. v13}, Lcom/sec/internal/ims/core/iil/IilIpcMessage;->encodeImsRegisgtrationInfo(IZZZZZIIIIIILjava/lang/String;I)Lcom/sec/internal/ims/core/iil/IilIpcMessage;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->sendMessage(Lcom/sec/internal/ims/core/iil/IpcMessage;)Z

    return-void
.end method

.method private onRegistrationDone(Lcom/sec/internal/ims/core/iil/Registration;)V
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x1

    .line 889
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 890
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/iil/Registration;->getFeatureMask()I

    move-result v2

    iput v2, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mFeatureMask:I

    .line 891
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/iil/Registration;->getNetworkType()I

    move-result v2

    iput v2, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mPdnType:I

    .line 892
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/iil/Registration;->getEcmpMode()I

    move-result v2

    iput v2, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mEcmp:I

    .line 893
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/iil/Registration;->getLimitedMode()I

    move-result v2

    iput v2, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mLimitedMode:I

    .line 894
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/iil/Registration;->getEpdgMode()I

    move-result v2

    iput v2, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mEpdgMode:I

    .line 895
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/iil/Registration;->getFeatureTags()Ljava/lang/String;

    move-result-object v2

    .line 896
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/iil/Registration;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    .line 897
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/iil/Registration;->getImpu()Ljava/lang/String;

    move-result-object v16

    .line 898
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/iil/Registration;->getRegiRat()I

    move-result v17

    .line 900
    invoke-static {v2}, Lcom/sec/internal/ims/core/iil/IilManager;->featureTagToInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mFeatureTag:I

    .line 903
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    const/16 v4, 0x646

    move v14, v4

    goto :goto_0

    :cond_0
    move v14, v5

    .line 907
    :goto_0
    iget v4, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onRegistrationDone - FeatureMask: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mFeatureMask:I

    .line 908
    invoke-static {v7}, Lcom/sec/internal/ims/core/iil/IilManager;->featureMaskToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mFeatureMask:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "), PDN type: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mPdnType:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", FeatureTag: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mFeatureTag:I

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "), Ecmp: "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mEcmp:I

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", LimitedMode: "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mLimitedMode:I

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", EpdgMode: "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mEpdgMode:I

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", errorMessage: "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IilManager"

    .line 907
    invoke-static {v3, v4, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v2, 0x2

    .line 912
    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "Removed EVENT_REGISTRATION_FAILED"

    .line 913
    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 917
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/core/iil/IilManager;->saveRegistrationInfo()V

    .line 920
    iget-object v3, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mIpcDispatcher:Lcom/sec/internal/ims/core/iil/IpcDispatcher;

    .line 921
    iget v4, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mLimitedMode:I

    if-nez v4, :cond_2

    move v4, v1

    goto :goto_1

    :cond_2
    move v4, v2

    .line 923
    :goto_1
    iget v2, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mFeatureMask:I

    and-int/lit8 v6, v2, 0x1

    if-lez v6, :cond_3

    move v6, v1

    goto :goto_2

    :cond_3
    move v6, v5

    :goto_2
    and-int/lit8 v7, v2, 0x2

    if-lez v7, :cond_4

    move v7, v1

    goto :goto_3

    :cond_4
    move v7, v5

    :goto_3
    and-int/lit8 v8, v2, 0x4

    if-lez v8, :cond_5

    move v8, v1

    goto :goto_4

    :cond_5
    move v8, v5

    :goto_4
    and-int/lit8 v9, v2, 0x8

    if-lez v9, :cond_6

    move v9, v1

    goto :goto_5

    :cond_6
    move v9, v5

    :goto_5
    and-int/lit8 v2, v2, 0x20

    if-lez v2, :cond_7

    move v2, v1

    goto :goto_6

    :cond_7
    move v2, v5

    :goto_6
    iget v10, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mPdnType:I

    iget v11, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mFeatureTag:I

    iget v12, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mEcmp:I

    iget v13, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mEpdgMode:I

    const/4 v15, 0x0

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v2

    .line 920
    invoke-static/range {v4 .. v17}, Lcom/sec/internal/ims/core/iil/IilIpcMessage;->encodeImsRegisgtrationInfo(IZZZZZIIIIIILjava/lang/String;I)Lcom/sec/internal/ims/core/iil/IilIpcMessage;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->sendMessage(Lcom/sec/internal/ims/core/iil/IpcMessage;)Z

    move-result v2

    if-nez v2, :cond_8

    move-object/from16 v2, p1

    .line 931
    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 935
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/core/iil/IilManager;->UpdateImsPreference()V

    .line 936
    iget-object v1, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mIpcDispatcher:Lcom/sec/internal/ims/core/iil/IpcDispatcher;

    iget-object v0, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mImsPreference:Lcom/sec/internal/ims/core/iil/IilImsPreference;

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/iil/IilIpcMessage;->encodeImsPreferenceNoti(Lcom/sec/internal/ims/core/iil/IilImsPreference;I)Lcom/sec/internal/ims/core/iil/IilIpcMessage;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->sendMessage(Lcom/sec/internal/ims/core/iil/IpcMessage;)Z

    return-void
.end method

.method private onRegistrationFailed(Lcom/sec/internal/ims/core/iil/Registration;)V
    .locals 16

    move-object/from16 v0, p0

    .line 940
    iget v1, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    invoke-static {v1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 941
    sget-object v2, Lcom/sec/internal/constants/Mno;->EASTLINK:Lcom/sec/internal/constants/Mno;

    const-string v3, "IilManager"

    if-ne v1, v2, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/core/iil/IilManager;->isAirplaneModeOn()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/core/iil/IilManager;->isRadioPowerON()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    move-object/from16 v2, p1

    .line 942
    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const-string v0, "Airplane Mode on but RADIO POWER is still on, delay ims dereg notify by 1 sec"

    .line 943
    invoke-static {v3, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    move-object/from16 v2, p1

    const/4 v1, 0x0

    .line 947
    iput v1, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mFeatureMask:I

    .line 948
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/iil/Registration;->getNetworkType()I

    move-result v4

    iput v4, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mPdnType:I

    .line 949
    iput v1, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mFeatureTag:I

    .line 950
    iput v1, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mEcmp:I

    .line 951
    iput v1, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mLimitedMode:I

    .line 953
    iget v1, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    const-string v4, "onRegistrationFailed"

    invoke-static {v3, v1, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 955
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/core/iil/IilManager;->saveRegistrationInfo()V

    .line 956
    iget-object v1, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mIpcDispatcher:Lcom/sec/internal/ims/core/iil/IpcDispatcher;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v0, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mPdnType:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 959
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/iil/Registration;->getDeregiReasonCode()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/iil/Registration;->getSipError()I

    move-result v13

    const/4 v14, 0x0

    .line 960
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/iil/Registration;->getRegiRat()I

    move-result v15

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v0

    .line 956
    invoke-static/range {v2 .. v15}, Lcom/sec/internal/ims/core/iil/IilIpcMessage;->encodeImsRegisgtrationInfo(IZZZZZIIIIIILjava/lang/String;I)Lcom/sec/internal/ims/core/iil/IilIpcMessage;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->sendMessage(Lcom/sec/internal/ims/core/iil/IpcMessage;)Z

    return-void
.end method

.method private registerPhoneStateListener()V
    .locals 2

    .line 1043
    iget v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSubId:I

    .line 1044
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/iil/IilManager;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mPhoneStateListener:Lcom/sec/internal/ims/core/iil/IilManager$IilPhoneStateListener;

    const/16 v1, 0x41

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method private saveRegistrationInfo()V
    .locals 4

    .line 410
    iget v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mPdnType:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_4

    const/4 v2, 0x6

    if-eq v0, v2, :cond_2

    const/4 v2, 0x7

    if-eq v0, v2, :cond_1

    const/16 v2, 0x9

    if-eq v0, v2, :cond_0

    const/16 v2, 0xb

    if-eq v0, v2, :cond_3

    .line 428
    iget v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    const-string v2, "IilManager"

    const-string v3, "saveRegistrationInfo : invalid network type"

    invoke-static {v2, v0, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :cond_4
    :goto_0
    if-eq v2, v1, :cond_5

    .line 434
    iget-object v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mFeatureMaskByNetType:[I

    iget v1, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mFeatureMask:I

    aput v1, v0, v2

    .line 435
    iget-object v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mEcmpByNetType:[I

    iget v1, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mEcmp:I

    aput v1, v0, v2

    .line 436
    iget-object v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mLimitedModeByNetType:[I

    iget v1, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mLimitedMode:I

    aput v1, v0, v2

    .line 437
    iget-object v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mEpdgModeByNetType:[I

    iget p0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mEpdgMode:I

    aput p0, v0, v2

    :cond_5
    return-void
.end method

.method private unRegisterPhoneStateListener()V
    .locals 2

    .line 1050
    iget-object v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mPhoneStateListener:Lcom/sec/internal/ims/core/iil/IilManager$IilPhoneStateListener;

    if-nez v0, :cond_0

    return-void

    .line 1053
    :cond_0
    iget v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSubId:I

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/iil/IilManager;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mPhoneStateListener:Lcom/sec/internal/ims/core/iil/IilManager$IilPhoneStateListener;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method private updateFeature(Lcom/sec/ims/ImsRegistration;)V
    .locals 12

    if-eqz p1, :cond_a

    .line 784
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    .line 785
    iget v1, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    invoke-static {v1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Lcom/sec/internal/constants/Mno;

    .line 786
    sget-object v3, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    sget-object v3, Lcom/sec/internal/constants/Mno;->CU:Lcom/sec/internal/constants/Mno;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    invoke-virtual {v1, v2}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v2

    const-string v3, "IilManager"

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->hasVolteService()Z

    move-result v2

    if-nez v2, :cond_1

    .line 787
    iget p0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateFeature: this is not Volte registration "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getServices()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p0, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 791
    :cond_1
    iget v2, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateFeature: service="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getServices()Ljava/util/Set;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "mNetworkType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mNetworkType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v2, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const-string v2, "mmtel"

    .line 794
    invoke-virtual {p1, v2}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/sec/internal/ims/core/iil/IilManager;->isServiceAvailable()Z

    move-result v2

    if-eqz v2, :cond_2

    move v4, v5

    :cond_2
    const-string v2, "mmtel-video"

    .line 798
    invoke-virtual {p1, v2}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/sec/internal/ims/core/iil/IilManager;->isServiceAvailable()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    or-int/lit8 v4, v4, 0x8

    :cond_4
    const-string/jumbo v1, "smsip"

    .line 802
    invoke-virtual {p1, v1}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 803
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ORANGE_FR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 804
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ORANGE_PL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_0

    .line 806
    :cond_5
    invoke-direct {p0}, Lcom/sec/internal/ims/core/iil/IilManager;->disallowReregistration()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 807
    invoke-direct {p0}, Lcom/sec/internal/ims/core/iil/IilManager;->isServiceAvailable()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    :goto_0
    or-int/lit8 v4, v4, 0x2

    :cond_7
    const-string v1, "cdpn"

    .line 815
    invoke-virtual {p1, v1}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    or-int/lit8 v4, v4, 0x20

    .line 819
    :cond_8
    new-instance v1, Lcom/sec/internal/ims/core/iil/Registration;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getNetworkType()I

    move-result v7

    .line 820
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getEcmpStatus()I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getEpdgStatus()Z

    move-result v10

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getRegiRat()I

    move-result v11

    move-object v5, v1

    move v6, v4

    invoke-direct/range {v5 .. v11}, Lcom/sec/internal/ims/core/iil/Registration;-><init>(IIIIII)V

    if-eqz v4, :cond_9

    .line 823
    invoke-direct {p0, p1, v1, v4}, Lcom/sec/internal/ims/core/iil/IilManager;->updateFeatureWithMmtel(Lcom/sec/ims/ImsRegistration;Lcom/sec/internal/ims/core/iil/Registration;I)V

    goto :goto_1

    .line 825
    :cond_9
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/core/iil/IilManager;->updateFeatureWithoutMmtel(Lcom/sec/internal/ims/core/iil/Registration;Lcom/sec/ims/settings/ImsProfile;)V

    :cond_a
    :goto_1
    return-void
.end method

.method private updateFeatureWithMmtel(Lcom/sec/ims/ImsRegistration;Lcom/sec/internal/ims/core/iil/Registration;I)V
    .locals 4

    .line 831
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p2, 0x3

    .line 832
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getNetworkType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 834
    :cond_0
    iget v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    invoke-static {v0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getImsiFromPhoneId(I)Ljava/lang/String;

    move-result-object v0

    .line 835
    iget v1, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    invoke-static {v1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    const/4 v2, 0x0

    .line 837
    sget-object v3, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v1, v3, :cond_1

    const-string v1, "persist.ims.gcfmode"

    const-string v3, "0"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 838
    invoke-virtual {p1, v0}, Lcom/sec/ims/ImsRegistration;->isImsiBased(Ljava/lang/String;)Z

    move-result v2

    .line 840
    :cond_1
    invoke-virtual {p2, v2}, Lcom/sec/internal/ims/core/iil/Registration;->setLimitedMode(I)V

    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_2

    const/16 v0, 0x8

    and-int/2addr p3, v0

    if-ne p3, v0, :cond_2

    const-string p3, "cs"

    .line 844
    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/core/iil/Registration;->setFeatureTags(Ljava/lang/String;)V

    .line 847
    :cond_2
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getRegisteredImpu()Lcom/sec/ims/util/ImsUri;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 849
    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 850
    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/core/iil/Registration;->setImpu(Ljava/lang/String;)V

    :cond_3
    const/4 p1, 0x1

    .line 852
    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method private updateFeatureWithoutMmtel(Lcom/sec/internal/ims/core/iil/Registration;Lcom/sec/ims/settings/ImsProfile;)V
    .locals 3

    .line 857
    iget v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    const-string v1, "IilManager"

    const-string v2, "onRegistered: Registration without MMTEL service"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 858
    invoke-virtual {p2}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 859
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/iil/IilManager;->onEmergencyRegistrationFailed()V

    goto :goto_0

    :cond_0
    const/16 p2, 0xc8

    .line 861
    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/core/iil/Registration;->setSipError(I)V

    const/4 p2, 0x0

    .line 862
    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/core/iil/Registration;->setDeregiReasonCode(I)V

    const/4 p2, 0x2

    .line 863
    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method private updateTwwan911Timer()V
    .locals 9

    const-string v0, "IilManager"

    const/16 v1, 0x28

    .line 689
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v2, "content://com.samsung.rcs.dmconfigurationprovider/omadm/./3GPP_IMS/TWWAN_911_FAIL_TIMER"

    iget v4, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    .line 690
    invoke-static {v2, v4}, Lcom/sec/internal/helper/UriUtil;->buildUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 689
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    .line 691
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "VALUE"

    .line 692
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_0

    .line 694
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 695
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Read Twwan911 timer from index("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "): "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const/4 v3, 0x1

    .line 697
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 698
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Read Twwan911 timer from default index(1): "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    .line 689
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_3
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v3

    :cond_1
    move v4, v1

    :goto_1
    if-eqz v2, :cond_2

    .line 701
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 703
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Twwan911 timer read fail: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v1

    :cond_2
    :goto_2
    if-gez v4, :cond_3

    .line 707
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Use default Twwan911 timer because database has wrong value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    move v1, v4

    .line 712
    :goto_3
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ril.twwan911Timer"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Twwan911 timer update complete: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 715
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mNeedTwwan911TimerUpdate:Z

    return-void
.end method


# virtual methods
.method public getRoamingSupportValueforVolte(Z)Z
    .locals 2

    .line 587
    iget-object v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    iget p0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    sget-object v1, Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;->VOLTE:Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;

    invoke-interface {v0, p0, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getImsProfile(ILcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, "mmtel"

    .line 588
    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 591
    :cond_0
    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->isAllowedOnRoaming()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    return p1
.end method

.method public getSmsFormat()Ljava/lang/String;
    .locals 8

    const-string v0, "3GPP"

    .line 671
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v1, "content://com.samsung.rcs.dmconfigurationprovider/omadm/./3GPP_IMS/SMS_FORMAT"

    iget v3, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    .line 672
    invoke-static {v1, v3}, Lcom/sec/internal/helper/UriUtil;->buildUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 671
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    .line 674
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 675
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 679
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catchall_0
    move-exception v2

    .line 671
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2

    :cond_0
    if-eqz v1, :cond_1

    .line 679
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 680
    iget p0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSmsFormat: Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IilManager"

    invoke-static {v2, p0, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    :cond_1
    :goto_1
    return-object v0
.end method

.method public getSmsOverIp()Z
    .locals 7

    .line 654
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v0, "content://com.samsung.rcs.dmconfigurationprovider/omadm/./3GPP_IMS/sms_over_ip_network_indication"

    iget v2, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    .line 655
    invoke-static {v0, v2}, Lcom/sec/internal/helper/UriUtil;->buildUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 654
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    .line 657
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "1"

    const/4 v2, 0x1

    .line 658
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 661
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return v1

    :catchall_0
    move-exception v1

    .line 654
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1

    :cond_0
    if-eqz v0, :cond_1

    .line 661
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 662
    iget p0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSmsOverIp: Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IilManager"

    invoke-static {v1, p0, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    :cond_1
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public getSrvccVersion()I
    .locals 0

    .line 635
    iget p0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSrvccVersion:I

    return p0
.end method

.method public handleEmcAttachAuth(Lcom/sec/internal/ims/core/iil/IilIpcMessage;)V
    .locals 3

    .line 346
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/iil/IpcMessage;->getBody()[B

    move-result-object p1

    const/4 v0, 0x0

    .line 347
    aget-byte p1, p1, v0

    .line 348
    iget v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleEmcAttachAuth status= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IilManager"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 349
    iget-object v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    iget p0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    invoke-interface {v0, p0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->updateEmcAttachAuth(II)V

    return-void
.end method

.method public handleGetImsPreference()V
    .locals 3

    .line 229
    iget v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    const-string v1, "IilManager"

    const-string v2, "handleGetImsPreference"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 230
    invoke-direct {p0}, Lcom/sec/internal/ims/core/iil/IilManager;->UpdateImsPreference()V

    .line 231
    iget-object v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mIpcDispatcher:Lcom/sec/internal/ims/core/iil/IpcDispatcher;

    iget-object p0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mImsPreference:Lcom/sec/internal/ims/core/iil/IilImsPreference;

    invoke-static {p0}, Lcom/sec/internal/ims/core/iil/IilIpcMessage;->encodeImsPreferenceResp(Lcom/sec/internal/ims/core/iil/IilImsPreference;)Lcom/sec/internal/ims/core/iil/IilIpcMessage;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->sendMessage(Lcom/sec/internal/ims/core/iil/IpcMessage;)Z

    return-void
.end method

.method public handleImsSupportStateChanged(Lcom/sec/internal/ims/core/iil/IilIpcMessage;)V
    .locals 3

    .line 251
    iget-object v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mIpcDispatcher:Lcom/sec/internal/ims/core/iil/IpcDispatcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->sendGeneralResponse(ZLcom/sec/internal/ims/core/iil/IpcMessage;)Z

    .line 252
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/iil/IpcMessage;->getBody()[B

    move-result-object p1

    .line 253
    iget p0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleImsSupportStateChanged() reason: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget-byte v2, p1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "state: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte p1, p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "IilManager"

    invoke-static {v0, p0, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public handleIsimLoaded(Lcom/sec/internal/ims/core/iil/IilIpcMessage;)V
    .locals 3

    .line 257
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/iil/IpcMessage;->getBody()[B

    move-result-object p1

    const/4 v0, 0x0

    .line 258
    aget-byte p1, p1, v0

    .line 259
    iget v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleIsimLoaded() isRefreshed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IilManager"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    if-nez p1, :cond_0

    .line 261
    iget-object p0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->setIsimLoaded()V

    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 720
    iget v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IilManager"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 722
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xe

    if-eq v0, v1, :cond_4

    const/16 v1, 0x64

    if-eq v0, v1, :cond_1

    const/16 v1, 0x65

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    .line 771
    :pswitch_0
    invoke-direct {p0}, Lcom/sec/internal/ims/core/iil/IilManager;->UpdateImsServiceState()V

    goto/16 :goto_0

    .line 768
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/internal/ims/core/iil/IilManager;->UpdateImsPreference()V

    goto/16 :goto_0

    .line 765
    :pswitch_2
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/iil/IilManager;->onReceiveModeChangeDone()V

    goto/16 :goto_0

    .line 762
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/iil/IilManager;->onReceiveSimStateChange(Ljava/lang/String;)V

    goto :goto_0

    .line 759
    :pswitch_4
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/iil/IilManager;->onReceiveRegistrationRetryOver()V

    goto :goto_0

    .line 756
    :pswitch_5
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/iil/IilManager;->onReceiveImsSettingRefresh()V

    goto :goto_0

    .line 753
    :pswitch_6
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/iil/IilManager;->onReceiveImsSettingChange()V

    goto :goto_0

    .line 750
    :pswitch_7
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/iil/IilManager;->onEmergencyRegistrationFailed()V

    goto :goto_0

    .line 747
    :pswitch_8
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/iil/IilManager;->onEmergencyRegistrationDone(I)V

    goto :goto_0

    .line 744
    :pswitch_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/core/iil/Registration;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/iil/IilManager;->onRegistrationFailed(Lcom/sec/internal/ims/core/iil/Registration;)V

    goto :goto_0

    .line 741
    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/core/iil/Registration;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/iil/IilManager;->onRegistrationDone(Lcom/sec/internal/ims/core/iil/Registration;)V

    goto :goto_0

    .line 738
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/iil/IilManager;->onIilConnected()V

    goto :goto_0

    .line 724
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 726
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_3

    .line 727
    instance-of v0, v0, Ljava/io/IOException;

    if-eqz v0, :cond_2

    .line 728
    iget p0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    const-string p1, "RILD crashed. restarting IMS."

    invoke-static {v2, p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 731
    :cond_2
    iget p0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception processing IPC data. Exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 734
    :cond_3
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/core/iil/IpcMessage;

    .line 735
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/iil/IilManager;->handleNewIpc(Lcom/sec/internal/ims/core/iil/IpcMessage;)V

    goto :goto_0

    .line 774
    :cond_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/core/iil/IilIpcMessage;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/iil/IilManager;->handleSSACInfo(Lcom/sec/internal/ims/core/iil/IilIpcMessage;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x9
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public handleSSACInfo(Lcom/sec/internal/ims/core/iil/IilIpcMessage;)V
    .locals 9

    .line 235
    iget v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    const-string v1, "IilManager"

    const-string v2, "handleSSACInfo()"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 236
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/iil/IpcMessage;->getBody()[B

    move-result-object v0

    const/4 v2, 0x0

    .line 237
    aget-byte v5, v0, v2

    const/4 v3, 0x2

    .line 238
    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    const/4 v4, 0x1

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v2

    add-int/2addr v3, v4

    mul-int/lit16 v6, v3, 0x3e8

    const/4 v3, 0x3

    .line 239
    aget-byte v7, v0, v3

    const/4 v3, 0x5

    .line 240
    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    const/4 v4, 0x4

    aget-byte v0, v0, v4

    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v0, v2

    add-int/2addr v3, v0

    mul-int/lit16 v8, v3, 0x3e8

    const/16 v0, 0xe

    .line 241
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 243
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object v3

    iget v4, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    invoke-interface/range {v3 .. v8}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->updateSSACInfo(IIIII)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 245
    :catch_0
    iget v2, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    const-string v3, "handleSSACInfo: NPE - resend SSAC to VSM"

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 246
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    return-void
.end method

.method public handleSetDeregistration(Lcom/sec/internal/ims/core/iil/IilIpcMessage;)V
    .locals 4

    .line 222
    iget-object v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mIpcDispatcher:Lcom/sec/internal/ims/core/iil/IpcDispatcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->sendGeneralResponse(ZLcom/sec/internal/ims/core/iil/IpcMessage;)Z

    .line 223
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/iil/IpcMessage;->getBody()[B

    move-result-object p1

    .line 224
    iget v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "de-reg reason : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget-byte v3, p1, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "IilManager"

    invoke-static {v3, v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    aget-byte p1, p1, v2

    iget p0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    invoke-interface {v0, p1, p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->sendDeregister(II)V

    return-void
.end method

.method public handleSetPreferredNetworkType(Lcom/sec/internal/ims/core/iil/IilIpcMessage;)V
    .locals 5

    .line 266
    iget-object v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mIpcDispatcher:Lcom/sec/internal/ims/core/iil/IpcDispatcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->sendGeneralResponse(ZLcom/sec/internal/ims/core/iil/IpcMessage;)Z

    .line 267
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/iil/IpcMessage;->getBody()[B

    move-result-object p1

    const/4 v0, 0x0

    .line 268
    aget-byte v2, p1, v0

    .line 269
    aget-byte p1, p1, v1

    .line 270
    iget v1, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetPreferredNetworkType reason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " new NW type: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IilManager"

    invoke-static {v3, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 272
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/iil/IilManager;->needSkipDeregister(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xa

    .line 273
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 276
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    const/4 v2, 0x5

    iget v3, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    invoke-interface {v1, v2, v3}, Lcom/sec/internal/interfaces/ims/IImsFramework;->sendDeregister(II)V

    .line 279
    :goto_0
    iget v1, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    invoke-static {v1}, Lcom/sec/internal/helper/os/DeviceUtil;->dimVolteMenuBySaMode(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x17

    if-lt p1, v1, :cond_1

    .line 280
    iget-object p1, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    invoke-static {p1, v0, p0}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setVoiceCallType(Landroid/content/Context;II)V

    :cond_1
    return-void
.end method

.method public handleSipSuspend(Lcom/sec/internal/ims/core/iil/IilIpcMessage;)V
    .locals 12

    .line 320
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/iil/IpcMessage;->getBody()[B

    move-result-object p1

    const/4 v0, 0x0

    .line 321
    aget-byte v1, p1, v0

    const/4 v2, 0x1

    .line 322
    aget-byte v5, p1, v2

    const/4 v3, 0x2

    .line 323
    aget-byte v6, p1, v3

    const/4 v3, 0x3

    .line 324
    aget-byte v7, p1, v3

    const-wide/16 v8, 0x0

    const/16 v4, 0xb

    :goto_0
    const/4 v10, 0x4

    if-lt v4, v10, :cond_1

    .line 327
    array-length v10, p1

    if-gt v10, v4, :cond_0

    goto :goto_1

    :cond_0
    const/16 v10, 0x8

    shl-long/2addr v8, v10

    .line 328
    aget-byte v10, p1, v4

    and-int/lit16 v10, v10, 0xff

    int-to-long v10, v10

    add-long/2addr v8, v10

    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_1
    if-ne v1, v2, :cond_7

    const/4 p1, 0x6

    if-eq v6, v3, :cond_2

    if-ne v6, p1, :cond_3

    :cond_2
    if-eq v7, v3, :cond_6

    if-eq v7, p1, :cond_6

    :cond_3
    if-ne v5, v10, :cond_4

    goto :goto_2

    .line 337
    :cond_4
    iget-object p1, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    if-ne v5, v2, :cond_5

    move v0, v2

    :cond_5
    iget p0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    invoke-interface {p1, v0, p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->suspendRegister(ZI)V

    goto :goto_3

    .line 334
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object v3

    iget v4, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    invoke-interface/range {v3 .. v9}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->sendHandOffEvent(IIIIJ)V

    :cond_7
    :goto_3
    return-void
.end method

.method public notifyImsReady(Z)V
    .locals 0

    .line 1058
    invoke-direct {p0}, Lcom/sec/internal/ims/core/iil/IilManager;->unRegisterPhoneStateListener()V

    if-eqz p1, :cond_0

    .line 1060
    invoke-direct {p0}, Lcom/sec/internal/ims/core/iil/IilManager;->registerPhoneStateListener()V

    :cond_0
    const/16 p1, 0xc

    .line 1062
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyImsRegistration(Lcom/sec/ims/ImsRegistration;ZLcom/sec/ims/ImsRegistrationError;)V
    .locals 7

    .line 1067
    iget v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyImsRegistration: registered="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " registration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IilManager"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 1071
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    .line 1073
    iget v1, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v3

    if-eq v1, v3, :cond_0

    .line 1074
    iget p0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    const-string p1, "Not matched slotId. Ignore notification."

    invoke-static {v2, p0, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 1078
    :cond_0
    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 1079
    iget p0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    const-string p1, "CMC PD registered. Ignore notification."

    invoke-static {v2, p0, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 1084
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->hasVolteService()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 1085
    iput-object p1, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mReg:Lcom/sec/ims/ImsRegistration;

    .line 1086
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/iil/IilManager;->updateFeature(Lcom/sec/ims/ImsRegistration;)V

    goto/16 :goto_0

    .line 1089
    :cond_2
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->hasVolteService()Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x0

    .line 1090
    iput-object p2, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mReg:Lcom/sec/ims/ImsRegistration;

    :cond_3
    const-string p2, "mmtel"

    .line 1092
    invoke-virtual {p1, p2}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_4

    const-string p2, "mmtel-video"

    .line 1093
    invoke-virtual {p1, p2}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_4

    const-string/jumbo p2, "smsip"

    .line 1094
    invoke-virtual {p1, p2}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 1095
    :cond_4
    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result p2

    if-eqz p2, :cond_5

    const/4 p1, 0x4

    .line 1096
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1098
    :cond_5
    invoke-virtual {p3}, Lcom/sec/ims/ImsRegistrationError;->getDetailedDeregiReason()I

    move-result p2

    const/16 v0, 0x1f

    if-ne p2, v0, :cond_6

    const/16 p2, 0xa

    .line 1099
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getNetworkType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1101
    :cond_6
    new-instance p2, Lcom/sec/internal/ims/core/iil/Registration;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getNetworkType()I

    move-result v2

    .line 1102
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getEcmpStatus()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getEpdgStatus()Z

    move-result v5

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getRegiRat()I

    move-result v6

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/core/iil/Registration;-><init>(IIIIII)V

    .line 1103
    invoke-virtual {p3}, Lcom/sec/ims/ImsRegistrationError;->getSipErrorCode()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/core/iil/Registration;->setSipError(I)V

    .line 1104
    invoke-virtual {p3}, Lcom/sec/ims/ImsRegistrationError;->getDeregistrationReason()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/core/iil/Registration;->setDeregiReasonCode(I)V

    const/4 p1, 0x2

    .line 1105
    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_7
    :goto_0
    return-void
.end method

.method public onEmergencyRegistrationFailed()V
    .locals 14

    .line 972
    iget v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    const-string v1, "IilManager"

    const-string v2, "onRegistrationFailed (Emergency)"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 973
    iget-object p0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mIpcDispatcher:Lcom/sec/internal/ims/core/iil/IpcDispatcher;

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v0 .. v13}, Lcom/sec/internal/ims/core/iil/IilIpcMessage;->encodeImsRegisgtrationInfo(IZZZZZIIIIIILjava/lang/String;I)Lcom/sec/internal/ims/core/iil/IilIpcMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->sendMessage(Lcom/sec/internal/ims/core/iil/IpcMessage;)Z

    return-void
.end method

.method public onIilConnected()V
    .locals 21

    move-object/from16 v0, p0

    .line 198
    iget v1, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    const-string v2, "IilManager"

    const-string v3, "onIilConnected"

    invoke-static {v2, v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v15, 0x0

    :goto_0
    const/4 v3, 0x5

    if-ge v15, v3, :cond_8

    .line 201
    iget v3, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IMS registraton at onIilConnected() : mFeatureMaskByNetType["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mFeatureMaskByNetType:[I

    aget v5, v5, v15

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 203
    iget-object v3, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mFeatureMaskByNetType:[I

    aget v3, v3, v15

    if-lez v3, :cond_7

    .line 204
    iget-object v14, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mIpcDispatcher:Lcom/sec/internal/ims/core/iil/IpcDispatcher;

    .line 205
    iget-object v4, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mLimitedModeByNetType:[I

    aget v4, v4, v15

    const/4 v5, 0x1

    if-nez v4, :cond_0

    move v4, v5

    goto :goto_1

    :cond_0
    const/4 v4, 0x2

    :goto_1
    and-int/lit8 v6, v3, 0x1

    if-lez v6, :cond_1

    move v6, v5

    goto :goto_2

    :cond_1
    const/4 v6, 0x0

    :goto_2
    and-int/lit8 v7, v3, 0x2

    if-lez v7, :cond_2

    move v7, v5

    goto :goto_3

    :cond_2
    const/4 v7, 0x0

    :goto_3
    and-int/lit8 v8, v3, 0x4

    if-lez v8, :cond_3

    move v8, v5

    goto :goto_4

    :cond_3
    const/4 v8, 0x0

    :goto_4
    and-int/lit8 v9, v3, 0x8

    if-lez v9, :cond_4

    move v9, v5

    goto :goto_5

    :cond_4
    const/4 v9, 0x0

    :goto_5
    and-int/lit8 v3, v3, 0x20

    if-lez v3, :cond_5

    move v10, v5

    goto :goto_6

    :cond_5
    const/4 v10, 0x0

    .line 207
    :goto_6
    iget v11, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mFeatureTag:I

    iget-object v3, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mEcmpByNetType:[I

    aget v12, v3, v15

    iget-object v3, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mEpdgModeByNetType:[I

    aget v13, v3, v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move v3, v4

    move v4, v6

    move v5, v7

    move v6, v8

    move v7, v9

    move v8, v10

    move v9, v15

    move v10, v11

    move v11, v12

    move v12, v13

    move/from16 v13, v16

    move-object v1, v14

    move/from16 v14, v17

    move/from16 v20, v15

    move-object/from16 v15, v18

    move/from16 v16, v19

    .line 204
    invoke-static/range {v3 .. v16}, Lcom/sec/internal/ims/core/iil/IilIpcMessage;->encodeImsRegisgtrationInfo(IZZZZZIIIIIILjava/lang/String;I)Lcom/sec/internal/ims/core/iil/IilIpcMessage;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->sendMessage(Lcom/sec/internal/ims/core/iil/IpcMessage;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 215
    iget v1, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send IMS registraton info failed at onIilConnected() :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, v20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_7

    :cond_6
    move/from16 v4, v20

    goto :goto_7

    :cond_7
    move v4, v15

    :goto_7
    add-int/lit8 v15, v4, 0x1

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method public onReceiveImsSettingChange()V
    .locals 3

    .line 360
    iget v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    const-string v1, "IilManager"

    const-string v2, "onReceiveImsSettingChange"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x1

    .line 361
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mNeedTwwan911TimerUpdate:Z

    .line 362
    invoke-direct {p0}, Lcom/sec/internal/ims/core/iil/IilManager;->UpdateImsPreference()V

    .line 363
    iget-object v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mIpcDispatcher:Lcom/sec/internal/ims/core/iil/IpcDispatcher;

    iget-object p0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mImsPreference:Lcom/sec/internal/ims/core/iil/IilImsPreference;

    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/sec/internal/ims/core/iil/IilIpcMessage;->encodeImsPreferenceNoti(Lcom/sec/internal/ims/core/iil/IilImsPreference;I)Lcom/sec/internal/ims/core/iil/IilIpcMessage;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->sendMessage(Lcom/sec/internal/ims/core/iil/IpcMessage;)Z

    return-void
.end method

.method public onReceiveImsSettingRefresh()V
    .locals 3

    .line 367
    iget v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    const-string v1, "IilManager"

    const-string v2, "onReceiveImsSettingRefresh"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 368
    invoke-direct {p0}, Lcom/sec/internal/ims/core/iil/IilManager;->UpdateImsPreference()V

    .line 369
    iget-object v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mIpcDispatcher:Lcom/sec/internal/ims/core/iil/IpcDispatcher;

    iget-object p0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mImsPreference:Lcom/sec/internal/ims/core/iil/IilImsPreference;

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/sec/internal/ims/core/iil/IilIpcMessage;->encodeImsPreferenceNoti(Lcom/sec/internal/ims/core/iil/IilImsPreference;I)Lcom/sec/internal/ims/core/iil/IilIpcMessage;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->sendMessage(Lcom/sec/internal/ims/core/iil/IpcMessage;)Z

    return-void
.end method

.method public onReceiveModeChangeDone()V
    .locals 3

    .line 387
    iget v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    const-string v1, "IilManager"

    const-string v2, "onReceiveModeChangeDone()"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 388
    iget-object p0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mIpcDispatcher:Lcom/sec/internal/ims/core/iil/IpcDispatcher;

    invoke-static {}, Lcom/sec/internal/ims/core/iil/IilIpcMessage;->ImsChangePreferredNetwork()Lcom/sec/internal/ims/core/iil/IilIpcMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->sendMessage(Lcom/sec/internal/ims/core/iil/IpcMessage;)Z

    return-void
.end method

.method public onReceiveRegistrationRetryOver()V
    .locals 8

    .line 353
    iget-object p0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mIpcDispatcher:Lcom/sec/internal/ims/core/iil/IpcDispatcher;

    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/sec/internal/ims/core/iil/IilIpcMessage;->encodeImsRetryOverNoti(IZZZZZII)Lcom/sec/internal/ims/core/iil/IilIpcMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->sendMessage(Lcom/sec/internal/ims/core/iil/IpcMessage;)Z

    return-void
.end method

.method public onReceiveSimStateChange(Ljava/lang/String;)V
    .locals 3

    .line 373
    iget v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceiveSimStateChange() : simState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IilManager"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 374
    iget v0, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 375
    sget-object v1, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_0

    const-string v0, "ABSENT"

    .line 376
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/iil/IilManager;->onReceiveImsSettingRefresh()V

    :cond_0
    const-string v0, "LOADED"

    .line 381
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 382
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/iil/IilManager;->mNeedTwwan911TimerUpdate:Z

    :cond_1
    return-void
.end method
