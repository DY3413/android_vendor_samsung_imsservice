.class public Lcom/samsung/android/cmcsetting/CmcSettingManager;
.super Ljava/lang/Object;
.source "CmcSettingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;
    }
.end annotation


# static fields
.field private static IS_DUAL_SIM_SUPPORTED:Z

.field private static SHIP_BUILD:Z


# instance fields
.field private authorityUri:Landroid/net/Uri;

.field private authorityUriForCmcActivation:Landroid/net/Uri;

.field private authorityUriForCmcCallActivation:Landroid/net/Uri;

.field private authorityUriForCmcMessageActivation:Landroid/net/Uri;

.field private authorityUriForDevices:Landroid/net/Uri;

.field private authorityUriForLines:Landroid/net/Uri;

.field private authorityUriForNetworkMode:Landroid/net/Uri;

.field private authorityUriForSaInfo:Landroid/net/Uri;

.field private authorityUriForSameWifiNetworkStatus:Landroid/net/Uri;

.field private authorityUriForWatchActivation:Landroid/net/Uri;

.field private mCmcActivationChangedListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/cmcsetting/listeners/CmcActivationInfoChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCmcActivationDbChangeObserver:Landroid/database/ContentObserver;

.field private mCmcCallActivationChangedListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/cmcsetting/listeners/CmcCallActivationInfoChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCmcCallActivationDbChangeObserver:Landroid/database/ContentObserver;

.field private mCmcDeviceInfoChangedListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/cmcsetting/listeners/CmcDeviceInfoChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCmcLineInfoChangedListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/cmcsetting/listeners/CmcLineInfoChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCmcMessageActivationChangedListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/cmcsetting/listeners/CmcMessageActivationInfoChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCmcMessageActivationDbChangeObserver:Landroid/database/ContentObserver;

.field private mCmcNetworkModeChangedListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/cmcsetting/listeners/CmcNetworkModeInfoChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCmcSamsungAccountInfoChangedListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/cmcsetting/listeners/CmcSamsungAccountInfoChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCmcWatchActivationChangedListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/cmcsetting/listeners/CmcWatchActivationInfoChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDevicesDbChangeObserver:Landroid/database/ContentObserver;

.field private mLinesDbChangeObserver:Landroid/database/ContentObserver;

.field private mNetworkModeDbChangeObserver:Landroid/database/ContentObserver;

.field private mSaInfoDbChangeObserver:Landroid/database/ContentObserver;

.field private mSameWifiNetworkStatusListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/cmcsetting/listeners/CmcSameWifiNetworkStatusListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSameWifiNetworkStatusObserver:Landroid/database/ContentObserver;

.field private mWatchActivationDbChangeObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ro.product_ship"

    const-string v1, "false"

    .line 33
    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    .line 32
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->SHIP_BUILD:Z

    const-string v0, "ro.build.version.oneui"

    const/4 v1, -0x1

    .line 34
    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const v1, 0xc3b4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->IS_DUAL_SIM_SUPPORTED:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "content://com.samsung.android.mdec.provider.setting"

    .line 158
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUri:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.mdec.provider.setting/cmc_activation"

    .line 159
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUriForCmcActivation:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.mdec.provider.setting/cmc_message_activation"

    .line 160
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUriForCmcMessageActivation:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.mdec.provider.setting/cmc_call_activation"

    .line 161
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUriForCmcCallActivation:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.mdec.provider.setting/watch_activation"

    .line 162
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUriForWatchActivation:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.mdec.provider.setting/network_mode"

    .line 163
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUriForNetworkMode:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.mdec.provider.setting/lines"

    .line 164
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUriForLines:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.mdec.provider.setting/devices"

    .line 165
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUriForDevices:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.mdec.provider.setting/sainfo"

    .line 166
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUriForSaInfo:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.mdec.provider.setting/same_wifi_network_status"

    .line 167
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUriForSameWifiNetworkStatus:Landroid/net/Uri;

    const/4 v0, 0x0

    .line 169
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcActivationChangedListenerList:Ljava/util/ArrayList;

    .line 170
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcMessageActivationChangedListenerList:Ljava/util/ArrayList;

    .line 171
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcCallActivationChangedListenerList:Ljava/util/ArrayList;

    .line 172
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcWatchActivationChangedListenerList:Ljava/util/ArrayList;

    .line 173
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcNetworkModeChangedListenerList:Ljava/util/ArrayList;

    .line 174
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcLineInfoChangedListenerList:Ljava/util/ArrayList;

    .line 175
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcDeviceInfoChangedListenerList:Ljava/util/ArrayList;

    .line 176
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcSamsungAccountInfoChangedListenerList:Ljava/util/ArrayList;

    .line 177
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mSameWifiNetworkStatusListenerList:Ljava/util/ArrayList;

    .line 179
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcActivationDbChangeObserver:Landroid/database/ContentObserver;

    .line 180
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcMessageActivationDbChangeObserver:Landroid/database/ContentObserver;

    .line 181
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcCallActivationDbChangeObserver:Landroid/database/ContentObserver;

    .line 182
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mWatchActivationDbChangeObserver:Landroid/database/ContentObserver;

    .line 183
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mNetworkModeDbChangeObserver:Landroid/database/ContentObserver;

    .line 184
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mLinesDbChangeObserver:Landroid/database/ContentObserver;

    .line 185
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mDevicesDbChangeObserver:Landroid/database/ContentObserver;

    .line 186
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mSaInfoDbChangeObserver:Landroid/database/ContentObserver;

    .line 187
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mSameWifiNetworkStatusObserver:Landroid/database/ContentObserver;

    .line 189
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/cmcsetting/CmcSettingManager;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->sendEventCmcActivation()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/cmcsetting/CmcSettingManager;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->sendEventCmcMessageActivation()V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/cmcsetting/CmcSettingManager;)Ljava/util/ArrayList;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcMessageActivationChangedListenerList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/samsung/android/cmcsetting/CmcSettingManager;)Ljava/util/ArrayList;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcCallActivationChangedListenerList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/samsung/android/cmcsetting/CmcSettingManager;)Ljava/util/ArrayList;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcWatchActivationChangedListenerList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/samsung/android/cmcsetting/CmcSettingManager;)Ljava/util/ArrayList;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcNetworkModeChangedListenerList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/samsung/android/cmcsetting/CmcSettingManager;)Ljava/util/ArrayList;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcLineInfoChangedListenerList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/samsung/android/cmcsetting/CmcSettingManager;)Ljava/util/ArrayList;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcDeviceInfoChangedListenerList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/samsung/android/cmcsetting/CmcSettingManager;)Ljava/util/ArrayList;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcSamsungAccountInfoChangedListenerList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/samsung/android/cmcsetting/CmcSettingManager;)Ljava/util/ArrayList;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mSameWifiNetworkStatusListenerList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/cmcsetting/CmcSettingManager;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->sendEventCmcCallActivation()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/cmcsetting/CmcSettingManager;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->sendEventCmcWatchActivation()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/cmcsetting/CmcSettingManager;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->sendEventCmcNetworkMode()V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/cmcsetting/CmcSettingManager;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->sendEventCmcLines()V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/cmcsetting/CmcSettingManager;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->sendEventCmcDevices()V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/cmcsetting/CmcSettingManager;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->sendEventCmcSaInfo()V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/cmcsetting/CmcSettingManager;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->sendEventSameWifiNetworkStatus()V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/android/cmcsetting/CmcSettingManager;)Ljava/util/ArrayList;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcActivationChangedListenerList:Ljava/util/ArrayList;

    return-object p0
.end method

.method private getDeviceCategoryInternal(Ljava/lang/String;)Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;
    .locals 0

    const-string p0, "Phone"

    .line 3075
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 3076
    sget-object p0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;->DEVICE_CATEGORY_PHONE:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    goto :goto_1

    :cond_0
    const-string p0, "Tablet"

    .line 3078
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 3079
    sget-object p0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;->DEVICE_CATEGORY_TABLET:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    goto :goto_1

    :cond_1
    const-string p0, "BT-Watch"

    .line 3081
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_7

    const-string p0, "Watch"

    .line 3082
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const-string p0, "Speaker"

    .line 3085
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 3086
    sget-object p0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;->DEVICE_CATEGORY_SPEAKER:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    goto :goto_1

    :cond_3
    const-string p0, "PC"

    .line 3088
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 3089
    sget-object p0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;->DEVICE_CATEGORY_PC:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    goto :goto_1

    :cond_4
    const-string p0, "TV"

    .line 3091
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 3092
    sget-object p0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;->DEVICE_CATEGORY_TV:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    goto :goto_1

    :cond_5
    const-string p0, "Laptop"

    .line 3094
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 3095
    sget-object p0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;->DEVICE_CATEGORY_LAPTOP:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    goto :goto_1

    .line 3098
    :cond_6
    sget-object p0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;->DEVICE_CATEGORY_UNDEFINED:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    goto :goto_1

    .line 3083
    :cond_7
    :goto_0
    sget-object p0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;->DEVICE_CATEGORY_BT_WATCH:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    :goto_1
    return-object p0
.end method

.method private getDeviceTypeInternal(Ljava/lang/String;)Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;
    .locals 0

    const-string p0, "pd"

    .line 3060
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 3061
    sget-object p0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;->DEVICE_TYPE_PD:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    goto :goto_0

    :cond_0
    const-string p0, "sd"

    .line 3063
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 3064
    sget-object p0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;->DEVICE_TYPE_SD:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    goto :goto_0

    .line 3067
    :cond_1
    sget-object p0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;->DEVICE_TYPE_UNDEFINED:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    :goto_0
    return-object p0
.end method

.method private getNetworkModeInternal()Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$NetworkMode;
    .locals 2

    .line 1360
    iget-object p0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "cmc_network_type"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    .line 1361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "own network mode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CmcSettingManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_0

    .line 1364
    sget-object p0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$NetworkMode;->NETWORK_MODE_USE_MOBILE_NETWORK:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$NetworkMode;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne v0, p0, :cond_1

    .line 1367
    sget-object p0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$NetworkMode;->NETWORK_MODE_WIFI_ONLY:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$NetworkMode;

    goto :goto_0

    .line 1370
    :cond_1
    sget-object p0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$NetworkMode;->NETWORK_MODE_UNDEFINED:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$NetworkMode;

    :goto_0
    return-object p0
.end method

.method private inspector(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3154
    :cond_0
    sget-boolean p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->SHIP_BUILD:Z

    if-eqz p0, :cond_1

    const-string/jumbo p0, "xxxxx"

    return-object p0

    .line 3157
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isSupportVersion(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const-string p0, "CmcSettingManager"

    const/4 v0, 0x0

    .line 3134
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 3135
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 3136
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cur version : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "2.2.00.00"

    .line 3137
    invoke-virtual {p2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const-string p1, "Not supported version or not exist"

    .line 3141
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3144
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_0
    return v0
.end method

.method private registerCmcActivationObserver()V
    .locals 3

    .line 2833
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcActivationDbChangeObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 2834
    new-instance v0, Lcom/samsung/android/cmcsetting/CmcSettingManager$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/cmcsetting/CmcSettingManager$1;-><init>(Lcom/samsung/android/cmcsetting/CmcSettingManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcActivationDbChangeObserver:Landroid/database/ContentObserver;

    .line 2842
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUriForCmcActivation:Landroid/net/Uri;

    iget-object p0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcActivationDbChangeObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method private registerCmcCallActivationObserver()V
    .locals 3

    .line 2860
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcCallActivationDbChangeObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 2861
    new-instance v0, Lcom/samsung/android/cmcsetting/CmcSettingManager$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/cmcsetting/CmcSettingManager$3;-><init>(Lcom/samsung/android/cmcsetting/CmcSettingManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcCallActivationDbChangeObserver:Landroid/database/ContentObserver;

    .line 2868
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUriForCmcCallActivation:Landroid/net/Uri;

    iget-object p0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcCallActivationDbChangeObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method private registerCmcDeviceInfoObserver()V
    .locals 3

    .line 2912
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mDevicesDbChangeObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 2913
    new-instance v0, Lcom/samsung/android/cmcsetting/CmcSettingManager$7;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/cmcsetting/CmcSettingManager$7;-><init>(Lcom/samsung/android/cmcsetting/CmcSettingManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mDevicesDbChangeObserver:Landroid/database/ContentObserver;

    .line 2920
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUriForDevices:Landroid/net/Uri;

    iget-object p0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mDevicesDbChangeObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method private registerCmcLineInfoObserver()V
    .locals 3

    .line 2899
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mLinesDbChangeObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 2900
    new-instance v0, Lcom/samsung/android/cmcsetting/CmcSettingManager$6;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/cmcsetting/CmcSettingManager$6;-><init>(Lcom/samsung/android/cmcsetting/CmcSettingManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mLinesDbChangeObserver:Landroid/database/ContentObserver;

    .line 2907
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUriForLines:Landroid/net/Uri;

    iget-object p0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mLinesDbChangeObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method private registerCmcMessageActivationObserver()V
    .locals 3

    .line 2847
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcMessageActivationDbChangeObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 2848
    new-instance v0, Lcom/samsung/android/cmcsetting/CmcSettingManager$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/cmcsetting/CmcSettingManager$2;-><init>(Lcom/samsung/android/cmcsetting/CmcSettingManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcMessageActivationDbChangeObserver:Landroid/database/ContentObserver;

    .line 2855
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUriForCmcMessageActivation:Landroid/net/Uri;

    iget-object p0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcMessageActivationDbChangeObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method private registerCmcNetworkModeObserver()V
    .locals 3

    .line 2886
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mNetworkModeDbChangeObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 2887
    new-instance v0, Lcom/samsung/android/cmcsetting/CmcSettingManager$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/cmcsetting/CmcSettingManager$5;-><init>(Lcom/samsung/android/cmcsetting/CmcSettingManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mNetworkModeDbChangeObserver:Landroid/database/ContentObserver;

    .line 2894
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUriForNetworkMode:Landroid/net/Uri;

    iget-object p0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mNetworkModeDbChangeObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method private registerCmcWatchActivationObserver()V
    .locals 3

    .line 2873
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mWatchActivationDbChangeObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 2874
    new-instance v0, Lcom/samsung/android/cmcsetting/CmcSettingManager$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/cmcsetting/CmcSettingManager$4;-><init>(Lcom/samsung/android/cmcsetting/CmcSettingManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mWatchActivationDbChangeObserver:Landroid/database/ContentObserver;

    .line 2881
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUriForWatchActivation:Landroid/net/Uri;

    iget-object p0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mWatchActivationDbChangeObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method private registerObserver(Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;)V
    .locals 2

    .line 2794
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "CmcSettingManager"

    const-string v1, "looper is null create"

    .line 2795
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2796
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 2799
    :cond_0
    sget-object v0, Lcom/samsung/android/cmcsetting/CmcSettingManager$19;->$SwitchMap$com$samsung$android$cmcsetting$CmcSettingManager$OBSERVER_TYPE:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2825
    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->registerSameWifiNetworkStatusObserver()V

    goto :goto_0

    .line 2822
    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->registerSamsungAccountInfoObserver()V

    goto :goto_0

    .line 2819
    :pswitch_2
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->registerCmcDeviceInfoObserver()V

    goto :goto_0

    .line 2816
    :pswitch_3
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->registerCmcLineInfoObserver()V

    goto :goto_0

    .line 2813
    :pswitch_4
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->registerCmcNetworkModeObserver()V

    goto :goto_0

    .line 2810
    :pswitch_5
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->registerCmcWatchActivationObserver()V

    goto :goto_0

    .line 2807
    :pswitch_6
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->registerCmcCallActivationObserver()V

    goto :goto_0

    .line 2804
    :pswitch_7
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->registerCmcMessageActivationObserver()V

    goto :goto_0

    .line 2801
    :pswitch_8
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->registerCmcActivationObserver()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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

.method private registerSameWifiNetworkStatusObserver()V
    .locals 3

    .line 2938
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mSameWifiNetworkStatusObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 2939
    new-instance v0, Lcom/samsung/android/cmcsetting/CmcSettingManager$9;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/cmcsetting/CmcSettingManager$9;-><init>(Lcom/samsung/android/cmcsetting/CmcSettingManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mSameWifiNetworkStatusObserver:Landroid/database/ContentObserver;

    .line 2946
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUriForSameWifiNetworkStatus:Landroid/net/Uri;

    iget-object p0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mSameWifiNetworkStatusObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method private registerSamsungAccountInfoObserver()V
    .locals 3

    .line 2925
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mSaInfoDbChangeObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 2926
    new-instance v0, Lcom/samsung/android/cmcsetting/CmcSettingManager$8;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/cmcsetting/CmcSettingManager$8;-><init>(Lcom/samsung/android/cmcsetting/CmcSettingManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mSaInfoDbChangeObserver:Landroid/database/ContentObserver;

    .line 2933
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUriForSaInfo:Landroid/net/Uri;

    iget-object p0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mSaInfoDbChangeObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method private sendEventCmcActivation()V
    .locals 2

    .line 3161
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/cmcsetting/CmcSettingManager$10;

    invoke-direct {v1, p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager$10;-><init>(Lcom/samsung/android/cmcsetting/CmcSettingManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3172
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private sendEventCmcCallActivation()V
    .locals 2

    .line 3191
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/cmcsetting/CmcSettingManager$12;

    invoke-direct {v1, p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager$12;-><init>(Lcom/samsung/android/cmcsetting/CmcSettingManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3202
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private sendEventCmcDevices()V
    .locals 2

    .line 3251
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/cmcsetting/CmcSettingManager$16;

    invoke-direct {v1, p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager$16;-><init>(Lcom/samsung/android/cmcsetting/CmcSettingManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3262
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private sendEventCmcLines()V
    .locals 2

    .line 3236
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/cmcsetting/CmcSettingManager$15;

    invoke-direct {v1, p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager$15;-><init>(Lcom/samsung/android/cmcsetting/CmcSettingManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3247
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private sendEventCmcMessageActivation()V
    .locals 2

    .line 3176
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/cmcsetting/CmcSettingManager$11;

    invoke-direct {v1, p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager$11;-><init>(Lcom/samsung/android/cmcsetting/CmcSettingManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3187
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private sendEventCmcNetworkMode()V
    .locals 2

    .line 3221
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/cmcsetting/CmcSettingManager$14;

    invoke-direct {v1, p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager$14;-><init>(Lcom/samsung/android/cmcsetting/CmcSettingManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3232
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private sendEventCmcSaInfo()V
    .locals 2

    .line 3266
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/cmcsetting/CmcSettingManager$17;

    invoke-direct {v1, p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager$17;-><init>(Lcom/samsung/android/cmcsetting/CmcSettingManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3277
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private sendEventCmcWatchActivation()V
    .locals 2

    .line 3206
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/cmcsetting/CmcSettingManager$13;

    invoke-direct {v1, p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager$13;-><init>(Lcom/samsung/android/cmcsetting/CmcSettingManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3217
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private sendEventSameWifiNetworkStatus()V
    .locals 2

    .line 3281
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/cmcsetting/CmcSettingManager$18;

    invoke-direct {v1, p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager$18;-><init>(Lcom/samsung/android/cmcsetting/CmcSettingManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3292
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private unregisterCmcActivationObserver()V
    .locals 2

    .line 2996
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcActivationDbChangeObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 2997
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcActivationDbChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 2998
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcActivationDbChangeObserver:Landroid/database/ContentObserver;

    :cond_0
    return-void
.end method

.method private unregisterCmcCallActivationObserver()V
    .locals 2

    .line 3010
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcCallActivationDbChangeObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 3011
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcCallActivationDbChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 3012
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcCallActivationDbChangeObserver:Landroid/database/ContentObserver;

    :cond_0
    return-void
.end method

.method private unregisterCmcDeviceInfoObserver()V
    .locals 2

    .line 3038
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mDevicesDbChangeObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 3039
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mDevicesDbChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 3040
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mDevicesDbChangeObserver:Landroid/database/ContentObserver;

    :cond_0
    return-void
.end method

.method private unregisterCmcLineInfoObserver()V
    .locals 2

    .line 3031
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mLinesDbChangeObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 3032
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mLinesDbChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 3033
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mLinesDbChangeObserver:Landroid/database/ContentObserver;

    :cond_0
    return-void
.end method

.method private unregisterCmcMessageActivationObserver()V
    .locals 2

    .line 3003
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcMessageActivationDbChangeObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 3004
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcMessageActivationDbChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 3005
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcMessageActivationDbChangeObserver:Landroid/database/ContentObserver;

    :cond_0
    return-void
.end method

.method private unregisterCmcNetworkModeObserver()V
    .locals 2

    .line 3024
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mNetworkModeDbChangeObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 3025
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mNetworkModeDbChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 3026
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mNetworkModeDbChangeObserver:Landroid/database/ContentObserver;

    :cond_0
    return-void
.end method

.method private unregisterCmcWatchActivationObserver()V
    .locals 2

    .line 3017
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mWatchActivationDbChangeObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 3018
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mWatchActivationDbChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 3019
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mWatchActivationDbChangeObserver:Landroid/database/ContentObserver;

    :cond_0
    return-void
.end method

.method private unregisterObserver(Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;)V
    .locals 1

    .line 2951
    sget-object v0, Lcom/samsung/android/cmcsetting/CmcSettingManager$19;->$SwitchMap$com$samsung$android$cmcsetting$CmcSettingManager$OBSERVER_TYPE:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2980
    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->unregisterCmcActivationObserver()V

    .line 2981
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->unregisterCmcMessageActivationObserver()V

    .line 2982
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->unregisterCmcCallActivationObserver()V

    .line 2983
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->unregisterCmcWatchActivationObserver()V

    .line 2984
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->unregisterCmcNetworkModeObserver()V

    .line 2985
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->unregisterCmcLineInfoObserver()V

    .line 2986
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->unregisterCmcDeviceInfoObserver()V

    .line 2987
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->unregisterSamsungAccountInfoObserver()V

    .line 2988
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->unregisterSameWifiNetworkStatusObserver()V

    goto :goto_0

    .line 2977
    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->unregisterSameWifiNetworkStatusObserver()V

    goto :goto_0

    .line 2974
    :pswitch_2
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->unregisterSamsungAccountInfoObserver()V

    goto :goto_0

    .line 2971
    :pswitch_3
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->unregisterCmcDeviceInfoObserver()V

    goto :goto_0

    .line 2968
    :pswitch_4
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->unregisterCmcLineInfoObserver()V

    goto :goto_0

    .line 2965
    :pswitch_5
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->unregisterCmcNetworkModeObserver()V

    goto :goto_0

    .line 2962
    :pswitch_6
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->unregisterCmcWatchActivationObserver()V

    goto :goto_0

    .line 2959
    :pswitch_7
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->unregisterCmcCallActivationObserver()V

    goto :goto_0

    .line 2956
    :pswitch_8
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->unregisterCmcMessageActivationObserver()V

    goto :goto_0

    .line 2953
    :pswitch_9
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->unregisterCmcActivationObserver()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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

.method private unregisterSameWifiNetworkStatusObserver()V
    .locals 2

    .line 3052
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mSameWifiNetworkStatusObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 3053
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mSameWifiNetworkStatusObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 3054
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mSameWifiNetworkStatusObserver:Landroid/database/ContentObserver;

    :cond_0
    return-void
.end method

.method private unregisterSamsungAccountInfoObserver()V
    .locals 2

    .line 3045
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mSaInfoDbChangeObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 3046
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mSaInfoDbChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 3047
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mSaInfoDbChangeObserver:Landroid/database/ContentObserver;

    :cond_0
    return-void
.end method


# virtual methods
.method public deInit()V
    .locals 2

    const-string v0, "CmcSettingManager"

    const-string v1, "deInit"

    .line 229
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-virtual {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->unregisterListener()Z

    const/4 v0, 0x0

    .line 231
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public getCmcCallActivation(Ljava/lang/String;)Z
    .locals 6

    .line 1084
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCmcCallActivation : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CmcSettingManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "context is null"

    .line 1086
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/4 v0, 0x1

    .line 1092
    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "device_id"

    .line 1093
    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1094
    iget-object p1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUri:Landroid/net/Uri;

    const-string/jumbo v4, "v1/get_activations"

    const/4 v5, 0x0

    invoke-virtual {p1, p0, v4, v5, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string p1, "result"

    const/4 v3, -0x1

    .line 1096
    invoke-virtual {p0, p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v0, :cond_1

    const-string p1, "call_activation"

    .line 1098
    invoke-virtual {p0, p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    .line 1099
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call inf : getCmcCallActivation success : "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p0, v0, :cond_2

    move v2, v0

    goto :goto_0

    .line 1103
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "call inf : getCmcCallActivation fail : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "error_reason"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1107
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "exception is occured : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return v2
.end method

.method public getCmcSupported()Z
    .locals 5

    const-string v0, "CmcSettingManager"

    const-string v1, "getCmcSupported"

    .line 783
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string p0, "context is null"

    .line 785
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 791
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUri:Landroid/net/Uri;

    const-string/jumbo v3, "v1/get_cmc_supported"

    const/4 v4, 0x0

    invoke-virtual {v1, p0, v3, v4, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string v1, "result"

    const/4 v3, -0x1

    .line 793
    invoke-virtual {p0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    const-string v1, "cmc_supported"

    .line 795
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    .line 796
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call inf : getCmcSupported success : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, p0

    goto :goto_0

    .line 800
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call inf : getCmcSupported fail : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "error_reason"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 804
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception is occured : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return v2
.end method

.method public getDeviceIdList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "CmcSettingManager"

    const-string v1, "getDeviceIdList"

    .line 1677
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1678
    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string p0, "context is null"

    .line 1679
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 1685
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUri:Landroid/net/Uri;

    const-string/jumbo v3, "v1/get_device_id_list"

    invoke-virtual {v1, p0, v3, v2, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string v1, "result"

    const/4 v3, -0x1

    .line 1687
    invoke-virtual {p0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    const-string v1, "device_id_list"

    .line 1689
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 1690
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call inf : getDeviceIdList success : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, p0

    goto :goto_0

    .line 1694
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call inf : getDeviceIdList fail : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "error_reason"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1698
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception is occured : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-object v2
.end method

.method public getDeviceInfo(Ljava/lang/String;)Lcom/samsung/android/cmcsetting/CmcDeviceInfo;
    .locals 8

    .line 1963
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDeviceInfo : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CmcSettingManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1964
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "context is null"

    .line 1965
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 1971
    :cond_0
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "device_id"

    .line 1972
    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1973
    iget-object v3, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUri:Landroid/net/Uri;

    const-string/jumbo v5, "v1/get_device_info"

    invoke-virtual {v3, v4, v5, v2, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_11

    const-string v3, "result"

    const/4 v4, -0x1

    .line 1975
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 1977
    new-instance v3, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;

    invoke-direct {v3}, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;-><init>()V

    .line 1978
    invoke-virtual {v3, p1}, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->setDeviceId(Ljava/lang/String;)V

    .line 1980
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 1981
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "device_name"

    .line 1982
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1983
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->setDeviceName(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v6, "device_category"

    .line 1985
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1986
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getDeviceCategoryInternal(Ljava/lang/String;)Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->setDeviceCategory(Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;)V

    goto :goto_0

    :cond_3
    const-string v6, "device_type"

    .line 1988
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1989
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getDeviceTypeInternal(Ljava/lang/String;)Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->setDeviceType(Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;)V

    goto :goto_0

    :cond_4
    const-string v6, "activation"

    .line 1991
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_6

    .line 1992
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v4, :cond_5

    move v7, v4

    :cond_5
    invoke-virtual {v3, v7}, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->setActivation(Z)V

    goto :goto_0

    :cond_6
    const-string v6, "message_activation"

    .line 1994
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1995
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v4, :cond_7

    move v7, v4

    :cond_7
    invoke-virtual {v3, v7}, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->setMessageActivation(Z)V

    goto :goto_0

    :cond_8
    const-string v6, "call_activation"

    .line 1997
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1998
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v4, :cond_9

    move v7, v4

    :cond_9
    invoke-virtual {v3, v7}, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->setCallActivation(Z)V

    goto :goto_0

    :cond_a
    const-string v6, "message_allowed_sd_by_pd"

    .line 2000
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 2001
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v4, :cond_b

    move v7, v4

    :cond_b
    invoke-virtual {v3, v7}, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->setMessageAllowedSdByPd(Z)V

    goto/16 :goto_0

    :cond_c
    const-string v6, "call_allowed_sd_by_pd"

    .line 2003
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 2004
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v4, :cond_d

    move v7, v4

    :cond_d
    invoke-virtual {v3, v7}, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->setCallAllowedSdByPd(Z)V

    goto/16 :goto_0

    :cond_e
    const-string v6, "emergency_supported"

    .line 2006
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2007
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v3, v5}, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->setEmergencyCallSupported(Z)V

    goto/16 :goto_0

    :cond_f
    move-object v2, v3

    goto :goto_1

    .line 2013
    :cond_10
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "call inf : getDeviceInfo fail : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "error_reason"

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 2017
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "exception is occured : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    :goto_1
    return-object v2
.end method

.method public getDeviceType(Ljava/lang/String;)Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;
    .locals 6

    .line 1778
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDeviceType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CmcSettingManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1779
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "context is null"

    .line 1780
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 1784
    :cond_0
    sget-object v0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;->DEVICE_TYPE_UNDEFINED:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    .line 1786
    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "device_id"

    .line 1787
    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1788
    iget-object p1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v4, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUri:Landroid/net/Uri;

    const-string/jumbo v5, "v1/get_device_type"

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v2, "result"

    const/4 v3, -0x1

    .line 1790
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const-string v2, "device_type"

    const-string v3, ""

    .line 1792
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1793
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call inf : getDeviceType success : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1794
    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getDeviceTypeInternal(Ljava/lang/String;)Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    move-result-object v0

    goto :goto_0

    .line 1797
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call inf : getDeviceType fail : "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "error_reason"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1801
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception is occured : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-object v0
.end method

.method public getLineActiveSimSlot()I
    .locals 5

    const-string v0, "CmcSettingManager"

    const-string v1, "getLineActiveSimSlot"

    .line 1614
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    const/4 v2, -0x1

    if-nez v1, :cond_0

    const-string p0, "context is null"

    .line 1616
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1622
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUri:Landroid/net/Uri;

    const-string/jumbo v3, "v1/get_line_active_sim_slot"

    const/4 v4, 0x0

    invoke-virtual {v1, p0, v3, v4, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string v1, "result"

    .line 1624
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    const-string v1, "active_sim_slot"

    .line 1626
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    .line 1627
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call inf : getActiveSimSlot success : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, p0

    goto :goto_0

    .line 1631
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call inf : getActiveSimSlot fail : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "error_reason"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1635
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception is occured : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return v2
.end method

.method public getLineId()Ljava/lang/String;
    .locals 6

    const-string v0, ""

    const-string v1, "CmcSettingManager"

    const-string v2, "getLineId"

    .line 1485
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    iget-object v2, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const-string p0, "context is null"

    .line 1487
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    .line 1493
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUri:Landroid/net/Uri;

    const-string/jumbo v5, "v1/get_line_id"

    invoke-virtual {v2, v4, v5, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v4, "result"

    const/4 v5, -0x1

    .line 1495
    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    const-string v4, "line_id"

    .line 1497
    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1498
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLineId success : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1502
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLineId fail : "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "error_reason"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception is occured : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object v0, v3

    :goto_0
    return-object v0
.end method

.method public getLineImpu()Ljava/lang/String;
    .locals 6

    const-string v0, ""

    const-string v1, "CmcSettingManager"

    const-string v2, "getLineImpu"

    .line 1645
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1646
    iget-object v2, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const-string p0, "context is null"

    .line 1647
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    .line 1653
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUri:Landroid/net/Uri;

    const-string/jumbo v5, "v1/get_line_impu"

    invoke-virtual {v2, v4, v5, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v4, "result"

    const/4 v5, -0x1

    .line 1655
    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    const-string v4, "impu"

    .line 1657
    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1658
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call inf : getLineImpu success : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1662
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call inf : getLineImpu fail : "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "error_reason"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1667
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception is occured : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object v0, v3

    :goto_0
    return-object v0
.end method

.method public getLinePcscfAddrList()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "CmcSettingManager"

    const-string v1, "getLinePcscfAddrList"

    .line 1582
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string p0, "context is null"

    .line 1584
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 1590
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUri:Landroid/net/Uri;

    const-string/jumbo v4, "v1/get_line_pcscf_addr_list"

    invoke-virtual {v1, v3, v4, v2, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v3, "result"

    const/4 v4, -0x1

    .line 1592
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const-string v3, "pcscf_addr_list"

    .line 1594
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1595
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call inf : getPcscfAddrList success : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    goto :goto_0

    .line 1599
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call inf : getPcscfAddrList fail : "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "error_reason"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1603
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception is occured : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-object v2
.end method

.method public getOwnCmcActivation()Z
    .locals 4

    const-string v0, "CmcSettingManager"

    const-string v1, "getOwnCmcActivation"

    .line 876
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    iget-object p0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const-string p0, "context is null"

    .line 878
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 903
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "cmc_activation"

    invoke-static {p0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    .line 904
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cmc activation : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    move v1, v0

    :cond_1
    return v1
.end method

.method public getOwnDeviceId()Ljava/lang/String;
    .locals 6

    const-string v0, ""

    const-string v1, "CmcSettingManager"

    const-string v2, "getOwnDeviceId"

    .line 1179
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    iget-object v2, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const-string p0, "context is null"

    .line 1181
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    .line 1187
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUri:Landroid/net/Uri;

    const-string/jumbo v5, "v1/get_own_device_id"

    invoke-virtual {v2, v4, v5, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, "result"

    const/4 v4, -0x1

    .line 1189
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const-string v3, "own_device_id"

    .line 1191
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1192
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call inf : getOwnDeviceId success : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1196
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call inf : getOwnDeviceId fail : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "error_reason"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    move-object v0, v3

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1201
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception is occurred : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    iget-object p0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "cmc_device_id"

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1204
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "own device id: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getOwnDeviceType()Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;
    .locals 4

    const-string v0, "CmcSettingManager"

    const-string v1, "getOwnDeviceType"

    .line 1151
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    const-string p0, "context is null"

    .line 1153
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 1157
    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "cmc_device_type"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "own device type - db : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1160
    iget-object p0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string v0, "com.samsung.feature.device_category_tablet"

    .line 1162
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;->DEVICE_TYPE_SD:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;->DEVICE_TYPE_PD:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    :goto_0
    return-object p0

    :cond_2
    const-string p0, "ro.build.characteristics"

    const-string v1, ""

    .line 1166
    invoke-static {p0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "own device type - characteristics : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "tablet"

    .line 1168
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;->DEVICE_TYPE_SD:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    goto :goto_1

    :cond_3
    sget-object p0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;->DEVICE_TYPE_PD:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    :goto_1
    return-object p0

    .line 1171
    :cond_4
    invoke-direct {p0, v1}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getDeviceTypeInternal(Ljava/lang/String;)Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    move-result-object p0

    return-object p0
.end method

.method public getOwnNetworkMode()Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$NetworkMode;
    .locals 2

    const-string v0, "CmcSettingManager"

    const-string v1, "getOwnNetworkMode"

    .line 1321
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    const-string p0, "context is null"

    .line 1323
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 1356
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getNetworkModeInternal()Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$NetworkMode;

    move-result-object p0

    return-object p0
.end method

.method public getOwnServiceVersion()Ljava/lang/String;
    .locals 3

    const-string v0, "CmcSettingManager"

    const-string v1, "getOwnServiceVersion"

    .line 1245
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    iget-object p0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    if-nez p0, :cond_0

    const-string p0, "context is null"

    .line 1247
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 1273
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "cmc_service_version"

    invoke-static {p0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1274
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "own service version in global : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "ro.cmc.version"

    const-string v1, ""

    .line 1276
    invoke-static {p0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "own service version in prop : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object p0
.end method

.method public getSamsungAccountInfo()Lcom/samsung/android/cmcsetting/CmcSaInfo;
    .locals 5

    const-string v0, "CmcSettingManager"

    const-string v1, "getSamsungAccountInfo"

    .line 2195
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2196
    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string p0, "context is null"

    .line 2197
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 2201
    :cond_0
    new-instance v1, Lcom/samsung/android/cmcsetting/CmcSaInfo;

    invoke-direct {v1}, Lcom/samsung/android/cmcsetting/CmcSaInfo;-><init>()V

    .line 2203
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object p0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUri:Landroid/net/Uri;

    const-string/jumbo v4, "v1/get_sa_info"

    invoke-virtual {v3, p0, v4, v2, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string v2, "result"

    const/4 v3, -0x1

    .line 2205
    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const-string v2, "samsung_user_id"

    .line 2207
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/cmcsetting/CmcSaInfo;->setSaUserId(Ljava/lang/String;)V

    const-string v2, "access_token"

    .line 2208
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/samsung/android/cmcsetting/CmcSaInfo;->setSaAccessToken(Ljava/lang/String;)V

    const-string p0, "call inf : getSamsungAccountInfo success"

    .line 2209
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2211
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call inf : getSamsungAccountInfo fail : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "error_reason"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2215
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception is occured : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-object v1
.end method

.method public getSelectedSimSlotsOnPd()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "CmcSettingManager"

    const-string v1, "getSelectedSimSlotsOnPd"

    .line 2360
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2361
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2362
    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    const-string p0, "context is null"

    .line 2363
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2364
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 2366
    :cond_0
    sget-boolean v2, Lcom/samsung/android/cmcsetting/CmcSettingManager;->IS_DUAL_SIM_SUPPORTED:Z

    if-nez v2, :cond_1

    const-string p0, "invalid oneui version"

    .line 2367
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2368
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 2372
    :cond_1
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUri:Landroid/net/Uri;

    const-string/jumbo v2, "v1/get_selected_sim_slots_on_pd"

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_4

    const-string v1, "result"

    const/4 v2, -0x1

    .line 2374
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    const-string v1, "selected_sim_slots_on_pd"

    .line 2376
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    const-string v1, "call inf : getSelectedSimSlotsOnPd success"

    .line 2377
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_2

    const-string p0, "selectedSimSlotsList is null"

    .line 2379
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2380
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    return-object p0

    .line 2385
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call inf : getSelectedSimSlotsOnPd fail : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "error_reason"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2389
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception is occured : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2391
    :cond_4
    :goto_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public init(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "CmcSettingManager"

    const-string v1, "init : CmcSettingManager version : 2.0.3"

    .line 202
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "context : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    .line 206
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "cmc_package_name"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 207
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "com.samsung.android.mdecservice"

    .line 210
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->isSupportVersion(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 211
    iput-object p1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const-string/jumbo p0, "valid package is not exist"

    .line 215
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string p0, "context is null"

    .line 219
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public isCallAllowedSdByPd(Ljava/lang/String;)Z
    .locals 6

    .line 1878
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isCallAllowedSdByPd : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CmcSettingManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1879
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "context is null"

    .line 1880
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/4 v0, 0x1

    .line 1886
    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "device_id"

    .line 1887
    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1888
    iget-object p1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUri:Landroid/net/Uri;

    const-string/jumbo v4, "v1/get_call_allowed_sd_by_pd"

    const/4 v5, 0x0

    invoke-virtual {p1, p0, v4, v5, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string p1, "result"

    const/4 v3, -0x1

    .line 1890
    invoke-virtual {p0, p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v0, :cond_1

    const-string p1, "call_allowed_sd_by_pd"

    .line 1892
    invoke-virtual {p0, p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    .line 1893
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call inf : isCallAllowedSdByPd success : "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p0, v0, :cond_2

    move v2, v0

    goto :goto_0

    .line 1897
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "call inf : isCallAllowedSdByPd fail : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "error_reason"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1901
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "exception is occured : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return v2
.end method

.method public isDualSimSupportedOnPd()Z
    .locals 5

    const-string v0, "CmcSettingManager"

    const-string v1, "isDualSimSupportedOnPd"

    .line 2326
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2327
    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string p0, "context is null"

    .line 2328
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 2331
    :cond_0
    sget-boolean v3, Lcom/samsung/android/cmcsetting/CmcSettingManager;->IS_DUAL_SIM_SUPPORTED:Z

    if-nez v3, :cond_1

    const-string p0, "invalid oneui version"

    .line 2332
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 2337
    :cond_1
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUri:Landroid/net/Uri;

    const-string/jumbo v3, "v1/is_dual_sim_supported_on_pd"

    const/4 v4, 0x0

    invoke-virtual {v1, p0, v3, v4, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_3

    const-string v1, "result"

    const/4 v3, -0x1

    .line 2339
    invoke-virtual {p0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    const-string v1, "dual_sim_supported_on_pd"

    .line 2341
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    .line 2342
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call inf : isDualSimSupportedOnPd success : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 2346
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call inf : isDualSimSupportedOnPd fail : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "error_reason"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2350
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception is occured : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return v2
.end method

.method public isEmergencyCallSupported()Z
    .locals 10

    const-string v0, "CmcSettingManager"

    const-string v1, "isEmergencyCallSupported"

    .line 2242
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2243
    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string p0, "context is null"

    .line 2244
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 2248
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getOwnCmcActivation()Z

    move-result v1

    if-nez v1, :cond_1

    const-string p0, "cmc activation is false"

    .line 2249
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 2253
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getDeviceIdList()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 2254
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_2

    goto :goto_1

    .line 2259
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getOwnDeviceId()Ljava/lang/String;

    move-result-object v3

    .line 2260
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string p0, "ownDeviceId is empty"

    .line 2261
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 2268
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v4, v2

    move v5, v4

    :cond_4
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2269
    invoke-virtual {p0, v6}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getDeviceInfo(Ljava/lang/String;)Lcom/samsung/android/cmcsetting/CmcDeviceInfo;

    move-result-object v7

    if-nez v7, :cond_5

    goto :goto_0

    .line 2274
    :cond_5
    invoke-virtual {v7}, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->getDeviceType()Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    move-result-object v8

    .line 2275
    sget-object v9, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;->DEVICE_TYPE_PD:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    if-ne v8, v9, :cond_6

    .line 2276
    invoke-virtual {v7}, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->isEmergencyCallSupported()Z

    move-result v5

    .line 2278
    :cond_6
    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2279
    invoke-virtual {v7}, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->isEmergencyCallSupported()Z

    move-result v4

    goto :goto_0

    .line 2282
    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isOwnEmergencyCallSupported("

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "), isPdEmergencyCallSupported("

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_8

    if-eqz v5, :cond_8

    const/4 v2, 0x1

    :cond_8
    return v2

    :cond_9
    :goto_1
    const-string p0, "deviceIdList is empty"

    .line 2255
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public isSameWifiNetworkOnly()Z
    .locals 4

    const-string v0, "CmcSettingManager"

    const-string v1, "isSameWifiNetworkOnly"

    .line 2226
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2227
    iget-object p0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const-string p0, "context is null"

    .line 2228
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 2232
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "cmc_same_wifi_network_status"

    invoke-static {p0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    .line 2233
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sameWifiNetworkStatus : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    move v1, v0

    :cond_1
    return v1
.end method

.method public registerListener(Lcom/samsung/android/cmcsetting/listeners/CmcActivationInfoChangedListener;)Z
    .locals 3

    const-string v0, "CmcSettingManager"

    const-string v1, "registerListener : CmcActivationInfoChangedListener"

    .line 240
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string p0, "context is null"

    .line 242
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    if-nez p1, :cond_1

    const-string p0, "listener is null"

    .line 246
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcActivationChangedListenerList:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 251
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcActivationChangedListenerList:Ljava/util/ArrayList;

    .line 253
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcActivationChangedListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    sget-object p1, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;->mainCctivation:Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->registerObserver(Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;)V

    const/4 p0, 0x1

    return p0
.end method

.method public registerListener(Lcom/samsung/android/cmcsetting/listeners/CmcCallActivationInfoChangedListener;)Z
    .locals 3

    const-string v0, "CmcSettingManager"

    const-string v1, "registerListener : CmcCallActivationInfoChangedListener"

    .line 348
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string p0, "context is null"

    .line 350
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    if-nez p1, :cond_1

    const-string p0, "listener is null"

    .line 354
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 358
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcCallActivationChangedListenerList:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 359
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcCallActivationChangedListenerList:Ljava/util/ArrayList;

    .line 361
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcCallActivationChangedListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    sget-object p1, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;->callActivation:Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->registerObserver(Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;)V

    const/4 p0, 0x1

    return p0
.end method

.method public registerListener(Lcom/samsung/android/cmcsetting/listeners/CmcDeviceInfoChangedListener;)Z
    .locals 3

    const-string v0, "CmcSettingManager"

    const-string v1, "registerListener : CmcDeviceInfoChangedListener"

    .line 564
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string p0, "context is null"

    .line 566
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    if-nez p1, :cond_1

    const-string p0, "listener is null"

    .line 570
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 574
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcDeviceInfoChangedListenerList:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 575
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcDeviceInfoChangedListenerList:Ljava/util/ArrayList;

    .line 577
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcDeviceInfoChangedListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 578
    sget-object p1, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;->deviceInfo:Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->registerObserver(Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;)V

    const/4 p0, 0x1

    return p0
.end method

.method public registerListener(Lcom/samsung/android/cmcsetting/listeners/CmcLineInfoChangedListener;)Z
    .locals 3

    const-string v0, "CmcSettingManager"

    const-string v1, "registerListener : CmcLineInfoChangedListener"

    .line 510
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string p0, "context is null"

    .line 512
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    if-nez p1, :cond_1

    const-string p0, "listener is null"

    .line 516
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 520
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcLineInfoChangedListenerList:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 521
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcLineInfoChangedListenerList:Ljava/util/ArrayList;

    .line 523
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcLineInfoChangedListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 524
    sget-object p1, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;->lineInfo:Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->registerObserver(Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;)V

    const/4 p0, 0x1

    return p0
.end method

.method public registerListener(Lcom/samsung/android/cmcsetting/listeners/CmcNetworkModeInfoChangedListener;)Z
    .locals 3

    const-string v0, "CmcSettingManager"

    const-string v1, "registerListener : CmcNetworkModeInfoChangedListener"

    .line 456
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string p0, "context is null"

    .line 458
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    if-nez p1, :cond_1

    const-string p0, "listener is null"

    .line 462
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 466
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcNetworkModeChangedListenerList:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 467
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcNetworkModeChangedListenerList:Ljava/util/ArrayList;

    .line 469
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcNetworkModeChangedListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    sget-object p1, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;->networkMode:Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->registerObserver(Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;)V

    const/4 p0, 0x1

    return p0
.end method

.method public registerListener(Lcom/samsung/android/cmcsetting/listeners/CmcSameWifiNetworkStatusListener;)Z
    .locals 3

    const-string v0, "CmcSettingManager"

    const-string v1, "registerListener : CmcSameWifiNetworkStatusListener"

    .line 672
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string p0, "context is null"

    .line 674
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    if-nez p1, :cond_1

    const-string p0, "listener is null"

    .line 678
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 682
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mSameWifiNetworkStatusListenerList:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 683
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mSameWifiNetworkStatusListenerList:Ljava/util/ArrayList;

    .line 685
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mSameWifiNetworkStatusListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 686
    sget-object p1, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;->sameWifiNetworkStatus:Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->registerObserver(Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;)V

    const/4 p0, 0x1

    return p0
.end method

.method public registerListener(Lcom/samsung/android/cmcsetting/listeners/CmcSamsungAccountInfoChangedListener;)Z
    .locals 3

    const-string v0, "CmcSettingManager"

    const-string v1, "registerListener : CmcSamsungAccountInfoChangedListener"

    .line 618
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string p0, "context is null"

    .line 620
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    if-nez p1, :cond_1

    const-string p0, "listener is null"

    .line 624
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 628
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcSamsungAccountInfoChangedListenerList:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 629
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcSamsungAccountInfoChangedListenerList:Ljava/util/ArrayList;

    .line 631
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcSamsungAccountInfoChangedListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 632
    sget-object p1, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;->saInfo:Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->registerObserver(Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;)V

    const/4 p0, 0x1

    return p0
.end method

.method public unregisterListener()Z
    .locals 3

    const-string v0, "CmcSettingManager"

    const-string/jumbo v1, "unregisterListener : all"

    .line 725
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    const-string p0, "context is null"

    .line 727
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 730
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "context : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 732
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcActivationChangedListenerList:Ljava/util/ArrayList;

    .line 733
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcMessageActivationChangedListenerList:Ljava/util/ArrayList;

    .line 734
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcCallActivationChangedListenerList:Ljava/util/ArrayList;

    .line 735
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcWatchActivationChangedListenerList:Ljava/util/ArrayList;

    .line 736
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcNetworkModeChangedListenerList:Ljava/util/ArrayList;

    .line 737
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcLineInfoChangedListenerList:Ljava/util/ArrayList;

    .line 738
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcDeviceInfoChangedListenerList:Ljava/util/ArrayList;

    .line 739
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcSamsungAccountInfoChangedListenerList:Ljava/util/ArrayList;

    .line 740
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mSameWifiNetworkStatusListenerList:Ljava/util/ArrayList;

    .line 741
    sget-object v0, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;->all:Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    invoke-direct {p0, v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->unregisterObserver(Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;)V

    const/4 p0, 0x1

    return p0
.end method
