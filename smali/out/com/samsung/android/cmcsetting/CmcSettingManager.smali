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

.field private static IS_MORE_THAN_U_OS:Z

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
    .registers 3

    const-string/jumbo v0, "ro.product_ship"

    const-string v1, "false"

    .line 39
    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->SHIP_BUILD:Z

    const-string/jumbo v0, "ro.build.version.oneui"

    const/4 v1, -0x1

    .line 40
    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const v1, 0xc3b4

    const/4 v2, 0x1

    if-lt v0, v1, :cond_22

    move v0, v2

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :goto_23
    sput-boolean v0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->IS_DUAL_SIM_SUPPORTED:Z

    .line 41
    sput-boolean v2, Lcom/samsung/android/cmcsetting/CmcSettingManager;->IS_MORE_THAN_U_OS:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "content://com.samsung.android.mdec.provider.setting"

    .line 178
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUri:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.mdec.provider.setting/cmc_activation"

    .line 179
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUriForCmcActivation:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.mdec.provider.setting/cmc_message_activation"

    .line 180
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUriForCmcMessageActivation:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.mdec.provider.setting/cmc_call_activation"

    .line 181
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUriForCmcCallActivation:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.mdec.provider.setting/watch_activation"

    .line 182
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUriForWatchActivation:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.mdec.provider.setting/network_mode"

    .line 183
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUriForNetworkMode:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.mdec.provider.setting/lines"

    .line 184
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUriForLines:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.mdec.provider.setting/devices"

    .line 185
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUriForDevices:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.mdec.provider.setting/sainfo"

    .line 186
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUriForSaInfo:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.mdec.provider.setting/same_wifi_network_status"

    .line 187
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUriForSameWifiNetworkStatus:Landroid/net/Uri;

    const/4 v0, 0x0

    .line 189
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcActivationChangedListenerList:Ljava/util/ArrayList;

    .line 190
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcMessageActivationChangedListenerList:Ljava/util/ArrayList;

    .line 191
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcCallActivationChangedListenerList:Ljava/util/ArrayList;

    .line 192
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcWatchActivationChangedListenerList:Ljava/util/ArrayList;

    .line 193
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcNetworkModeChangedListenerList:Ljava/util/ArrayList;

    .line 194
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcLineInfoChangedListenerList:Ljava/util/ArrayList;

    .line 195
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcDeviceInfoChangedListenerList:Ljava/util/ArrayList;

    .line 196
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcSamsungAccountInfoChangedListenerList:Ljava/util/ArrayList;

    .line 197
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mSameWifiNetworkStatusListenerList:Ljava/util/ArrayList;

    .line 199
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcActivationDbChangeObserver:Landroid/database/ContentObserver;

    .line 200
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcMessageActivationDbChangeObserver:Landroid/database/ContentObserver;

    .line 201
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcCallActivationDbChangeObserver:Landroid/database/ContentObserver;

    .line 202
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mWatchActivationDbChangeObserver:Landroid/database/ContentObserver;

    .line 203
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mNetworkModeDbChangeObserver:Landroid/database/ContentObserver;

    .line 204
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mLinesDbChangeObserver:Landroid/database/ContentObserver;

    .line 205
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mDevicesDbChangeObserver:Landroid/database/ContentObserver;

    .line 206
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mSaInfoDbChangeObserver:Landroid/database/ContentObserver;

    .line 207
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mSameWifiNetworkStatusObserver:Landroid/database/ContentObserver;

    .line 209
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/cmcsetting/CmcSettingManager;)V
    .registers 1

    .line 31
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->sendEventCmcActivation()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/cmcsetting/CmcSettingManager;)V
    .registers 1

    .line 31
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->sendEventCmcMessageActivation()V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/cmcsetting/CmcSettingManager;)Ljava/util/ArrayList;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcMessageActivationChangedListenerList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/samsung/android/cmcsetting/CmcSettingManager;)Ljava/util/ArrayList;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcCallActivationChangedListenerList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/samsung/android/cmcsetting/CmcSettingManager;)Ljava/util/ArrayList;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcWatchActivationChangedListenerList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/samsung/android/cmcsetting/CmcSettingManager;)Ljava/util/ArrayList;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcNetworkModeChangedListenerList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/samsung/android/cmcsetting/CmcSettingManager;)Ljava/util/ArrayList;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcLineInfoChangedListenerList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/samsung/android/cmcsetting/CmcSettingManager;)Ljava/util/ArrayList;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcDeviceInfoChangedListenerList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/samsung/android/cmcsetting/CmcSettingManager;)Ljava/util/ArrayList;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcSamsungAccountInfoChangedListenerList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/samsung/android/cmcsetting/CmcSettingManager;)Ljava/util/ArrayList;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mSameWifiNetworkStatusListenerList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/cmcsetting/CmcSettingManager;)V
    .registers 1

    .line 31
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->sendEventCmcCallActivation()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/cmcsetting/CmcSettingManager;)V
    .registers 1

    .line 31
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->sendEventCmcWatchActivation()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/cmcsetting/CmcSettingManager;)V
    .registers 1

    .line 31
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->sendEventCmcNetworkMode()V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/cmcsetting/CmcSettingManager;)V
    .registers 1

    .line 31
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->sendEventCmcLines()V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/cmcsetting/CmcSettingManager;)V
    .registers 1

    .line 31
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->sendEventCmcDevices()V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/cmcsetting/CmcSettingManager;)V
    .registers 1

    .line 31
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->sendEventCmcSaInfo()V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/cmcsetting/CmcSettingManager;)V
    .registers 1

    .line 31
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->sendEventSameWifiNetworkStatus()V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/android/cmcsetting/CmcSettingManager;)Ljava/util/ArrayList;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcActivationChangedListenerList:Ljava/util/ArrayList;

    return-object p0
.end method

.method private getDeviceCategoryInternal(Ljava/lang/String;)Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;
    .registers 2

    const-string p0, "Phone"

    .line 2996
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_b

    .line 2997
    sget-object p0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;->DEVICE_CATEGORY_PHONE:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    goto :goto_63

    :cond_b
    const-string p0, "Tablet"

    .line 2999
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_16

    .line 3000
    sget-object p0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;->DEVICE_CATEGORY_TABLET:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    goto :goto_63

    :cond_16
    const-string p0, "BT-Watch"

    .line 3002
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_61

    const-string p0, "Watch"

    .line 3003
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_27

    goto :goto_61

    :cond_27
    const-string p0, "Speaker"

    .line 3006
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_32

    .line 3007
    sget-object p0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;->DEVICE_CATEGORY_SPEAKER:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    goto :goto_63

    :cond_32
    const-string p0, "PC"

    .line 3009
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3d

    .line 3010
    sget-object p0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;->DEVICE_CATEGORY_PC:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    goto :goto_63

    :cond_3d
    const-string p0, "TV"

    .line 3012
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_48

    .line 3013
    sget-object p0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;->DEVICE_CATEGORY_TV:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    goto :goto_63

    :cond_48
    const-string p0, "Laptop"

    .line 3015
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_53

    .line 3016
    sget-object p0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;->DEVICE_CATEGORY_LAPTOP:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    goto :goto_63

    :cond_53
    const-string p0, "VST"

    .line 3018
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5e

    .line 3019
    sget-object p0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;->DEVICE_CATEGORY_VST:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    goto :goto_63

    .line 3022
    :cond_5e
    sget-object p0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;->DEVICE_CATEGORY_UNDEFINED:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    goto :goto_63

    .line 3004
    :cond_61
    :goto_61
    sget-object p0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;->DEVICE_CATEGORY_BT_WATCH:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    :goto_63
    return-object p0
.end method

.method private getDeviceTypeInternal(Ljava/lang/String;)Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;
    .registers 2

    const-string p0, "pd"

    .line 2981
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_b

    .line 2982
    sget-object p0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;->DEVICE_TYPE_PD:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    goto :goto_19

    :cond_b
    const-string/jumbo p0, "sd"

    .line 2984
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_17

    .line 2985
    sget-object p0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;->DEVICE_TYPE_SD:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    goto :goto_19

    .line 2988
    :cond_17
    sget-object p0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;->DEVICE_TYPE_UNDEFINED:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    :goto_19
    return-object p0
.end method

.method private getNetworkModeInternal()Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$NetworkMode;
    .registers 3

    .line 1155
    iget-object p0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "cmc_network_type"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    .line 1156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "own network mode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CmcSettingManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_28

    .line 1159
    sget-object p0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$NetworkMode;->NETWORK_MODE_USE_MOBILE_NETWORK:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$NetworkMode;

    goto :goto_30

    :cond_28
    const/4 v0, 0x1

    if-ne v0, p0, :cond_2e

    .line 1162
    sget-object p0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$NetworkMode;->NETWORK_MODE_WIFI_ONLY:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$NetworkMode;

    goto :goto_30

    .line 1165
    :cond_2e
    sget-object p0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$NetworkMode;->NETWORK_MODE_UNDEFINED:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$NetworkMode;

    :goto_30
    return-object p0
.end method

.method private inspector(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 3068
    :cond_4
    sget-boolean p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->SHIP_BUILD:Z

    if-eqz p0, :cond_c

    const-string/jumbo p0, "xxxxx"

    return-object p0

    .line 3071
    :cond_c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isApiSupportedWithDualSimSupported()Z
    .registers 2

    .line 2707
    sget-boolean p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->IS_DUAL_SIM_SUPPORTED:Z

    if-nez p0, :cond_d

    const-string p0, "CmcSettingManager"

    const-string v0, "invalid oneui version"

    .line 2708
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_d
    const/4 p0, 0x1

    return p0
.end method

.method private isCmcPackageInstalled(Landroid/content/Context;)Z
    .registers 4

    const/4 p0, 0x0

    .line 3056
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "com.samsung.android.mdecservice"

    invoke-virtual {p1, v0, p0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_a} :catch_c

    const/4 p0, 0x1

    return p0

    :catch_c
    move-exception p1

    .line 3059
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cmc package is not exist : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CmcSettingManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method private registerCmcActivationObserver()V
    .registers 4

    .line 2754
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcActivationDbChangeObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_1e

    .line 2755
    new-instance v0, Lcom/samsung/android/cmcsetting/CmcSettingManager$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/cmcsetting/CmcSettingManager$1;-><init>(Lcom/samsung/android/cmcsetting/CmcSettingManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcActivationDbChangeObserver:Landroid/database/ContentObserver;

    .line 2763
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUriForCmcActivation:Landroid/net/Uri;

    iget-object p0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcActivationDbChangeObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_1e
    return-void
.end method

.method private registerCmcCallActivationObserver()V
    .registers 4

    .line 2781
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcCallActivationDbChangeObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_1e

    .line 2782
    new-instance v0, Lcom/samsung/android/cmcsetting/CmcSettingManager$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/cmcsetting/CmcSettingManager$3;-><init>(Lcom/samsung/android/cmcsetting/CmcSettingManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcCallActivationDbChangeObserver:Landroid/database/ContentObserver;

    .line 2789
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUriForCmcCallActivation:Landroid/net/Uri;

    iget-object p0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcCallActivationDbChangeObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_1e
    return-void
.end method

.method private registerCmcDeviceInfoObserver()V
    .registers 4

    .line 2833
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mDevicesDbChangeObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_1e

    .line 2834
    new-instance v0, Lcom/samsung/android/cmcsetting/CmcSettingManager$7;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/cmcsetting/CmcSettingManager$7;-><init>(Lcom/samsung/android/cmcsetting/CmcSettingManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mDevicesDbChangeObserver:Landroid/database/ContentObserver;

    .line 2841
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUriForDevices:Landroid/net/Uri;

    iget-object p0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mDevicesDbChangeObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_1e
    return-void
.end method

.method private registerCmcLineInfoObserver()V
    .registers 4

    .line 2820
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mLinesDbChangeObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_1e

    .line 2821
    new-instance v0, Lcom/samsung/android/cmcsetting/CmcSettingManager$6;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/cmcsetting/CmcSettingManager$6;-><init>(Lcom/samsung/android/cmcsetting/CmcSettingManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mLinesDbChangeObserver:Landroid/database/ContentObserver;

    .line 2828
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUriForLines:Landroid/net/Uri;

    iget-object p0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mLinesDbChangeObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_1e
    return-void
.end method

.method private registerCmcMessageActivationObserver()V
    .registers 4

    .line 2768
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcMessageActivationDbChangeObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_1e

    .line 2769
    new-instance v0, Lcom/samsung/android/cmcsetting/CmcSettingManager$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/cmcsetting/CmcSettingManager$2;-><init>(Lcom/samsung/android/cmcsetting/CmcSettingManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcMessageActivationDbChangeObserver:Landroid/database/ContentObserver;

    .line 2776
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUriForCmcMessageActivation:Landroid/net/Uri;

    iget-object p0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcMessageActivationDbChangeObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_1e
    return-void
.end method

.method private registerCmcNetworkModeObserver()V
    .registers 4

    .line 2807
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mNetworkModeDbChangeObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_1e

    .line 2808
    new-instance v0, Lcom/samsung/android/cmcsetting/CmcSettingManager$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/cmcsetting/CmcSettingManager$5;-><init>(Lcom/samsung/android/cmcsetting/CmcSettingManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mNetworkModeDbChangeObserver:Landroid/database/ContentObserver;

    .line 2815
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUriForNetworkMode:Landroid/net/Uri;

    iget-object p0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mNetworkModeDbChangeObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_1e
    return-void
.end method

.method private registerCmcWatchActivationObserver()V
    .registers 4

    .line 2794
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mWatchActivationDbChangeObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_1e

    .line 2795
    new-instance v0, Lcom/samsung/android/cmcsetting/CmcSettingManager$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/cmcsetting/CmcSettingManager$4;-><init>(Lcom/samsung/android/cmcsetting/CmcSettingManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mWatchActivationDbChangeObserver:Landroid/database/ContentObserver;

    .line 2802
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUriForWatchActivation:Landroid/net/Uri;

    iget-object p0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mWatchActivationDbChangeObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_1e
    return-void
.end method

.method private registerObserver(Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;)V
    .registers 4

    .line 2715
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_10

    const-string v0, "CmcSettingManager"

    const-string v1, "looper is null create"

    .line 2716
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2717
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 2720
    :cond_10
    sget-object v0, Lcom/samsung/android/cmcsetting/CmcSettingManager$19;->$SwitchMap$com$samsung$android$cmcsetting$CmcSettingManager$OBSERVER_TYPE:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_40

    goto :goto_3f

    .line 2746
    :pswitch_1c
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->registerSameWifiNetworkStatusObserver()V

    goto :goto_3f

    .line 2743
    :pswitch_20
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->registerSamsungAccountInfoObserver()V

    goto :goto_3f

    .line 2740
    :pswitch_24
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->registerCmcDeviceInfoObserver()V

    goto :goto_3f

    .line 2737
    :pswitch_28
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->registerCmcLineInfoObserver()V

    goto :goto_3f

    .line 2734
    :pswitch_2c
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->registerCmcNetworkModeObserver()V

    goto :goto_3f

    .line 2731
    :pswitch_30
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->registerCmcWatchActivationObserver()V

    goto :goto_3f

    .line 2728
    :pswitch_34
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->registerCmcCallActivationObserver()V

    goto :goto_3f

    .line 2725
    :pswitch_38
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->registerCmcMessageActivationObserver()V

    goto :goto_3f

    .line 2722
    :pswitch_3c
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->registerCmcActivationObserver()V

    :goto_3f
    return-void

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_3c
        :pswitch_38
        :pswitch_34
        :pswitch_30
        :pswitch_2c
        :pswitch_28
        :pswitch_24
        :pswitch_20
        :pswitch_1c
    .end packed-switch
.end method

.method private registerSameWifiNetworkStatusObserver()V
    .registers 4

    .line 2859
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mSameWifiNetworkStatusObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_1e

    .line 2860
    new-instance v0, Lcom/samsung/android/cmcsetting/CmcSettingManager$9;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/cmcsetting/CmcSettingManager$9;-><init>(Lcom/samsung/android/cmcsetting/CmcSettingManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mSameWifiNetworkStatusObserver:Landroid/database/ContentObserver;

    .line 2867
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUriForSameWifiNetworkStatus:Landroid/net/Uri;

    iget-object p0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mSameWifiNetworkStatusObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_1e
    return-void
.end method

.method private registerSamsungAccountInfoObserver()V
    .registers 4

    .line 2846
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mSaInfoDbChangeObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_1e

    .line 2847
    new-instance v0, Lcom/samsung/android/cmcsetting/CmcSettingManager$8;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/cmcsetting/CmcSettingManager$8;-><init>(Lcom/samsung/android/cmcsetting/CmcSettingManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mSaInfoDbChangeObserver:Landroid/database/ContentObserver;

    .line 2854
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUriForSaInfo:Landroid/net/Uri;

    iget-object p0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mSaInfoDbChangeObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_1e
    return-void
.end method

.method private sendEventCmcActivation()V
    .registers 3

    .line 3075
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/cmcsetting/CmcSettingManager$10;

    invoke-direct {v1, p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager$10;-><init>(Lcom/samsung/android/cmcsetting/CmcSettingManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3086
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private sendEventCmcCallActivation()V
    .registers 3

    .line 3105
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/cmcsetting/CmcSettingManager$12;

    invoke-direct {v1, p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager$12;-><init>(Lcom/samsung/android/cmcsetting/CmcSettingManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3116
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private sendEventCmcDevices()V
    .registers 3

    .line 3165
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/cmcsetting/CmcSettingManager$16;

    invoke-direct {v1, p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager$16;-><init>(Lcom/samsung/android/cmcsetting/CmcSettingManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3176
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private sendEventCmcLines()V
    .registers 3

    .line 3150
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/cmcsetting/CmcSettingManager$15;

    invoke-direct {v1, p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager$15;-><init>(Lcom/samsung/android/cmcsetting/CmcSettingManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3161
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private sendEventCmcMessageActivation()V
    .registers 3

    .line 3090
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/cmcsetting/CmcSettingManager$11;

    invoke-direct {v1, p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager$11;-><init>(Lcom/samsung/android/cmcsetting/CmcSettingManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3101
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private sendEventCmcNetworkMode()V
    .registers 3

    .line 3135
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/cmcsetting/CmcSettingManager$14;

    invoke-direct {v1, p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager$14;-><init>(Lcom/samsung/android/cmcsetting/CmcSettingManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3146
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private sendEventCmcSaInfo()V
    .registers 3

    .line 3180
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/cmcsetting/CmcSettingManager$17;

    invoke-direct {v1, p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager$17;-><init>(Lcom/samsung/android/cmcsetting/CmcSettingManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3191
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private sendEventCmcWatchActivation()V
    .registers 3

    .line 3120
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/cmcsetting/CmcSettingManager$13;

    invoke-direct {v1, p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager$13;-><init>(Lcom/samsung/android/cmcsetting/CmcSettingManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3131
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private sendEventSameWifiNetworkStatus()V
    .registers 3

    .line 3195
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/cmcsetting/CmcSettingManager$18;

    invoke-direct {v1, p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager$18;-><init>(Lcom/samsung/android/cmcsetting/CmcSettingManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3206
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private unregisterCmcActivationObserver()V
    .registers 3

    .line 2917
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcActivationDbChangeObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_12

    .line 2918
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcActivationDbChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 2919
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcActivationDbChangeObserver:Landroid/database/ContentObserver;

    :cond_12
    return-void
.end method

.method private unregisterCmcCallActivationObserver()V
    .registers 3

    .line 2931
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcCallActivationDbChangeObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_12

    .line 2932
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcCallActivationDbChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 2933
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcCallActivationDbChangeObserver:Landroid/database/ContentObserver;

    :cond_12
    return-void
.end method

.method private unregisterCmcDeviceInfoObserver()V
    .registers 3

    .line 2959
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mDevicesDbChangeObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_12

    .line 2960
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mDevicesDbChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 2961
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mDevicesDbChangeObserver:Landroid/database/ContentObserver;

    :cond_12
    return-void
.end method

.method private unregisterCmcLineInfoObserver()V
    .registers 3

    .line 2952
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mLinesDbChangeObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_12

    .line 2953
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mLinesDbChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 2954
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mLinesDbChangeObserver:Landroid/database/ContentObserver;

    :cond_12
    return-void
.end method

.method private unregisterCmcMessageActivationObserver()V
    .registers 3

    .line 2924
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcMessageActivationDbChangeObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_12

    .line 2925
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcMessageActivationDbChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 2926
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcMessageActivationDbChangeObserver:Landroid/database/ContentObserver;

    :cond_12
    return-void
.end method

.method private unregisterCmcNetworkModeObserver()V
    .registers 3

    .line 2945
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mNetworkModeDbChangeObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_12

    .line 2946
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mNetworkModeDbChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 2947
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mNetworkModeDbChangeObserver:Landroid/database/ContentObserver;

    :cond_12
    return-void
.end method

.method private unregisterCmcWatchActivationObserver()V
    .registers 3

    .line 2938
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mWatchActivationDbChangeObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_12

    .line 2939
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mWatchActivationDbChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 2940
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mWatchActivationDbChangeObserver:Landroid/database/ContentObserver;

    :cond_12
    return-void
.end method

.method private unregisterObserver(Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;)V
    .registers 3

    .line 2872
    sget-object v0, Lcom/samsung/android/cmcsetting/CmcSettingManager$19;->$SwitchMap$com$samsung$android$cmcsetting$CmcSettingManager$OBSERVER_TYPE:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_4c

    goto :goto_4b

    .line 2901
    :pswitch_c
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->unregisterCmcActivationObserver()V

    .line 2902
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->unregisterCmcMessageActivationObserver()V

    .line 2903
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->unregisterCmcCallActivationObserver()V

    .line 2904
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->unregisterCmcWatchActivationObserver()V

    .line 2905
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->unregisterCmcNetworkModeObserver()V

    .line 2906
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->unregisterCmcLineInfoObserver()V

    .line 2907
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->unregisterCmcDeviceInfoObserver()V

    .line 2908
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->unregisterSamsungAccountInfoObserver()V

    .line 2909
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->unregisterSameWifiNetworkStatusObserver()V

    goto :goto_4b

    .line 2898
    :pswitch_28
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->unregisterSameWifiNetworkStatusObserver()V

    goto :goto_4b

    .line 2895
    :pswitch_2c
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->unregisterSamsungAccountInfoObserver()V

    goto :goto_4b

    .line 2892
    :pswitch_30
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->unregisterCmcDeviceInfoObserver()V

    goto :goto_4b

    .line 2889
    :pswitch_34
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->unregisterCmcLineInfoObserver()V

    goto :goto_4b

    .line 2886
    :pswitch_38
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->unregisterCmcNetworkModeObserver()V

    goto :goto_4b

    .line 2883
    :pswitch_3c
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->unregisterCmcWatchActivationObserver()V

    goto :goto_4b

    .line 2880
    :pswitch_40
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->unregisterCmcCallActivationObserver()V

    goto :goto_4b

    .line 2877
    :pswitch_44
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->unregisterCmcMessageActivationObserver()V

    goto :goto_4b

    .line 2874
    :pswitch_48
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->unregisterCmcActivationObserver()V

    :goto_4b
    return-void

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_48
        :pswitch_44
        :pswitch_40
        :pswitch_3c
        :pswitch_38
        :pswitch_34
        :pswitch_30
        :pswitch_2c
        :pswitch_28
        :pswitch_c
    .end packed-switch
.end method

.method private unregisterSameWifiNetworkStatusObserver()V
    .registers 3

    .line 2973
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mSameWifiNetworkStatusObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_12

    .line 2974
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mSameWifiNetworkStatusObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 2975
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mSameWifiNetworkStatusObserver:Landroid/database/ContentObserver;

    :cond_12
    return-void
.end method

.method private unregisterSamsungAccountInfoObserver()V
    .registers 3

    .line 2966
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mSaInfoDbChangeObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_12

    .line 2967
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mSaInfoDbChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 2968
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mSaInfoDbChangeObserver:Landroid/database/ContentObserver;

    :cond_12
    return-void
.end method


# virtual methods
.method public deInit()V
    .registers 3

    const-string v0, "CmcSettingManager"

    const-string v1, "deInit"

    .line 235
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-virtual {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->unregisterListener()Z

    const/4 v0, 0x0

    .line 237
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public getCmcCallActivation(Ljava/lang/String;)Z
    .registers 7

    .line 950
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCmcCallActivation : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CmcSettingManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v0, :cond_21

    const-string p0, "context is null"

    .line 952
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 958
    :cond_21
    :try_start_21
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "device_id"

    .line 959
    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    iget-object p1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUri:Landroid/net/Uri;

    const-string/jumbo v3, "v1/get_activations"

    const/4 v4, 0x0

    invoke-virtual {p1, p0, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_9a

    const-string/jumbo p1, "result"

    const/4 v0, -0x1

    .line 962
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v3, 0x1

    if-ne p1, v3, :cond_66

    const-string p1, "call_activation"

    .line 963
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    .line 964
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "call inf : getCmcCallActivation success : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p0, v3, :cond_9a

    move v2, v3

    goto :goto_9a

    .line 968
    :cond_66
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
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_80} :catch_81

    goto :goto_9a

    :catch_81
    move-exception p0

    .line 972
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

    :cond_9a
    :goto_9a
    return v2
.end method

.method public getCmcSupported()Z
    .registers 3

    const-string v0, "CmcSettingManager"

    const-string v1, "getCmcSupported"

    .line 789
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->isCmcPackageInstalled(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public getDeviceIdList()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "getDeviceIdList"

    const-string v1, "CmcSettingManager"

    .line 1409
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v0, :cond_12

    const-string p0, "context is null"

    .line 1411
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 1417
    :cond_12
    :try_start_12
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUri:Landroid/net/Uri;

    const-string/jumbo v3, "v1/get_device_id_list"

    invoke-virtual {v0, p0, v3, v2, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_7c

    const-string/jumbo v0, "result"

    const/4 v3, -0x1

    .line 1419
    invoke-virtual {p0, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_48

    const-string v0, "device_id_list"

    .line 1420
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 1421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call inf : getDeviceIdList success : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, p0

    goto :goto_7c

    .line 1425
    :cond_48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call inf : getDeviceIdList fail : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "error_reason"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_62} :catch_63

    goto :goto_7c

    :catch_63
    move-exception p0

    .line 1429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception is occured : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7c
    :goto_7c
    return-object v2
.end method

.method public getDeviceInfo(Ljava/lang/String;)Lcom/samsung/android/cmcsetting/CmcDeviceInfo;
    .registers 10

    .line 1687
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDeviceInfo : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CmcSettingManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1688
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v0, :cond_21

    const-string p0, "context is null"

    .line 1689
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 1695
    :cond_21
    :try_start_21
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "device_id"

    .line 1696
    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1697
    iget-object v3, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUri:Landroid/net/Uri;

    const-string/jumbo v5, "v1/get_device_info"

    invoke-virtual {v3, v4, v5, v2, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_144

    const-string/jumbo v3, "result"

    const/4 v4, -0x1

    .line 1699
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_110

    .line 1700
    new-instance v3, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;

    invoke-direct {v3}, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;-><init>()V

    .line 1701
    invoke-virtual {v3, p1}, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->setDeviceId(Ljava/lang/String;)V

    .line 1703
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 1704
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_57
    :goto_57
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "device_name"

    .line 1705
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_73

    .line 1706
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->setDeviceName(Ljava/lang/String;)V

    goto :goto_57

    :cond_73
    const-string v6, "device_category"

    .line 1708
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_87

    .line 1709
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getDeviceCategoryInternal(Ljava/lang/String;)Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->setDeviceCategory(Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;)V

    goto :goto_57

    :cond_87
    const-string v6, "device_type"

    .line 1711
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9b

    .line 1712
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getDeviceTypeInternal(Ljava/lang/String;)Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->setDeviceType(Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;)V

    goto :goto_57

    :cond_9b
    const-string v6, "activation"

    .line 1714
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_af

    .line 1715
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v4, :cond_ab

    move v7, v4

    :cond_ab
    invoke-virtual {v3, v7}, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->setActivation(Z)V

    goto :goto_57

    :cond_af
    const-string v6, "message_activation"

    .line 1717
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c2

    .line 1718
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v4, :cond_be

    move v7, v4

    :cond_be
    invoke-virtual {v3, v7}, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->setMessageActivation(Z)V

    goto :goto_57

    :cond_c2
    const-string v6, "call_activation"

    .line 1720
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d5

    .line 1721
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v4, :cond_d1

    move v7, v4

    :cond_d1
    invoke-virtual {v3, v7}, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->setCallActivation(Z)V

    goto :goto_57

    :cond_d5
    const-string v6, "message_allowed_sd_by_pd"

    .line 1723
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e9

    .line 1724
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v4, :cond_e4

    move v7, v4

    :cond_e4
    invoke-virtual {v3, v7}, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->setMessageAllowedSdByPd(Z)V

    goto/16 :goto_57

    :cond_e9
    const-string v6, "call_allowed_sd_by_pd"

    .line 1726
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_fd

    .line 1727
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v4, :cond_f8

    move v7, v4

    :cond_f8
    invoke-virtual {v3, v7}, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->setCallAllowedSdByPd(Z)V

    goto/16 :goto_57

    :cond_fd
    const-string v6, "emergency_supported"

    .line 1729
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_57

    .line 1730
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v3, v5}, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->setEmergencyCallSupported(Z)V

    goto/16 :goto_57

    :cond_10e
    move-object v2, v3

    goto :goto_144

    .line 1736
    :cond_110
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
    :try_end_12a
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_12a} :catch_12b

    goto :goto_144

    :catch_12b
    move-exception p0

    .line 1740
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

    :cond_144
    :goto_144
    return-object v2
.end method

.method public getDeviceType(Ljava/lang/String;)Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;
    .registers 8

    .line 1507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDeviceType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CmcSettingManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v0, :cond_21

    const-string p0, "context is null"

    .line 1509
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 1513
    :cond_21
    sget-object v0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;->DEVICE_TYPE_UNDEFINED:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    .line 1515
    :try_start_23
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "device_id"

    .line 1516
    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1517
    iget-object p1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v4, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUri:Landroid/net/Uri;

    const-string/jumbo v5, "v1/get_device_type"

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_9e

    const-string/jumbo v2, "result"

    const/4 v3, -0x1

    .line 1519
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6a

    const-string v2, "device_type"

    const-string v3, ""

    .line 1520
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1521
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call inf : getDeviceType success : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getDeviceTypeInternal(Ljava/lang/String;)Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    move-result-object v0

    goto :goto_9e

    .line 1525
    :cond_6a
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
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_84} :catch_85

    goto :goto_9e

    :catch_85
    move-exception p0

    .line 1529
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

    :cond_9e
    :goto_9e
    return-object v0
.end method

.method public getLineId()Ljava/lang/String;
    .registers 7

    const-string v0, "getLineId"

    const-string v1, "CmcSettingManager"

    .line 1223
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v0, :cond_12

    const-string p0, "context is null"

    .line 1225
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 1231
    :cond_12
    :try_start_12
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUri:Landroid/net/Uri;

    const-string/jumbo v4, "v1/get_line_id"

    invoke-virtual {v0, v3, v4, v2, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_83

    const-string/jumbo v3, "result"

    const/4 v4, -0x1

    .line 1233
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_29} :catch_6a

    const/4 v4, 0x1

    const-string v5, ""

    if-ne v3, v4, :cond_4e

    :try_start_2e
    const-string v3, "line_id"

    .line 1234
    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1235
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLineId success : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v0

    goto :goto_83

    .line 1239
    :cond_4e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLineId fail : "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "error_reason"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_68} :catch_6a

    move-object v2, v5

    goto :goto_83

    :catch_6a
    move-exception p0

    .line 1244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception is occured : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_83
    :goto_83
    return-object v2
.end method

.method public getLineImpu()Ljava/lang/String;
    .registers 7

    const-string v0, "getLineImpu"

    const-string v1, "CmcSettingManager"

    .line 1378
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v0, :cond_12

    const-string p0, "context is null"

    .line 1380
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 1386
    :cond_12
    :try_start_12
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUri:Landroid/net/Uri;

    const-string/jumbo v4, "v1/get_line_impu"

    invoke-virtual {v0, v3, v4, v2, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_83

    const-string/jumbo v3, "result"

    const/4 v4, -0x1

    .line 1388
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_29} :catch_6a

    const/4 v4, 0x1

    const-string v5, ""

    if-ne v3, v4, :cond_4e

    :try_start_2e
    const-string v3, "impu"

    .line 1389
    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1390
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call inf : getLineImpu success : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v0

    goto :goto_83

    .line 1394
    :cond_4e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call inf : getLineImpu fail : "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "error_reason"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_68} :catch_6a

    move-object v2, v5

    goto :goto_83

    :catch_6a
    move-exception p0

    .line 1399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception is occured : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_83
    :goto_83
    return-object v2
.end method

.method public getLinePcscfAddrList()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "getLinePcscfAddrList"

    const-string v1, "CmcSettingManager"

    .line 1317
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v0, :cond_12

    const-string p0, "context is null"

    .line 1319
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 1325
    :cond_12
    :try_start_12
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUri:Landroid/net/Uri;

    const-string/jumbo v4, "v1/get_line_pcscf_addr_list"

    invoke-virtual {v0, v3, v4, v2, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_80

    const-string/jumbo v3, "result"

    const/4 v4, -0x1

    .line 1327
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4c

    const-string v3, "pcscf_addr_list"

    .line 1328
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1329
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call inf : getPcscfAddrList success : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v0

    goto :goto_80

    .line 1333
    :cond_4c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call inf : getPcscfAddrList fail : "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "error_reason"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_66} :catch_67

    goto :goto_80

    :catch_67
    move-exception p0

    .line 1337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception is occured : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_80
    :goto_80
    return-object v2
.end method

.method public getOwnCmcActivation()Z
    .registers 5

    const-string v0, "getOwnCmcActivation"

    const-string v1, "CmcSettingManager"

    .line 827
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    iget-object p0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    if-nez p0, :cond_12

    const-string p0, "context is null"

    .line 829
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 833
    :cond_12
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "cmc_activation"

    invoke-static {p0, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    .line 834
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cmc activation : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-ne p0, v1, :cond_34

    move v0, v1

    :cond_34
    return v0
.end method

.method public getOwnDeviceId()Ljava/lang/String;
    .registers 6

    const-string v0, "getOwnDeviceId"

    const-string v1, "CmcSettingManager"

    .line 1026
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v0, :cond_12

    const-string p0, "context is null"

    .line 1028
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 1034
    :cond_12
    :try_start_12
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUri:Landroid/net/Uri;

    const-string/jumbo v4, "v1/get_own_device_id"

    invoke-virtual {v0, v3, v4, v2, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_8a

    const-string/jumbo v2, "result"

    const/4 v3, -0x1

    .line 1036
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_29} :catch_65

    const/4 v3, 0x1

    const-string v4, ""

    if-ne v2, v3, :cond_49

    :try_start_2e
    const-string v2, "own_device_id"

    .line 1037
    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1038
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call inf : getOwnDeviceId success : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8a

    .line 1042
    :cond_49
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call inf : getOwnDeviceId fail : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "error_reason"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_63} :catch_65

    move-object v2, v4

    goto :goto_8a

    :catch_65
    move-exception v0

    .line 1047
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

    .line 1048
    iget-object p0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "cmc_device_id"

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1050
    :cond_8a
    :goto_8a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "own device id: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public getOwnDeviceType()Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;
    .registers 5

    const-string v0, "getOwnDeviceType"

    const-string v1, "CmcSettingManager"

    .line 998
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_12

    const-string p0, "context is null"

    .line 1000
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 1004
    :cond_12
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "cmc_device_type"

    invoke-static {v0, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1005
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "own device type - db : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_78

    .line 1007
    iget-object p0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-eqz p0, :cond_4c

    const-string v0, "com.samsung.feature.device_category_tablet"

    .line 1009
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_49

    sget-object p0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;->DEVICE_TYPE_SD:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    goto :goto_4b

    :cond_49
    sget-object p0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;->DEVICE_TYPE_PD:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    :goto_4b
    return-object p0

    :cond_4c
    const-string/jumbo p0, "ro.build.characteristics"

    const-string v0, ""

    .line 1013
    invoke-static {p0, v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1014
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "own device type - characteristics : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "tablet"

    .line 1015
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_75

    sget-object p0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;->DEVICE_TYPE_SD:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    goto :goto_77

    :cond_75
    sget-object p0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;->DEVICE_TYPE_PD:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    :goto_77
    return-object p0

    .line 1018
    :cond_78
    invoke-direct {p0, v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getDeviceTypeInternal(Ljava/lang/String;)Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    move-result-object p0

    return-object p0
.end method

.method public getOwnNetworkMode()Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$NetworkMode;
    .registers 3

    const-string v0, "getOwnNetworkMode"

    const-string v1, "CmcSettingManager"

    .line 1145
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_12

    const-string p0, "context is null"

    .line 1147
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 1151
    :cond_12
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getNetworkModeInternal()Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$NetworkMode;

    move-result-object p0

    return-object p0
.end method

.method public getOwnServiceVersion()Ljava/lang/String;
    .registers 4

    const-string v0, "getOwnServiceVersion"

    const-string v1, "CmcSettingManager"

    .line 1091
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    iget-object p0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    if-nez p0, :cond_12

    const-string p0, "context is null"

    .line 1093
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 1097
    :cond_12
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "cmc_service_version"

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1098
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "own service version in global : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_53

    const-string/jumbo p0, "ro.cmc.version"

    const-string v0, ""

    .line 1100
    invoke-static {p0, v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "own service version in prop : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_53
    return-object p0
.end method

.method public getSamsungAccountInfo()Lcom/samsung/android/cmcsetting/CmcSaInfo;
    .registers 6

    const-string v0, "getSamsungAccountInfo"

    const-string v1, "CmcSettingManager"

    .line 1918
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1919
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v0, :cond_12

    const-string p0, "context is null"

    .line 1920
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 1924
    :cond_12
    new-instance v0, Lcom/samsung/android/cmcsetting/CmcSaInfo;

    invoke-direct {v0}, Lcom/samsung/android/cmcsetting/CmcSaInfo;-><init>()V

    .line 1926
    :try_start_17
    iget-object v3, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object p0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUri:Landroid/net/Uri;

    const-string/jumbo v4, "v1/get_sa_info"

    invoke-virtual {v3, p0, v4, v2, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_80

    const-string/jumbo v2, "result"

    const/4 v3, -0x1

    .line 1928
    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4c

    const-string/jumbo v2, "samsung_user_id"

    .line 1930
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/cmcsetting/CmcSaInfo;->setSaUserId(Ljava/lang/String;)V

    const-string v2, "access_token"

    .line 1931
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/cmcsetting/CmcSaInfo;->setSaAccessToken(Ljava/lang/String;)V

    const-string p0, "call inf : getSamsungAccountInfo success"

    .line 1932
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_80

    .line 1934
    :cond_4c
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

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_66} :catch_67

    goto :goto_80

    :catch_67
    move-exception p0

    .line 1938
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception is occured : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_80
    :goto_80
    return-object v0
.end method

.method public getSelectedSimSlotsOnPd()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "getSelectedSimSlotsOnPd"

    const-string v1, "CmcSettingManager"

    .line 2100
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2101
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_16

    const-string p0, "context is null"

    .line 2102
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2103
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 2105
    :cond_16
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->isApiSupportedWithDualSimSupported()Z

    move-result v0

    if-nez v0, :cond_22

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 2107
    :cond_22
    sget-boolean v0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->IS_MORE_THAN_U_OS:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_95

    .line 2108
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v3, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants;->SETTINGS_KEY_CMC_SELECTED_SIMS_ON_PD:Ljava/lang/String;

    sget v4, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants;->KEY_NOT_EXIST:I

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2109
    sget v3, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants;->KEY_NOT_EXIST:I

    if-eq v0, v3, :cond_95

    .line 2110
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call inf : getSelectedSimSlotsOnPd success with global db : "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    if-eqz v0, :cond_83

    if-eq v0, v2, :cond_71

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5b

    .line 2119
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 2117
    :cond_5b
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p0, v1}, [Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 2115
    :cond_71
    new-instance p0, Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0

    .line 2113
    :cond_83
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 2125
    :cond_95
    :try_start_95
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUri:Landroid/net/Uri;

    const-string/jumbo v3, "v1/get_selected_sim_slots_on_pd"

    const/4 v4, 0x0

    invoke-virtual {v0, p0, v3, v4, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_ff

    const-string/jumbo v0, "result"

    const/4 v3, -0x1

    .line 2127
    invoke-virtual {p0, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_cb

    const-string/jumbo v0, "selected_sim_slots_on_pd"

    .line 2128
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    const-string v0, "call inf : getSelectedSimSlotsOnPd success"

    .line 2129
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_ca

    const-string/jumbo p0, "selectedSimSlotsList is null"

    .line 2131
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2132
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :cond_ca
    return-object p0

    .line 2137
    :cond_cb
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call inf : getSelectedSimSlotsOnPd fail : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "error_reason"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e5
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_e5} :catch_e6

    goto :goto_ff

    :catch_e6
    move-exception p0

    .line 2141
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

    .line 2143
    :cond_ff
    :goto_ff
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public init(Landroid/content/Context;)Z
    .registers 4

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init : CmcSettingManager version : 2.1.2, context : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CmcSettingManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1f

    const-string p0, "context is null"

    .line 224
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 227
    :cond_1f
    iput-object p1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    .line 228
    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->isCmcPackageInstalled(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public isCallAllowedSdByPd(Ljava/lang/String;)Z
    .registers 7

    .line 1604
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isCallAllowedSdByPd : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CmcSettingManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v0, :cond_21

    const-string p0, "context is null"

    .line 1606
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1612
    :cond_21
    :try_start_21
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "device_id"

    .line 1613
    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1614
    iget-object p1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUri:Landroid/net/Uri;

    const-string/jumbo v3, "v1/get_call_allowed_sd_by_pd"

    const/4 v4, 0x0

    invoke-virtual {p1, p0, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_9a

    const-string/jumbo p1, "result"

    const/4 v0, -0x1

    .line 1616
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v3, 0x1

    if-ne p1, v3, :cond_66

    const-string p1, "call_allowed_sd_by_pd"

    .line 1617
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    .line 1618
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "call inf : isCallAllowedSdByPd success : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p0, v3, :cond_9a

    move v2, v3

    goto :goto_9a

    .line 1622
    :cond_66
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
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_80} :catch_81

    goto :goto_9a

    :catch_81
    move-exception p0

    .line 1626
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

    :cond_9a
    :goto_9a
    return v2
.end method

.method public isDualSimSupportedOnPd()Z
    .registers 7

    const-string v0, "isDualSimSupportedOnPd"

    const-string v1, "CmcSettingManager"

    .line 2053
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2054
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v0, :cond_12

    const-string p0, "context is null"

    .line 2055
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 2058
    :cond_12
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->isApiSupportedWithDualSimSupported()Z

    move-result v0

    if-nez v0, :cond_19

    return v2

    .line 2060
    :cond_19
    sget-boolean v0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->IS_MORE_THAN_U_OS:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_65

    .line 2061
    invoke-virtual {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getOwnDeviceType()Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    move-result-object v0

    .line 2063
    sget-object v4, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;->DEVICE_TYPE_PD:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    if-ne v0, v4, :cond_35

    .line 2064
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v4, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants;->SETTINGS_KEY_CMC_IS_DUAL_SIM_SUPPORTED:Ljava/lang/String;

    sget v5, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants;->KEY_NOT_EXIST:I

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_47

    .line 2065
    :cond_35
    sget-object v4, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;->DEVICE_TYPE_SD:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    if-ne v0, v4, :cond_64

    .line 2066
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v4, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants;->SETTINGS_KEY_CMC_IS_DUAL_SIM_SUPPORTED_ON_PD:Ljava/lang/String;

    sget v5, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants;->KEY_NOT_EXIST:I

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2071
    :goto_47
    sget v4, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants;->KEY_NOT_EXIST:I

    if-eq v0, v4, :cond_65

    .line 2072
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call inf : isDualSimSupportedOnPd success with global db : "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2073
    sget p0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants;->SUPPORTED:I

    if-ne v0, p0, :cond_64

    move v2, v3

    :cond_64
    return v2

    .line 2078
    :cond_65
    :try_start_65
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->authorityUri:Landroid/net/Uri;

    const-string/jumbo v4, "v1/is_dual_sim_supported_on_pd"

    const/4 v5, 0x0

    invoke-virtual {v0, p0, v4, v5, v5}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_d0

    const-string/jumbo v0, "result"

    const/4 v4, -0x1

    .line 2080
    invoke-virtual {p0, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_9c

    const-string v0, "dual_sim_supported_on_pd"

    .line 2081
    invoke-virtual {p0, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    .line 2082
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call inf : isDualSimSupportedOnPd success : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 2086
    :cond_9c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call inf : isDualSimSupportedOnPd fail : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "error_reason"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_b6} :catch_b7

    goto :goto_d0

    :catch_b7
    move-exception p0

    .line 2090
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception is occured : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d0
    :goto_d0
    return v2
.end method

.method public isEmergencyCallSupported()Z
    .registers 11

    const-string v0, "isEmergencyCallSupported"

    const-string v1, "CmcSettingManager"

    .line 1965
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1966
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v0, :cond_12

    const-string p0, "context is null"

    .line 1967
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1971
    :cond_12
    invoke-virtual {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getOwnCmcActivation()Z

    move-result v0

    if-nez v0, :cond_1e

    const-string p0, "cmc activation is false"

    .line 1972
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1976
    :cond_1e
    invoke-virtual {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getDeviceIdList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_92

    .line 1977
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_2b

    goto :goto_92

    .line 1982
    :cond_2b
    invoke-virtual {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getOwnDeviceId()Ljava/lang/String;

    move-result-object v3

    .line 1983
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3b

    const-string p0, "ownDeviceId is empty"

    .line 1984
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1991
    :cond_3b
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v4, v2

    move v5, v4

    :cond_41
    :goto_41
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1992
    invoke-virtual {p0, v6}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getDeviceInfo(Ljava/lang/String;)Lcom/samsung/android/cmcsetting/CmcDeviceInfo;

    move-result-object v7

    if-nez v7, :cond_54

    goto :goto_41

    .line 1997
    :cond_54
    invoke-virtual {v7}, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->getDeviceType()Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    move-result-object v8

    .line 1998
    sget-object v9, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;->DEVICE_TYPE_PD:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    if-ne v8, v9, :cond_60

    .line 1999
    invoke-virtual {v7}, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->isEmergencyCallSupported()Z

    move-result v5

    .line 2001
    :cond_60
    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_41

    .line 2002
    invoke-virtual {v7}, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->isEmergencyCallSupported()Z

    move-result v4

    goto :goto_41

    .line 2005
    :cond_6b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isOwnEmergencyCallSupported("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "), isPdEmergencyCallSupported("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_91

    if-eqz v5, :cond_91

    const/4 v2, 0x1

    :cond_91
    return v2

    :cond_92
    :goto_92
    const-string p0, "deviceIdList is empty"

    .line 1978
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public isSameWifiNetworkOnly()Z
    .registers 5

    const-string v0, "isSameWifiNetworkOnly"

    const-string v1, "CmcSettingManager"

    .line 1949
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1950
    iget-object p0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    if-nez p0, :cond_12

    const-string p0, "context is null"

    .line 1951
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1955
    :cond_12
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "cmc_same_wifi_network_status"

    invoke-static {p0, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    .line 1956
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sameWifiNetworkStatus : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-ne p0, v1, :cond_35

    move v0, v1

    :cond_35
    return v0
.end method

.method public registerListener(Lcom/samsung/android/cmcsetting/listeners/CmcActivationInfoChangedListener;)Z
    .registers 5

    const-string/jumbo v0, "registerListener : CmcActivationInfoChangedListener"

    const-string v1, "CmcSettingManager"

    .line 246
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v0, :cond_13

    const-string p0, "context is null"

    .line 248
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_13
    if-nez p1, :cond_1b

    const-string p0, "listener is null"

    .line 252
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 256
    :cond_1b
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcActivationChangedListenerList:Ljava/util/ArrayList;

    if-nez v0, :cond_26

    .line 257
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcActivationChangedListenerList:Ljava/util/ArrayList;

    .line 259
    :cond_26
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcActivationChangedListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    sget-object p1, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;->mainActivation:Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->registerObserver(Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;)V

    const/4 p0, 0x1

    return p0
.end method

.method public registerListener(Lcom/samsung/android/cmcsetting/listeners/CmcCallActivationInfoChangedListener;)Z
    .registers 5

    const-string/jumbo v0, "registerListener : CmcCallActivationInfoChangedListener"

    const-string v1, "CmcSettingManager"

    .line 354
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v0, :cond_13

    const-string p0, "context is null"

    .line 356
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_13
    if-nez p1, :cond_1b

    const-string p0, "listener is null"

    .line 360
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 364
    :cond_1b
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcCallActivationChangedListenerList:Ljava/util/ArrayList;

    if-nez v0, :cond_26

    .line 365
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcCallActivationChangedListenerList:Ljava/util/ArrayList;

    .line 367
    :cond_26
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcCallActivationChangedListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    sget-object p1, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;->callActivation:Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->registerObserver(Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;)V

    const/4 p0, 0x1

    return p0
.end method

.method public registerListener(Lcom/samsung/android/cmcsetting/listeners/CmcDeviceInfoChangedListener;)Z
    .registers 5

    const-string/jumbo v0, "registerListener : CmcDeviceInfoChangedListener"

    const-string v1, "CmcSettingManager"

    .line 570
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v0, :cond_13

    const-string p0, "context is null"

    .line 572
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_13
    if-nez p1, :cond_1b

    const-string p0, "listener is null"

    .line 576
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 580
    :cond_1b
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcDeviceInfoChangedListenerList:Ljava/util/ArrayList;

    if-nez v0, :cond_26

    .line 581
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcDeviceInfoChangedListenerList:Ljava/util/ArrayList;

    .line 583
    :cond_26
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcDeviceInfoChangedListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 584
    sget-object p1, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;->deviceInfo:Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->registerObserver(Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;)V

    const/4 p0, 0x1

    return p0
.end method

.method public registerListener(Lcom/samsung/android/cmcsetting/listeners/CmcLineInfoChangedListener;)Z
    .registers 5

    const-string/jumbo v0, "registerListener : CmcLineInfoChangedListener"

    const-string v1, "CmcSettingManager"

    .line 516
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v0, :cond_13

    const-string p0, "context is null"

    .line 518
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_13
    if-nez p1, :cond_1b

    const-string p0, "listener is null"

    .line 522
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 526
    :cond_1b
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcLineInfoChangedListenerList:Ljava/util/ArrayList;

    if-nez v0, :cond_26

    .line 527
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcLineInfoChangedListenerList:Ljava/util/ArrayList;

    .line 529
    :cond_26
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcLineInfoChangedListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 530
    sget-object p1, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;->lineInfo:Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->registerObserver(Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;)V

    const/4 p0, 0x1

    return p0
.end method

.method public registerListener(Lcom/samsung/android/cmcsetting/listeners/CmcNetworkModeInfoChangedListener;)Z
    .registers 5

    const-string/jumbo v0, "registerListener : CmcNetworkModeInfoChangedListener"

    const-string v1, "CmcSettingManager"

    .line 462
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v0, :cond_13

    const-string p0, "context is null"

    .line 464
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_13
    if-nez p1, :cond_1b

    const-string p0, "listener is null"

    .line 468
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 472
    :cond_1b
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcNetworkModeChangedListenerList:Ljava/util/ArrayList;

    if-nez v0, :cond_26

    .line 473
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcNetworkModeChangedListenerList:Ljava/util/ArrayList;

    .line 475
    :cond_26
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcNetworkModeChangedListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 476
    sget-object p1, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;->networkMode:Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->registerObserver(Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;)V

    const/4 p0, 0x1

    return p0
.end method

.method public registerListener(Lcom/samsung/android/cmcsetting/listeners/CmcSameWifiNetworkStatusListener;)Z
    .registers 5

    const-string/jumbo v0, "registerListener : CmcSameWifiNetworkStatusListener"

    const-string v1, "CmcSettingManager"

    .line 678
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v0, :cond_13

    const-string p0, "context is null"

    .line 680
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_13
    if-nez p1, :cond_1b

    const-string p0, "listener is null"

    .line 684
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 688
    :cond_1b
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mSameWifiNetworkStatusListenerList:Ljava/util/ArrayList;

    if-nez v0, :cond_26

    .line 689
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mSameWifiNetworkStatusListenerList:Ljava/util/ArrayList;

    .line 691
    :cond_26
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mSameWifiNetworkStatusListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 692
    sget-object p1, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;->sameWifiNetworkStatus:Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->registerObserver(Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;)V

    const/4 p0, 0x1

    return p0
.end method

.method public registerListener(Lcom/samsung/android/cmcsetting/listeners/CmcSamsungAccountInfoChangedListener;)Z
    .registers 5

    const-string/jumbo v0, "registerListener : CmcSamsungAccountInfoChangedListener"

    const-string v1, "CmcSettingManager"

    .line 624
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v0, :cond_13

    const-string p0, "context is null"

    .line 626
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_13
    if-nez p1, :cond_1b

    const-string p0, "listener is null"

    .line 630
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 634
    :cond_1b
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcSamsungAccountInfoChangedListenerList:Ljava/util/ArrayList;

    if-nez v0, :cond_26

    .line 635
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcSamsungAccountInfoChangedListenerList:Ljava/util/ArrayList;

    .line 637
    :cond_26
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcSamsungAccountInfoChangedListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 638
    sget-object p1, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;->saInfo:Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->registerObserver(Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;)V

    const/4 p0, 0x1

    return p0
.end method

.method public unregisterListener()Z
    .registers 4

    const-string/jumbo v0, "unregisterListener : all"

    const-string v1, "CmcSettingManager"

    .line 731
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_13

    const-string p0, "context is null"

    .line 733
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 736
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "context : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 738
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcActivationChangedListenerList:Ljava/util/ArrayList;

    .line 739
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcMessageActivationChangedListenerList:Ljava/util/ArrayList;

    .line 740
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcCallActivationChangedListenerList:Ljava/util/ArrayList;

    .line 741
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcWatchActivationChangedListenerList:Ljava/util/ArrayList;

    .line 742
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcNetworkModeChangedListenerList:Ljava/util/ArrayList;

    .line 743
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcLineInfoChangedListenerList:Ljava/util/ArrayList;

    .line 744
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcDeviceInfoChangedListenerList:Ljava/util/ArrayList;

    .line 745
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mCmcSamsungAccountInfoChangedListenerList:Ljava/util/ArrayList;

    .line 746
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->mSameWifiNetworkStatusListenerList:Ljava/util/ArrayList;

    .line 747
    sget-object v0, Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;->all:Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;

    invoke-direct {p0, v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->unregisterObserver(Lcom/samsung/android/cmcsetting/CmcSettingManager$OBSERVER_TYPE;)V

    const/4 p0, 0x1

    return p0
.end method
