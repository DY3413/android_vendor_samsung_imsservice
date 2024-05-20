.class public Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;
.super Lcom/sec/internal/ims/settings/ImsServiceSwitchBase;
.source "ImsServiceSwitchEur.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/settings/ImsServiceSwitchEur$EmergencyEventBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ImsServiceSwitchEur"


# instance fields
.field private mDefaultSmsPackageChangeReceiver:Landroid/content/BroadcastReceiver;

.field protected mEmEventReceiver:Lcom/sec/internal/ims/settings/ImsServiceSwitchEur$EmergencyEventBroadcastReceiver;

.field private mEmergencyEnabled:Z

.field private mUpsmEnabled:Z


# direct methods
.method static bridge synthetic -$$Nest$monEmergencyModeChanged(Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->onEmergencyModeChanged()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/settings/ImsServiceSwitchBase;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    .line 53
    iput-object p1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mEmEventReceiver:Lcom/sec/internal/ims/settings/ImsServiceSwitchEur$EmergencyEventBroadcastReceiver;

    const/4 p1, 0x0

    .line 55
    iput-boolean p1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mUpsmEnabled:Z

    .line 56
    iput-boolean p1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mEmergencyEnabled:Z

    .line 106
    new-instance p2, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur$1;

    invoke-direct {p2, p0}, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur$1;-><init>(Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;)V

    iput-object p2, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mDefaultSmsPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 61
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->registerDefaultSmsPackageChangeReceiver()V

    .line 62
    iget p2, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mPhoneId:I

    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mContext:Landroid/content/Context;

    const-string v1, "imsswitch"

    invoke-static {p2, v0, v1, p1, p1}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object p2

    const-string v0, "defaultsms"

    .line 64
    invoke-interface {p2, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    iput-boolean p1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mDefaultSms:Z

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 65
    iput-boolean p1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mDefaultSms:Z

    .line 66
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 67
    iget-boolean p2, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mDefaultSms:Z

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 68
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 72
    :goto_1
    invoke-direct {p0}, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->setEmEventReceiver()V

    return-void
.end method

.method private applyTabletPolicy(Lcom/google/gson/JsonElement;Lcom/google/gson/JsonElement;Ljava/lang/String;Ljava/lang/String;)Lcom/google/gson/JsonElement;
    .locals 2

    .line 499
    invoke-direct {p0, p3, p4}, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->needToCheckTabletPolicy(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    return-object p2

    .line 502
    :cond_0
    invoke-static {p2}, Lcom/sec/internal/helper/JsonUtil;->isValidJsonElement(Lcom/google/gson/JsonElement;)Z

    move-result p0

    const-string p3, "ImsServiceSwitchEur"

    if-nez p0, :cond_1

    const-string p0, "Not a valid matchedSwitchElement."

    .line 503
    invoke-static {p3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    .line 506
    :cond_1
    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p0

    const-string p4, "mnoname"

    invoke-virtual {p0, p4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object p0

    const/16 p4, 0x29

    new-array p4, p4, [Lcom/sec/internal/constants/Mno;

    const/4 v0, 0x0

    .line 507
    sget-object v1, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    aput-object v1, p4, v0

    const/4 v0, 0x1

    sget-object v1, Lcom/sec/internal/constants/Mno;->VODAFONE_INDIA:Lcom/sec/internal/constants/Mno;

    aput-object v1, p4, v0

    const/4 v0, 0x2

    sget-object v1, Lcom/sec/internal/constants/Mno;->AIRTEL:Lcom/sec/internal/constants/Mno;

    aput-object v1, p4, v0

    const/4 v0, 0x3

    sget-object v1, Lcom/sec/internal/constants/Mno;->IDEA_INDIA:Lcom/sec/internal/constants/Mno;

    aput-object v1, p4, v0

    const/4 v0, 0x4

    sget-object v1, Lcom/sec/internal/constants/Mno;->BSNL:Lcom/sec/internal/constants/Mno;

    aput-object v1, p4, v0

    const/4 v0, 0x5

    sget-object v1, Lcom/sec/internal/constants/Mno;->TELSTRA:Lcom/sec/internal/constants/Mno;

    aput-object v1, p4, v0

    const/4 v0, 0x6

    sget-object v1, Lcom/sec/internal/constants/Mno;->OPTUS:Lcom/sec/internal/constants/Mno;

    aput-object v1, p4, v0

    const/4 v0, 0x7

    sget-object v1, Lcom/sec/internal/constants/Mno;->VODAFONE_AUSTRALIA:Lcom/sec/internal/constants/Mno;

    aput-object v1, p4, v0

    const/16 v0, 0x8

    sget-object v1, Lcom/sec/internal/constants/Mno;->CELCOM:Lcom/sec/internal/constants/Mno;

    aput-object v1, p4, v0

    const/16 v0, 0x9

    sget-object v1, Lcom/sec/internal/constants/Mno;->DIGI:Lcom/sec/internal/constants/Mno;

    aput-object v1, p4, v0

    const/16 v0, 0xa

    sget-object v1, Lcom/sec/internal/constants/Mno;->P1:Lcom/sec/internal/constants/Mno;

    aput-object v1, p4, v0

    const/16 v0, 0xb

    sget-object v1, Lcom/sec/internal/constants/Mno;->UMOBILE:Lcom/sec/internal/constants/Mno;

    aput-object v1, p4, v0

    const/16 v0, 0xc

    sget-object v1, Lcom/sec/internal/constants/Mno;->YTL:Lcom/sec/internal/constants/Mno;

    aput-object v1, p4, v0

    const/16 v0, 0xd

    sget-object v1, Lcom/sec/internal/constants/Mno;->MAXIS_MY:Lcom/sec/internal/constants/Mno;

    aput-object v1, p4, v0

    const/16 v0, 0xe

    sget-object v1, Lcom/sec/internal/constants/Mno;->SMARTFREN:Lcom/sec/internal/constants/Mno;

    aput-object v1, p4, v0

    const/16 v0, 0xf

    sget-object v1, Lcom/sec/internal/constants/Mno;->TELKOMSEL:Lcom/sec/internal/constants/Mno;

    aput-object v1, p4, v0

    const/16 v0, 0x10

    sget-object v1, Lcom/sec/internal/constants/Mno;->INDOSAT_ID:Lcom/sec/internal/constants/Mno;

    aput-object v1, p4, v0

    const/16 v0, 0x11

    sget-object v1, Lcom/sec/internal/constants/Mno;->XL_ID:Lcom/sec/internal/constants/Mno;

    aput-object v1, p4, v0

    const/16 v0, 0x12

    sget-object v1, Lcom/sec/internal/constants/Mno;->VIETTEL:Lcom/sec/internal/constants/Mno;

    aput-object v1, p4, v0

    const/16 v0, 0x13

    sget-object v1, Lcom/sec/internal/constants/Mno;->VIETNAMOBILE:Lcom/sec/internal/constants/Mno;

    aput-object v1, p4, v0

    const/16 v0, 0x14

    sget-object v1, Lcom/sec/internal/constants/Mno;->VINAPHONE:Lcom/sec/internal/constants/Mno;

    aput-object v1, p4, v0

    const/16 v0, 0x15

    sget-object v1, Lcom/sec/internal/constants/Mno;->MOBIFONE:Lcom/sec/internal/constants/Mno;

    aput-object v1, p4, v0

    const/16 v0, 0x16

    sget-object v1, Lcom/sec/internal/constants/Mno;->LAOTEL:Lcom/sec/internal/constants/Mno;

    aput-object v1, p4, v0

    const/16 v0, 0x17

    sget-object v1, Lcom/sec/internal/constants/Mno;->METFONE_CAMBODIA:Lcom/sec/internal/constants/Mno;

    aput-object v1, p4, v0

    const/16 v0, 0x18

    sget-object v1, Lcom/sec/internal/constants/Mno;->SEATEL_CAMBODIA:Lcom/sec/internal/constants/Mno;

    aput-object v1, p4, v0

    const/16 v0, 0x19

    sget-object v1, Lcom/sec/internal/constants/Mno;->SMART_CAMBODIA:Lcom/sec/internal/constants/Mno;

    aput-object v1, p4, v0

    const/16 v0, 0x1a

    sget-object v1, Lcom/sec/internal/constants/Mno;->CELLCARD_CAMBODIA:Lcom/sec/internal/constants/Mno;

    aput-object v1, p4, v0

    const/16 v0, 0x1b

    sget-object v1, Lcom/sec/internal/constants/Mno;->CHT:Lcom/sec/internal/constants/Mno;

    aput-object v1, p4, v0

    const/16 v0, 0x1c

    sget-object v1, Lcom/sec/internal/constants/Mno;->APT:Lcom/sec/internal/constants/Mno;

    aput-object v1, p4, v0

    const/16 v0, 0x1d

    sget-object v1, Lcom/sec/internal/constants/Mno;->TSTAR:Lcom/sec/internal/constants/Mno;

    aput-object v1, p4, v0

    const/16 v0, 0x1e

    sget-object v1, Lcom/sec/internal/constants/Mno;->FET:Lcom/sec/internal/constants/Mno;

    aput-object v1, p4, v0

    const/16 v0, 0x1f

    sget-object v1, Lcom/sec/internal/constants/Mno;->TWM:Lcom/sec/internal/constants/Mno;

    aput-object v1, p4, v0

    const/16 v0, 0x20

    sget-object v1, Lcom/sec/internal/constants/Mno;->DLOG:Lcom/sec/internal/constants/Mno;

    aput-object v1, p4, v0

    const/16 v0, 0x21

    sget-object v1, Lcom/sec/internal/constants/Mno;->MOBITEL_LK:Lcom/sec/internal/constants/Mno;

    aput-object v1, p4, v0

    const/16 v0, 0x22

    sget-object v1, Lcom/sec/internal/constants/Mno;->HUTCH_LK:Lcom/sec/internal/constants/Mno;

    aput-object v1, p4, v0

    const/16 v0, 0x23

    sget-object v1, Lcom/sec/internal/constants/Mno;->NAMASTE:Lcom/sec/internal/constants/Mno;

    aput-object v1, p4, v0

    const/16 v0, 0x24

    sget-object v1, Lcom/sec/internal/constants/Mno;->NCELL:Lcom/sec/internal/constants/Mno;

    aput-object v1, p4, v0

    const/16 v0, 0x25

    sget-object v1, Lcom/sec/internal/constants/Mno;->OOREDOO_MV:Lcom/sec/internal/constants/Mno;

    aput-object v1, p4, v0

    const/16 v0, 0x26

    sget-object v1, Lcom/sec/internal/constants/Mno;->GRAMEENPHONE:Lcom/sec/internal/constants/Mno;

    aput-object v1, p4, v0

    const/16 v0, 0x27

    sget-object v1, Lcom/sec/internal/constants/Mno;->ROBI:Lcom/sec/internal/constants/Mno;

    aput-object v1, p4, v0

    const/16 v0, 0x28

    sget-object v1, Lcom/sec/internal/constants/Mno;->AIRTEL_LK:Lcom/sec/internal/constants/Mno;

    aput-object v1, p4, v0

    invoke-virtual {p0, p4}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result p4

    if-eqz p4, :cond_2

    const-string/jumbo p0, "support ImsService in Tablet"

    .line 518
    invoke-static {p3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    .line 521
    :cond_2
    invoke-virtual {p0}, Lcom/sec/internal/constants/Mno;->isNZ()Z

    move-result p4

    if-nez p4, :cond_3

    invoke-virtual {p0}, Lcom/sec/internal/constants/Mno;->isSG()Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string p4, "SM-T976B"

    invoke-virtual {p4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "NZ, SG support ImsService in SM-T976B Tablet"

    .line 522
    invoke-static {p3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    :cond_4
    const-string p0, "Don\'t support ImsService in Tablet for this operator"

    .line 525
    invoke-static {p3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    invoke-static {p2, p1}, Lcom/sec/internal/helper/JsonUtil;->merge(Lcom/google/gson/JsonElement;Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;

    move-result-object p0

    return-object p0
.end method

.method private forceNotifyToApp(I)V
    .locals 0

    .line 222
    iget-object p0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->makeImsService(Landroid/content/Context;)Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 224
    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->forceNotifyToApp(I)V

    :cond_0
    return-void
.end method

.method private needToCheckTabletPolicy(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 481
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mPhoneId:I

    invoke-static {v0, v1}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/ImsAutoUpdate;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->isMatchedImsSwitch(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const-string v2, "ImsServiceSwitchEur"

    const/4 v3, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mPhoneId:I

    .line 482
    invoke-static {v0, v4}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/ImsAutoUpdate;

    move-result-object v0

    const/4 v4, 0x4

    invoke-virtual {v0, v4, p1, p2}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->isMatchedImsSwitch(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 487
    :cond_0
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string p2, "SM-P619"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const-string p1, "ro.product.first_api_level"

    .line 491
    invoke-static {p1, v3}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0x1e

    if-lt p1, p2, :cond_2

    .line 492
    iget p0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mPhoneId:I

    const-string p1, "No need to check Tablet policy - first API version is more than 30"

    invoke-static {v2, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v3

    :cond_2
    return v1

    .line 483
    :cond_3
    :goto_0
    iget p0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mPhoneId:I

    const-string p1, "No need to check Tablet policy - AutoUpdate is matched"

    invoke-static {v2, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v3
.end method

.method private onEmergencyModeChanged()V
    .locals 6

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsServiceSwitchEur["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "onEmergencyModeChanged."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v0

    .line 175
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mPhoneId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Emergency is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mPhoneId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UPSM is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sec/internal/helper/os/SystemUtil;->checkUltraPowerSavingMode(Lcom/samsung/android/emergencymode/SemEmergencyManager;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v3, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    const/16 v3, 0x10

    .line 179
    invoke-virtual {v0, v3}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->checkModeType(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 180
    iget-boolean v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mEmergencyEnabled:Z

    if-eqz v0, :cond_0

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mPhoneId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Emergency mode is already enabled, so skip."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 183
    :cond_0
    iput-boolean v4, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mEmergencyEnabled:Z

    .line 184
    iget-boolean v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mRcsEnabled:Z

    if-eqz v0, :cond_1

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Emergency mode is enabled."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/ImsServiceSwitchBase;->persist()V

    goto/16 :goto_0

    .line 188
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mPhoneId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Emergency mode is enabled: rcs off, so no change."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 191
    :cond_2
    iget-object v3, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 192
    invoke-static {v0}, Lcom/sec/internal/helper/os/SystemUtil;->checkUltraPowerSavingMode(Lcom/samsung/android/emergencymode/SemEmergencyManager;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 193
    iget-boolean v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mUpsmEnabled:Z

    if-eqz v0, :cond_3

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mPhoneId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UPSM is already enabled, so skip."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 196
    :cond_3
    iput-boolean v4, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mUpsmEnabled:Z

    .line 197
    iget-boolean v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mRcsEnabled:Z

    if-eqz v0, :cond_4

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UPSM is enabled."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/ImsServiceSwitchBase;->persist()V

    goto :goto_0

    .line 201
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mPhoneId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UPSM is enabled: rcs off, so no change."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 204
    :cond_5
    iget-boolean v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mEmergencyEnabled:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Emergency mode is disabled."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iput-boolean v3, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mEmergencyEnabled:Z

    .line 207
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/ImsServiceSwitchBase;->persist()V

    .line 208
    iget-boolean v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mRcsEnabled:Z

    if-eqz v0, :cond_7

    .line 209
    iget v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mPhoneId:I

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->forceNotifyToApp(I)V

    goto :goto_0

    .line 211
    :cond_6
    iget-boolean v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mUpsmEnabled:Z

    if-eqz v0, :cond_7

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UPSM is disabled."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iput-boolean v3, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mUpsmEnabled:Z

    .line 214
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/ImsServiceSwitchBase;->persist()V

    .line 215
    iget-boolean v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mRcsEnabled:Z

    if-eqz v0, :cond_7

    .line 216
    iget v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mPhoneId:I

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->forceNotifyToApp(I)V

    :cond_7
    :goto_0
    return-void
.end method

.method private registerEmEventReceiver()V
    .locals 2

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsServiceSwitchEur["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "registerEmEventReceiver. "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    new-instance v0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur$EmergencyEventBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur$EmergencyEventBroadcastReceiver;-><init>(Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;)V

    iput-object v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mEmEventReceiver:Lcom/sec/internal/ims/settings/ImsServiceSwitchEur$EmergencyEventBroadcastReceiver;

    .line 257
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    .line 258
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 259
    sget-object v1, Lcom/sec/ims/extensions/SemEmergencyConstantsExt;->EMERGENCY_CHECK_ABNORMAL_STATE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    .line 260
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 262
    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mEmEventReceiver:Lcom/sec/internal/ims/settings/ImsServiceSwitchEur$EmergencyEventBroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private setEmEventReceiver()V
    .locals 4

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsServiceSwitchEur["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "setEmEventReceiver. "

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mEmEventReceiver:Lcom/sec/internal/ims/settings/ImsServiceSwitchEur$EmergencyEventBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mPhoneId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "mEmEventReceiver is not null. "

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 159
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->registerEmEventReceiver()V

    .line 161
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 162
    iget-object v3, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 163
    invoke-static {v0}, Lcom/sec/internal/helper/os/SystemUtil;->checkUltraPowerSavingMode(Lcom/samsung/android/emergencymode/SemEmergencyManager;)Z

    move-result v3

    if-nez v3, :cond_1

    const/16 v3, 0x10

    .line 164
    invoke-virtual {v0, v3}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->checkModeType(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 165
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "emergency mode is already set, so send upsm event."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-direct {p0}, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->onEmergencyModeChanged()V

    :cond_2
    return-void
.end method

.method private unregisterEmEventReceiver()V
    .locals 3

    .line 281
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mEmEventReceiver:Lcom/sec/internal/ims/settings/ImsServiceSwitchEur$EmergencyEventBroadcastReceiver;

    if-nez v0, :cond_0

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsServiceSwitchEur["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mPhoneId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "mEmEventReceiver is null. "

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 286
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    :goto_0
    iput-object v1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mEmEventReceiver:Lcom/sec/internal/ims/settings/ImsServiceSwitchEur$EmergencyEventBroadcastReceiver;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    :try_start_1
    const-string v0, "ImsServiceSwitchEur"

    const-string v2, "EmEventReceiver is not registered!"

    .line 288
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 290
    :goto_2
    iput-object v1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mEmEventReceiver:Lcom/sec/internal/ims/settings/ImsServiceSwitchEur$EmergencyEventBroadcastReceiver;

    .line 291
    throw v0
.end method

.method private unregisterEventListener()V
    .locals 2

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsServiceSwitchEur["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "unregisterEventListener. "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mDefaultSmsPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "ImsServiceSwitchEur"

    const-string v0, "DefaultSmsPackageChangeReceiver is not registered!"

    .line 276
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method protected getInitImsSwitch()Landroid/content/ContentValues;
    .locals 4

    .line 464
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 465
    invoke-static {}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->getImsServiceSwitchTable()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "enableServiceRcs"

    .line 466
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "enableServiceRcschat"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 469
    :cond_0
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 467
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->isCscRcsEnabled()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method protected initVolteServiceSwitch(ZZZ)V
    .locals 2

    .line 296
    iget-object p3, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mVolteServiceSwitch:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "mmtel"

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    iget-object p3, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mVolteServiceSwitch:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v0, "mmtel-video"

    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    iget-object p2, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mVolteServiceSwitch:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    const-string/jumbo v0, "smsip"

    invoke-interface {p2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    iget-object p2, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mVolteServiceSwitch:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    const-string/jumbo v0, "ss"

    invoke-interface {p2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    iget-object p2, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mVolteServiceSwitch:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p3, "cdpn"

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    iget-object p1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mVolteServiceSwitch:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, p2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 304
    iput-boolean p1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mVoLteEnabled:Z

    .line 305
    iput-boolean p1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mSsEnabled:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 307
    iput-boolean p1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mVoLteEnabled:Z

    .line 308
    iput-boolean p1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mSsEnabled:Z

    :goto_0
    return-void
.end method

.method protected isCscRcsEnabled()Z
    .locals 0

    .line 477
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->isTablet()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isEnabled(Ljava/lang/String;)Z
    .locals 3

    .line 239
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mVolteServiceSwitch:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "ss"

    .line 241
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 242
    iget-boolean v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mSsEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mVoLteEnabled:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mVolteServiceSwitch:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1

    .line 244
    :cond_2
    iget-boolean v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mVoLteEnabled:Z

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mVolteServiceSwitch:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    return v1

    .line 247
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mRcsServiceSwitch:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 248
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->isRcsEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mRcsServiceSwitch:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_2

    :cond_5
    move v1, v2

    :goto_2
    return v1

    :cond_6
    return v2
.end method

.method public isRcsEnabled()Z
    .locals 5

    .line 136
    iget-boolean v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->isLoded:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/ImsServiceSwitchBase;->getDefaultMessageApp()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/ImsServiceSwitchBase;->isDefaultMessageAppInUse()Z

    move-result v0

    .line 138
    iget v2, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mPhoneId:I

    iget-object v3, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mContext:Landroid/content/Context;

    const-string v4, "imsswitch"

    invoke-static {v2, v3, v4, v1, v1}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 140
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 141
    iput-boolean v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mDefaultSms:Z

    const-string v3, "defaultsms"

    .line 142
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 143
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 144
    iput-boolean v1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->isLoded:Z

    .line 147
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsServiceSwitchEur["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " isRcsEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mRcsEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mDefaultSms "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mDefaultSms:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mUpsmEnabled "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mUpsmEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mEmergencyEnabled "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mEmergencyEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-boolean v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mRcsEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mUpsmEnabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mDefaultSms:Z

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mEmergencyEnabled:Z

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method protected load()V
    .locals 10

    .line 314
    iget v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mPhoneId:I

    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mContext:Landroid/content/Context;

    const-string v2, "imsswitch"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, v3}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 316
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getVoLteServiceList()[Ljava/lang/String;

    move-result-object v1

    .line 317
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getRcsServiceList()[Ljava/lang/String;

    move-result-object v4

    .line 318
    array-length v5, v1

    move v6, v3

    :goto_0
    if-ge v6, v5, :cond_0

    aget-object v7, v1, v6

    .line 319
    iget-object v8, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mVolteServiceSwitch:Ljava/util/Map;

    invoke-interface {v0, v7, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface {v8, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 321
    :cond_0
    array-length v1, v4

    move v5, v3

    :goto_1
    if-ge v5, v1, :cond_1

    aget-object v6, v4, v5

    .line 322
    iget-object v7, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mRcsServiceSwitch:Ljava/util/Map;

    invoke-interface {v0, v6, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v7, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 325
    :cond_1
    iget v1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mPhoneId:I

    iget-object v4, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "volte"

    invoke-static {v1, v4, v2, v5, v3}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getBoolean(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mVoLteEnabled:Z

    .line 326
    iget v1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mPhoneId:I

    iget-object v4, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "ss"

    invoke-static {v1, v4, v2, v5, v3}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getBoolean(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mSsEnabled:Z

    .line 328
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 329
    iput-boolean v3, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mRcsEnabled:Z

    goto :goto_2

    :cond_2
    const-string v1, "rcs"

    .line 331
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mRcsEnabled:Z

    :goto_2
    const-string v1, "chatbot-communication"

    .line 334
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load: new switch chatbot-communication being set to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mRcsEnabled:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImsServiceSwitchEur"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mRcsServiceSwitch:Ljava/util/Map;

    iget-boolean v2, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mRcsEnabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/ImsServiceSwitchBase;->persist()V

    .line 341
    :cond_3
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->dumpServiceSwitch()V

    const v0, 0x10030010

    .line 342
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",LOAD:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->getSwitchDump()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    return-void
.end method

.method protected loadImsSwitchFromJson(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/ContentValues;
    .locals 4

    .line 409
    iget p3, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mPhoneId:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadImsSwitchFromJson: mnoname="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",  mvnoname="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsServiceSwitchEur"

    invoke-static {v1, p3, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 411
    new-instance p3, Landroid/content/ContentValues;

    invoke-direct {p3}, Landroid/content/ContentValues;-><init>()V

    .line 412
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    iget p0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mPhoneId:I

    const-string p1, "load: loadImsSwitchFromJson is not identified."

    invoke-static {v1, p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-object p3

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mPhoneId:I

    invoke-static {v0, p1, v2}, Lcom/sec/internal/ims/settings/ImsServiceSwitchLoader;->getImsSwitchFromJson(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 419
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object p3

    .line 423
    :cond_1
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    const-string v2, "defaultswitch"

    .line 425
    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    .line 426
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 427
    iget p0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mPhoneId:I

    const-string p1, "load: No default setting."

    invoke-static {v1, p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-object p3

    .line 432
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mPhoneId:I

    invoke-static {v1, v0, p1, p2, v3}, Lcom/sec/internal/ims/settings/ImsServiceSwitchLoader;->getMatchedJsonElement(Landroid/content/Context;Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;I)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 436
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 437
    invoke-direct {p0, v2, v0, p1, p2}, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->applyTabletPolicy(Lcom/google/gson/JsonElement;Lcom/google/gson/JsonElement;Ljava/lang/String;Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 441
    :cond_3
    invoke-static {v2, v0}, Lcom/sec/internal/helper/JsonUtil;->merge(Lcom/google/gson/JsonElement;Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;

    move-result-object p1

    .line 442
    invoke-static {p1}, Lcom/sec/internal/helper/JsonUtil;->isValidJsonElement(Lcom/google/gson/JsonElement;)Z

    move-result p2

    if-nez p2, :cond_4

    return-object p3

    .line 445
    :cond_4
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    .line 447
    invoke-virtual {p1}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 448
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 449
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    const-string v2, "csc_customization"

    .line 451
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 452
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 455
    :cond_6
    invoke-virtual {p3}, Landroid/content/ContentValues;->size()I

    move-result p2

    if-lez p2, :cond_7

    .line 456
    invoke-virtual {p0, p3, p1}, Lcom/sec/internal/ims/settings/ImsServiceSwitchBase;->applyCscCustomizationSwitch(Landroid/content/ContentValues;Lcom/google/gson/JsonObject;)Landroid/content/ContentValues;

    move-result-object p3

    .line 459
    :cond_7
    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->overrideImsSwitchForCarrier(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object p0

    return-object p0
.end method

.method public migrationSharedPreferences(Landroid/content/SharedPreferences;)V
    .locals 5

    .line 77
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 78
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mContext:Landroid/content/Context;

    const/4 v1, -0x1

    const-string v2, "imsswitch"

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3, v3}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 85
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 86
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 87
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 88
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_1

    .line 89
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 90
    :cond_1
    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_2

    .line 91
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 93
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wrong type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    goto :goto_0

    .line 96
    :cond_3
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method protected overrideImsSwitchForCarrier(Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 1

    const-string p0, "mnoname"

    .line 532
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Telstra_AU"

    .line 533
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Telstra_AU:MVNO"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Vodafone_AU"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x0

    const-string v0, "ro.product.first_api_level"

    .line 534
    invoke-static {v0, p0}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/16 v0, 0x1e

    if-le p0, v0, :cond_1

    const-string p0, "enableServiceVilte"

    const-string v0, "false"

    .line 535
    invoke-virtual {p1, p0, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object p1
.end method

.method public registerDefaultSmsPackageChangeReceiver()V
    .locals 2

    .line 101
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.provider.action.DEFAULT_SMS_PACKAGE_CHANGED_INTERNAL"

    .line 102
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 103
    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mDefaultSmsPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public unregisterObserver()V
    .locals 0

    .line 267
    invoke-direct {p0}, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->unregisterEventListener()V

    .line 268
    invoke-direct {p0}, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->unregisterEmEventReceiver()V

    return-void
.end method

.method protected updateServiceSwitchInternal(Landroid/content/ContentValues;)V
    .locals 11

    const-string v0, "globalgcenabled"

    const/4 v1, 0x0

    .line 355
    invoke-static {p1, v0, v1}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "enableIms"

    const-string v3, "enableServiceRcschat"

    const-string v4, "enableServiceRcs"

    if-eqz v0, :cond_0

    .line 356
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 357
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 358
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 359
    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 360
    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 361
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 364
    :cond_0
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 365
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 366
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 367
    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 368
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 371
    :cond_1
    invoke-static {p1, v2, v1}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v0

    .line 372
    invoke-static {p1, v4, v1}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    .line 373
    invoke-static {p1, v3, v1}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    goto :goto_0

    :cond_2
    move v3, v1

    :goto_0
    if-eqz v0, :cond_3

    const-string v5, "enableServiceVolte"

    .line 374
    invoke-static {p1, v5, v1}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v4

    goto :goto_1

    :cond_3
    move v5, v1

    :goto_1
    if-eqz v0, :cond_4

    const-string v6, "enableServiceVowifi"

    .line 375
    invoke-static {p1, v6, v1}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_4

    move v6, v4

    goto :goto_2

    :cond_4
    move v6, v1

    :goto_2
    if-eqz v0, :cond_5

    const-string v7, "enableServiceSmsip"

    .line 376
    invoke-static {p1, v7, v1}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_5

    move v7, v4

    goto :goto_3

    :cond_5
    move v7, v1

    :goto_3
    if-eqz v0, :cond_8

    .line 383
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/settings/ImsServiceSwitchBase;->parseImsSwitch(Landroid/content/ContentValues;)V

    if-nez v5, :cond_6

    if-eqz v6, :cond_7

    .line 386
    :cond_6
    iget-object p1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchBase;->mServiceMap:Ljava/util/Map;

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v9, "mmtel"

    invoke-interface {p1, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    iget-object p1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchBase;->mServiceMap:Ljava/util/Map;

    const-string/jumbo v9, "ss"

    invoke-interface {p1, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    :cond_7
    iget p1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mPhoneId:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateServiceSwitch: isEnableRcs : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "ImsServiceSwitchEur"

    invoke-static {v9, p1, v8}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-eqz v2, :cond_8

    .line 394
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/settings/ImsServiceSwitchBase;->enableRcsSwitch(Z)V

    .line 398
    :cond_8
    iget-object p1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v8, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mPhoneId:I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateServiceSwitch: Ims["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "] Rcs["

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "] RcsChat["

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "] Volte["

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "] Vowifi["

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "] Smsip["

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "] "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v8, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    if-nez v5, :cond_9

    if-nez v6, :cond_9

    if-eqz v7, :cond_a

    :cond_9
    move v1, v4

    .line 403
    :cond_a
    iput-boolean v1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mVoLteEnabled:Z

    .line 404
    iput-boolean v2, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mRcsEnabled:Z

    return-void
.end method
