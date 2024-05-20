.class public Lcom/sec/internal/ims/settings/SettingsProvider;
.super Landroid/content/ContentProvider;
.source "SettingsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/settings/SettingsProvider$ImpuRecordTable;
    }
.end annotation


# static fields
.field private static final ACTION_CARRIER_CHANGED:Ljava/lang/String; = "com.samsung.carrier.action.CARRIER_CHANGED"

.field private static final CONFIG_DB_RESET:I = 0x1c

.field private static final CSC_PROFILE:I = 0x7

.field private static final CSC_PROFILE_ID:I = 0x8

.field private static final CSC_SETTING:I = 0x9

.field private static final CSC_SETTING_ID:I = 0xa

.field private static final DEBUG_CONFIG:I = 0x15

.field private static final DM_ACCESS:I = 0x18

.field private static final DM_CONFIG_URI:Ljava/lang/String; = "com.samsung.rcs.dmconfigurationprovider"

.field private static final DNS_BLOCK:I = 0x14

.field private static final DOWNLOAD_CONFIG:I = 0x1d

.field private static final DT_LOC_USER_CONSENT:I = 0x27

.field private static final EPDG_SYSTEM_SETTINGS:I = 0x26

.field private static final EXTRA_CARRIER_PHONEID:Ljava/lang/String; = "com.samsung.carrier.extra.CARRIER_PHONE_ID"

.field private static final EXTRA_CARRIER_STATE:Ljava/lang/String; = "com.samsung.carrier.extra.CARRIER_STATE"

.field private static final GCF_CONFIG_NAME:I = 0x13

.field private static final GCF_INIT_RAT:I = 0x23

.field private static final IMPU:I = 0x11

.field private static final IMS_GLOBAL:I = 0x4

.field private static final IMS_GLOBAL_ID:I = 0x5

.field private static final IMS_GLOBAL_RESET:I = 0x6

.field private static final IMS_PROFILE:I = 0x1

.field private static final IMS_PROFILE_ID:I = 0x2

.field private static final IMS_PROFILE_RESET:I = 0x3

.field private static final IMS_SMK_SECRET_KEY:I = 0x21

.field private static final IMS_SWITCH:I = 0xb

.field private static final IMS_SWITCH_NAME:I = 0xd

.field private static final IMS_SWITCH_RESET:I = 0xc

.field private static final IMS_USER_SETTING:I = 0x24

.field private static final LOG_DELETE:Ljava/lang/String; = "Delete"

.field private static final LOG_INSERT:Ljava/lang/String; = "Insert"

.field private static final LOG_QUERY:Ljava/lang/String; = "Query"

.field public static final LOG_TAG:Ljava/lang/String; = "ImsSettingsProvider"

.field private static final LOG_UPDATE:Ljava/lang/String; = "Update"

.field private static final MNO:I = 0x17

.field private static final NV_LIST:I = 0x1a

.field private static final NV_STORAGE:I = 0xf

.field private static final PROFILE_MATCHER:I = 0x0

.field private static final RCS_VER:I = 0x1f

.field private static final RCS_VERSION:Ljava/lang/String; = "6.0.3"

.field private static final READ_ALL_OMADM:I = 0x19

.field private static final RESET_DOWNLOAD_CONFIG:I = 0x1e

.field private static final SELF_PROVISIONING:I = 0x12

.field private static final SELF_WIFICALLINGACTIVATION:I = 0x16

.field private static final SIM_DATA:I = 0xe

.field private static final SIM_MOBILITY:I = 0x20

.field private static final SIM_STATE_CHANGED_INTENT_FILTER:Landroid/content/IntentFilter;

.field private static final SMK_UPDATED_INFO:I = 0x22

.field private static final SMS_SETTING:I = 0x25

.field private static final USER_CONFIG:I = 0x10

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private final mCarrierFeatureReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mDeviceConfigManager:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/ims/settings/DeviceConfigManager;",
            ">;"
        }
    .end annotation
.end field

.field private mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public static synthetic $r8$lambda$krxtU0D9gBPnW_2B1-3HtgssZYI(Lcom/sec/internal/ims/settings/DeviceConfigManager;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/internal/ims/settings/SettingsProvider;->lambda$resetStoredConfig$0(Lcom/sec/internal/ims/settings/DeviceConfigManager;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/sec/internal/ims/settings/SettingsProvider;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mdoCarrierFeatureUpdate(Lcom/sec/internal/ims/settings/SettingsProvider;Lcom/sec/internal/ims/settings/ImsAutoUpdate;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/settings/SettingsProvider;->doCarrierFeatureUpdate(Lcom/sec/internal/ims/settings/ImsAutoUpdate;II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetSavedCarrierId(Lcom/sec/internal/ims/settings/SettingsProvider;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/settings/SettingsProvider;->getSavedCarrierId(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetSavedSwVersion(Lcom/sec/internal/ims/settings/SettingsProvider;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/settings/SettingsProvider;->getSavedSwVersion(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 127
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/sec/internal/ims/settings/SettingsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.sec.ims.settings"

    const-string v2, "match_profile_id"

    const/4 v3, 0x0

    .line 129
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "profile"

    const/4 v3, 0x1

    .line 131
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "profile/#"

    const/4 v3, 0x2

    .line 132
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "profile/reset"

    const/4 v3, 0x3

    .line 133
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "global"

    const/4 v3, 0x4

    .line 134
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "global/#"

    const/4 v3, 0x5

    .line 135
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "global/reset"

    const/4 v3, 0x6

    .line 136
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "config/reset"

    const/16 v3, 0x1c

    .line 137
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "cscprofile"

    const/4 v3, 0x7

    .line 138
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "cscprofile/#"

    const/16 v3, 0x8

    .line 139
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "cscsetting"

    const/16 v3, 0x9

    .line 140
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "cscsetting/#"

    const/16 v3, 0xa

    .line 141
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "imsswitch"

    const/16 v3, 0xb

    .line 142
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "imsswitch/*"

    const/16 v3, 0xd

    .line 143
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "imsswitchreset"

    const/16 v3, 0xc

    .line 144
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v2, "simdata"

    const/16 v3, 0xe

    .line 145
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "nvstorage/*"

    const/16 v3, 0xf

    .line 146
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v2, "userconfig"

    const/16 v3, 0x10

    .line 147
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "impu"

    const/16 v3, 0x11

    .line 148
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "selfprovisioning"

    const/16 v3, 0x12

    .line 149
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "gcfconfig"

    const/16 v3, 0x13

    .line 150
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "dnsblock"

    const/16 v3, 0x14

    .line 151
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "debugconfig/#"

    const/16 v3, 0x15

    .line 152
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "selfwificallingactivation"

    const/16 v3, 0x16

    .line 153
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "mno"

    const/16 v3, 0x17

    .line 155
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "com.samsung.rcs.dmconfigurationprovider"

    const-string v3, "omadm/./3GPP_IMS/*"

    const/16 v4, 0x18

    .line 158
    invoke-virtual {v0, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v3, "omadm"

    .line 159
    invoke-virtual {v0, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v3, "presence"

    .line 160
    invoke-virtual {v0, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v3, "*"

    .line 161
    invoke-virtual {v0, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v3, 0x0

    .line 162
    invoke-virtual {v0, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v3, "omadm/*"

    const/16 v4, 0x19

    .line 165
    invoke-virtual {v0, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "nvlist"

    const/16 v3, 0x1a

    .line 168
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "ims_info/rcs_ver"

    const/16 v3, 0x1f

    .line 170
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "secretkey"

    const/16 v3, 0x21

    .line 173
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "downloadconfig"

    const/16 v3, 0x1d

    .line 175
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "resetconfig"

    const/16 v3, 0x1e

    .line 176
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v2, "smkupdatedinfo"

    const/16 v3, 0x22

    .line 178
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 180
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    sput-object v2, Lcom/sec/internal/ims/settings/SettingsProvider;->SIM_STATE_CHANGED_INTENT_FILTER:Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    .line 181
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "simmobility"

    const/16 v3, 0x20

    .line 182
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "gcfinitrat"

    const/16 v3, 0x23

    .line 183
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "imsusersetting"

    const/16 v3, 0x24

    .line 184
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v2, "sms_setting"

    const/16 v3, 0x25

    .line 185
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "epdgsettings"

    const/16 v3, 0x26

    .line 187
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "dtlocuserconsent"

    const/16 v3, 0x27

    .line 188
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    const/4 v0, 0x0

    .line 191
    iput-object v0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    .line 194
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mDeviceConfigManager:Ljava/util/Map;

    .line 264
    new-instance v0, Lcom/sec/internal/ims/settings/SettingsProvider$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/settings/SettingsProvider$1;-><init>(Lcom/sec/internal/ims/settings/SettingsProvider;)V

    iput-object v0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mCarrierFeatureReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private doCarrierFeatureUpdate(Lcom/sec/internal/ims/settings/ImsAutoUpdate;II)V
    .locals 5

    .line 216
    invoke-virtual {p1}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->loadCarrierFeature()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    const-string v2, "remove_mnomap"

    .line 217
    invoke-virtual {p1, v0, v2}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getMnomap(ILjava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    sget-object v3, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    const/4 v4, 0x1

    if-ne v2, v3, :cond_1

    const-string v2, "add_mnomap"

    .line 219
    invoke-virtual {p1, v0, v2}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getMnomap(ILjava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    sget-object v0, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v4

    .line 222
    :goto_1
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/settings/SettingsProvider;->resetStoredConfig(Z)V

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 224
    invoke-direct {p0, p2, p3, v4}, Lcom/sec/internal/ims/settings/SettingsProvider;->saveUpdatedCarrierId(IIZ)V

    .line 225
    iget-object p0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "content://com.sec.ims.settings/mnomap_updated"

    .line 226
    invoke-static {p1, p2}, Lcom/sec/internal/helper/UriUtil;->buildUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object p1

    .line 225
    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void

    .line 230
    :cond_2
    iget-object p1, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "content://com.sec.ims.settings/carrier_feature_updated"

    .line 231
    invoke-static {v2, p2}, Lcom/sec/internal/helper/UriUtil;->buildUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v2

    .line 230
    invoke-virtual {p1, v2, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 236
    :cond_3
    invoke-direct {p0, p2, p3, v1}, Lcom/sec/internal/ims/settings/SettingsProvider;->saveUpdatedCarrierId(IIZ)V

    return-void
.end method

.method private dumpBinderInfo(Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 2

    .line 861
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 863
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, ") : "

    if-eqz p4, :cond_0

    .line 865
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p4, v0}, Lcom/sec/internal/helper/os/PackageUtils;->getProcessNameById(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p4

    .line 866
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {p4, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p4, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 868
    :cond_0
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 871
    :goto_0
    invoke-static {}, Lcom/sec/internal/log/IMSLog;->isShipBuild()Z

    move-result p4

    if-eqz p4, :cond_3

    const-string p4, "impu"

    .line 872
    invoke-virtual {p3, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_2

    const-string p4, "imsi"

    invoke-virtual {p3, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_1

    goto :goto_1

    :cond_1
    const-string p4, "\\d++@"

    const-string/jumbo v0, "xxx@"

    .line 876
    invoke-virtual {p3, p4, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_2

    :cond_2
    :goto_1
    const-string p4, "\\d"

    const-string/jumbo v0, "x"

    .line 873
    invoke-virtual {p3, p4, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 879
    :cond_3
    :goto_2
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_4

    .line 882
    iget-object p0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    const-string p0, "ImsSettingsProvider"

    .line 884
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void
.end method

.method private getAllServiceSwitches()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 323
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v0, "volte"

    .line 325
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "rcs"

    .line 326
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "ims"

    .line 327
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VILTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "defaultmsgappinuse"

    .line 330
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "mmtel"

    .line 333
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "mmtel-video"

    .line 334
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "mmtel-call-composer"

    .line 335
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "smsip"

    .line 336
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "ss"

    .line 337
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "cdpn"

    .line 338
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "options"

    .line 339
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "presence"

    .line 340
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "im"

    .line 341
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "ft"

    .line 342
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "ft_http"

    .line 343
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "slm"

    .line 344
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "lastseen"

    .line 345
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "is"

    .line 346
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "vs"

    .line 347
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "euc"

    .line 348
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "gls"

    .line 349
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "profile"

    .line 350
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "ec"

    .line 351
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "cab"

    .line 352
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "cms"

    .line 353
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "chatbot-communication"

    .line 354
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method private getSavedCarrierId(I)I
    .locals 2

    .line 240
    iget-object p0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    const-string v0, "carrierId"

    const/4 v1, -0x1

    invoke-static {p1, p0, v0, v0, v1}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getInt(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private getSavedImpu(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3

    .line 360
    iget-object p0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    const/4 v0, -0x1

    const-string v1, "saved_impu"

    const-string v2, ""

    invoke-static {v0, p0, v1, p1, v2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getString(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 361
    new-instance p1, Landroid/database/MatrixCursor;

    const-string v0, "impu"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 362
    invoke-virtual {p1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object p1
.end method

.method private getSavedSwVersion(I)Ljava/lang/String;
    .locals 3

    .line 245
    iget-object p0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    const-string v0, "carrierId"

    const-string/jumbo v1, "swversion"

    const-string v2, ""

    invoke-static {p1, p0, v0, v1, v2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getString(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSecretKey()Ljava/lang/String;
    .locals 1

    const-string v0, "3C061A6726A7E3CAF9634D43D93CAC61"

    return-object v0
.end method

.method private getShortenKeyForXNode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string p0, "\\./3GPP_IMS/"

    const-string v0, ""

    .line 965
    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "/"

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 966
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 968
    array-length v1, p0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    add-int/lit8 v2, v1, -0x2

    .line 970
    aget-object v2, p0, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, -0x1

    aget-object p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    if-lez v1, :cond_1

    const/4 p1, 0x0

    .line 972
    aget-object p0, p0, p1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 975
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isCmcSecondaryDevice()Z
    .locals 5

    .line 985
    new-instance v0, Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-direct {v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;-><init>()V

    .line 986
    iget-object p0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->init(Landroid/content/Context;)Z

    .line 987
    invoke-virtual {v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getOwnDeviceType()Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    move-result-object p0

    .line 988
    invoke-virtual {v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->deInit()V

    .line 989
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate: isCmcSecondaryDevice: api: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsSettingsProvider"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    sget-object v0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;->DEVICE_TYPE_SD:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    const/4 v2, 0x1

    if-ne p0, v0, :cond_0

    return v2

    .line 992
    :cond_0
    sget-object v0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;->DEVICE_TYPE_PD:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    const/4 v3, 0x0

    if-ne p0, v0, :cond_1

    return v3

    :cond_1
    const-string p0, "ro.cmc.device_type"

    const-string v0, ""

    .line 995
    invoke-static {p0, v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 996
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 997
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate: isCmcSecondaryDevice: prop: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sd"

    .line 998
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v2

    :cond_2
    return v3
.end method

.method private static synthetic lambda$resetStoredConfig$0(Lcom/sec/internal/ims/settings/DeviceConfigManager;)V
    .locals 1

    .line 846
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->restoreDefaultImsProfile()Z

    .line 847
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getGlobalSettingsRepo()Lcom/sec/internal/ims/settings/GlobalSettingsRepo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->reset()V

    .line 848
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getGlobalSettingsRepo()Lcom/sec/internal/ims/settings/GlobalSettingsRepo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->loadByDynamicConfig()V

    .line 849
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getSmsSetting()Lcom/sec/internal/ims/settings/SmsSetting;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/SmsSetting;->init()Z

    return-void
.end method

.method private resetStoredConfig(Z)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    move p1, v0

    .line 834
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mDeviceConfigManager:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 835
    iget-object v1, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    const-string v2, "globalsettings"

    invoke-static {p1, v1, v2, v0, v0}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 837
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "mnoname"

    const-string v3, "default"

    .line 838
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 839
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 844
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mDeviceConfigManager:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    .line 845
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/settings/SettingsProvider;->getDeviceConfigManager(I)Lcom/sec/internal/ims/settings/DeviceConfigManager;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v1, Lcom/sec/internal/ims/settings/SettingsProvider$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/sec/internal/ims/settings/SettingsProvider$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p1, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const/4 p1, 0x1

    .line 851
    invoke-static {v0, p1}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->loadRcsSettings(IZ)Z

    .line 852
    iget-object p1, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v1, Lcom/sec/internal/constants/ims/settings/GlobalSettingsConstants;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sec/internal/helper/UriUtil;->buildUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 853
    iget-object p1, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$Uris;->SMS_SETTING:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sec/internal/helper/UriUtil;->buildUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private saveUpdatedCarrierId(IIZ)V
    .locals 3

    .line 250
    iget-object v0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    const-string v1, "carrierId"

    invoke-static {p1, v0, v1, v1, p2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 251
    iget-object p2, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    const-string/jumbo v2, "swversion"

    invoke-static {p1, p2, v1, v2, v0}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iget-object p0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    const-string p2, "needMnoUpdate"

    invoke-static {p1, p0, v1, p2, p3}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private sendData(ILandroid/content/ContentValues;)V
    .locals 12

    .line 890
    invoke-static {p2}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Landroid/content/ContentValues;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 891
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 892
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INTERNAL_KEY_PROCESS_NAME"

    .line 895
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 896
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {v3, v4}, Lcom/sec/internal/helper/os/PackageUtils;->getProcessNameById(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 898
    :cond_0
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 900
    :goto_0
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const/high16 v2, 0x10040000

    .line 902
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",UPD:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 903
    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 902
    invoke-static {v2, v4}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 904
    invoke-virtual {p2}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 905
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v6, "^"

    const-string v7, "ImsSettingsProvider"

    if-eqz v4, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v8, "nv_init_done"

    .line 907
    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_1

    .line 913
    :cond_1
    sget-object v8, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v10, -0x1

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    .line 914
    invoke-virtual {v9}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;->getPathName()Ljava/lang/String;

    move-result-object v11

    .line 915
    invoke-virtual {v11, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 916
    invoke-virtual {v9}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;->getIndex()I

    move-result v8

    goto :goto_2

    :cond_3
    move v8, v10

    .line 922
    :goto_2
    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-ne v8, v10, :cond_4

    .line 923
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 924
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignore: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": ["

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const-string v10, ":"

    if-ltz v8, :cond_5

    .line 930
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 932
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "xNode item: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "X:"

    .line 933
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 937
    :goto_3
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 938
    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    const-string v8, "."

    invoke-virtual {v9, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 939
    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Replace sensitive data: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "HIDE"

    move-object v9, v7

    .line 942
    :cond_7
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 945
    :cond_8
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v6, 0x10040001

    .line 946
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 947
    invoke-direct {p0, v4}, Lcom/sec/internal/ims/settings/SettingsProvider;->getShortenKeyForXNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 946
    invoke-static {v6, v4}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 950
    :cond_9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 952
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .line 953
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 955
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "DMST"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "USRC"

    .line 956
    invoke-virtual {v0, p2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendData : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v7, p2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    iget-object p0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    const-string p2, "DMUI"

    invoke-static {p1, p0, p2, v0}, Lcom/sec/internal/ims/diagnosis/ImsLogAgentUtil;->sendLogToAgent(ILandroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V

    :cond_a
    return-void
.end method

.method private setSavedImpu(Landroid/content/ContentValues;)I
    .locals 3

    .line 367
    iget-object p0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    const-string v0, "imsi"

    .line 368
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "impu"

    .line 369
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, -0x1

    const-string v2, "saved_impu"

    .line 367
    invoke-static {v1, p0, v2, v0, p1}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method private updateEpdgSystemSettings(Landroid/content/ContentValues;)V
    .locals 6

    .line 1026
    invoke-virtual {p1}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1027
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, ".+[1-9]$"

    .line 1028
    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 1029
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v3

    .line 1032
    :goto_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 1033
    instance-of v5, v0, Ljava/lang/Integer;

    if-eqz v5, :cond_2

    .line 1034
    move-object v3, v0

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_2

    .line 1035
    :cond_2
    instance-of v5, v0, Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 1037
    :try_start_0
    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    :goto_2
    if-ltz v2, :cond_7

    if-gez v3, :cond_4

    goto :goto_3

    :cond_4
    const-string/jumbo v0, "wifi_call_enable"

    const-string v5, ""

    .line 1050
    invoke-virtual {v1, v0, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v4, :cond_5

    .line 1051
    iget-object v0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2, v3}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setWiFiCallEnabled(Landroid/content/Context;II)V

    goto :goto_0

    :cond_5
    const-string/jumbo v0, "wifi_call_preferred"

    .line 1052
    invoke-virtual {v1, v0, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v4, :cond_6

    .line 1053
    iget-object v0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2, v3}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setWiFiCallPreferred(Landroid/content/Context;II)V

    goto :goto_0

    :cond_6
    const-string/jumbo v0, "wifi_call_when_roaming"

    .line 1054
    invoke-virtual {v1, v0, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 1055
    iget-object v0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2, v3}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setWiFiCallWhenRoaming(Landroid/content/Context;II)V

    goto/16 :goto_0

    .line 1044
    :cond_7
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateEpdgSystemSettings: Skip wrong input ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1045
    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/settings/SettingsProvider$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/sec/internal/ims/settings/SettingsProvider$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const-string v1, "null!"

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] => lastChar ["

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "], val ["

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsSettingsProvider"

    .line 1044
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    return-void
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .line 319
    invoke-super {p0, p1}, Landroid/content/ContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object p0

    return-object p0
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    const-string p2, "dump"

    .line 822
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 823
    invoke-virtual {p0, p2, p2, p2}, Lcom/sec/internal/ims/settings/SettingsProvider;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    return-object p2
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4

    .line 616
    invoke-static {p1}, Lcom/sec/internal/helper/UriUtil;->getSimSlotFromUri(Landroid/net/Uri;)I

    move-result p2

    .line 617
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/settings/SettingsProvider;->getDeviceConfigManager(I)Lcom/sec/internal/ims/settings/DeviceConfigManager;

    move-result-object p3

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    .line 622
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Delete"

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3, v1, v3}, Lcom/sec/internal/ims/settings/SettingsProvider;->dumpBinderInfo(Ljava/lang/String;ZLjava/lang/String;Z)V

    .line 625
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 626
    invoke-static {v1}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 627
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, p1

    .line 631
    :goto_0
    sget-object v2, Lcom/sec/internal/ims/settings/SettingsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    const/16 v3, 0xf

    if-eq v2, v3, :cond_3

    const/16 v3, 0x18

    if-eq v2, v3, :cond_3

    const/16 p3, 0x1e

    if-ne v2, p3, :cond_2

    .line 640
    iget-object p3, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    invoke-static {p3, p2}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/ImsAutoUpdate;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->clearSmkConfig()V

    .line 641
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/settings/SettingsProvider;->resetStoredConfig(Z)V

    .line 642
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_1

    .line 645
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown URI "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 637
    :cond_3
    invoke-virtual {p3, v1}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->deleteDm(Landroid/net/Uri;)I

    move-result v0

    goto :goto_1

    .line 633
    :cond_4
    invoke-virtual {p3}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getProfileCache()Lcom/sec/internal/ims/settings/ImsProfileCache;

    move-result-object p0

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/settings/ImsProfileCache;->remove(I)V

    :goto_1
    return v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 980
    iget-object p1, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {p1}, Lcom/sec/internal/helper/SimpleEventLog;->dump()V

    .line 981
    iget-object p0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mDeviceConfigManager:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/settings/SettingsProvider$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lcom/sec/internal/ims/settings/SettingsProvider$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method getDeviceConfigManager(I)Lcom/sec/internal/ims/settings/DeviceConfigManager;
    .locals 2

    .line 308
    iget-object p0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mDeviceConfigManager:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;

    if-nez p0, :cond_0

    const-string v0, "ImsSettingsProvider"

    const-string v1, "getDeviceConfigManager: Not exist."

    .line 310
    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 8

    .line 563
    invoke-static {p1}, Lcom/sec/internal/helper/UriUtil;->getSimSlotFromUri(Landroid/net/Uri;)I

    move-result v0

    .line 564
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/settings/SettingsProvider;->getDeviceConfigManager(I)Lcom/sec/internal/ims/settings/DeviceConfigManager;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    if-nez p2, :cond_0

    goto/16 :goto_2

    .line 569
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uri["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "], value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Insert"

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5, v3, v5}, Lcom/sec/internal/ims/settings/SettingsProvider;->dumpBinderInfo(Ljava/lang/String;ZLjava/lang/String;Z)V

    .line 571
    iget-object v3, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {v3, v4}, Lcom/sec/internal/helper/os/PackageUtils;->getProcessNameById(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ":CloudMessageService"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 572
    iget-object p0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string p1, "insert: Ignore the call from CMS process"

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    return-object v2

    .line 577
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 578
    invoke-static {v3}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 579
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, ""

    invoke-virtual {v4, v3, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_0

    :cond_2
    move-object v3, p1

    :goto_0
    const-wide/16 v6, 0x0

    .line 583
    sget-object v4, Lcom/sec/internal/ims/settings/SettingsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v4, v3}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    if-eq v4, v5, :cond_6

    const/16 v5, 0x15

    if-eq v4, v5, :cond_5

    const/16 v5, 0x18

    if-eq v4, v5, :cond_4

    const/16 v5, 0x26

    if-eq v4, v5, :cond_3

    packed-switch v4, :pswitch_data_0

    .line 605
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown URI "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 585
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/settings/SettingsProvider;->setSavedImpu(Landroid/content/ContentValues;)I

    goto :goto_1

    .line 588
    :pswitch_1
    invoke-virtual {v1}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getUserConfigStorage()Lcom/sec/internal/ims/settings/UserConfigStorage;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/settings/UserConfigStorage;->insert(Landroid/content/ContentValues;)V

    goto :goto_1

    .line 602
    :cond_3
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/settings/SettingsProvider;->updateEpdgSystemSettings(Landroid/content/ContentValues;)V

    goto :goto_1

    .line 598
    :cond_4
    :pswitch_2
    invoke-direct {p0, v0, p2}, Lcom/sec/internal/ims/settings/SettingsProvider;->sendData(ILandroid/content/ContentValues;)V

    .line 599
    invoke-virtual {v1, v3, p2}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->insertDm(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_1

    .line 594
    :cond_5
    invoke-virtual {v1}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getDebugConfigStorage()Lcom/sec/internal/ims/settings/DebugConfigStorage;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/sec/internal/ims/settings/DebugConfigStorage;->insert(ILandroid/content/ContentValues;)V

    goto :goto_1

    .line 591
    :cond_6
    invoke-virtual {v1}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getProfileCache()Lcom/sec/internal/ims/settings/ImsProfileCache;

    move-result-object v0

    new-instance v1, Lcom/sec/ims/settings/ImsProfile;

    invoke-direct {v1, p2}, Lcom/sec/ims/settings/ImsProfile;-><init>(Landroid/content/ContentValues;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/settings/ImsProfileCache;->insert(Lcom/sec/ims/settings/ImsProfile;)I

    move-result p2

    int-to-long v6, p2

    .line 608
    :goto_1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 610
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_7
    :goto_2
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 6

    .line 198
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    .line 199
    new-instance v1, Lcom/sec/internal/helper/SimpleEventLog;

    const-string v2, "ImsSettingsProvider"

    const/16 v3, 0x1f4

    invoke-direct {v1, v0, v2, v3}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 201
    iget-object v0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v0, 0x0

    .line 202
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 203
    iget-object v1, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mDeviceConfigManager:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/sec/internal/ims/settings/DeviceConfigManager;

    iget-object v5, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v0}, Lcom/sec/internal/ims/settings/DeviceConfigManager;-><init>(Landroid/content/Context;I)V

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/sec/internal/ims/settings/SettingsProvider;->isCmcSecondaryDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mDeviceConfigManager:Ljava/util/Map;

    sget v1, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lcom/sec/internal/ims/settings/DeviceConfigManager;

    iget-object v4, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    sget v5, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    invoke-direct {v3, v4, v5}, Lcom/sec/internal/ims/settings/DeviceConfigManager;-><init>(Landroid/content/Context;I)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "CMC supported no NOSIM model : DeviceConfigManager"

    .line 207
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mCarrierFeatureReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.samsung.carrier.action.CARRIER_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 p0, 0x1

    return p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 375
    invoke-static/range {p1 .. p1}, Lcom/sec/internal/helper/UriUtil;->getSimSlotFromUri(Landroid/net/Uri;)I

    move-result v5

    .line 376
    invoke-virtual {v0, v5}, Lcom/sec/internal/ims/settings/SettingsProvider;->getDeviceConfigManager(I)Lcom/sec/internal/ims/settings/DeviceConfigManager;

    move-result-object v6

    const/4 v7, 0x0

    if-nez v6, :cond_0

    return-object v7

    .line 381
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Uri["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 384
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "#"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 385
    invoke-static {v9}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v10

    const-string v11, ""

    if-nez v10, :cond_1

    .line 386
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v9, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    goto :goto_0

    :cond_1
    move-object v9, v1

    :goto_0
    if-eqz v3, :cond_2

    .line 390
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", sel : "

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_2
    if-eqz v2, :cond_3

    .line 393
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", pro : "

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 396
    :cond_3
    invoke-static {}, Lcom/sec/internal/log/IMSLog;->isShipBuild()Z

    move-result v10

    const/4 v12, 0x0

    if-nez v10, :cond_4

    const-string v10, "Query"

    .line 397
    invoke-direct {v0, v10, v12, v8, v12}, Lcom/sec/internal/ims/settings/SettingsProvider;->dumpBinderInfo(Ljava/lang/String;ZLjava/lang/String;Z)V

    .line 400
    :cond_4
    sget-object v8, Lcom/sec/internal/ims/settings/SettingsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v8, v9}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v8

    const-string v10, "ImsSettingsProvider"

    const-string v13, "mnoname"

    const-string v14, "profile"

    const/4 v15, 0x1

    if-eq v8, v15, :cond_11

    const/4 v7, 0x2

    if-eq v8, v7, :cond_f

    const/4 v7, 0x4

    if-eq v8, v7, :cond_e

    const/16 v7, 0xb

    if-eq v8, v7, :cond_c

    const/16 v7, 0xd

    if-eq v8, v7, :cond_c

    const/16 v7, 0x13

    if-eq v8, v7, :cond_b

    const/16 v7, 0x15

    if-eq v8, v7, :cond_a

    const/16 v7, 0x27

    const/4 v14, -0x1

    if-eq v8, v7, :cond_9

    packed-switch v8, :pswitch_data_0

    packed-switch v8, :pswitch_data_1

    packed-switch v8, :pswitch_data_2

    .line 552
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 538
    :pswitch_0
    invoke-virtual {v6}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getSmsSetting()Lcom/sec/internal/ims/settings/SmsSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/settings/SmsSetting;->getAsCursor()Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 452
    :pswitch_1
    invoke-virtual {v6, v2}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->queryImsUserSetting([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 529
    :pswitch_2
    iget-object v0, v0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    const-string v1, "gcf_init_rat"

    invoke-static {v14, v0, v1, v12, v12}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "rat"

    .line 531
    invoke-interface {v0, v1, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 532
    new-instance v2, Landroid/database/MatrixCursor;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 533
    invoke-virtual {v2}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    return-object v2

    .line 513
    :pswitch_3
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "smkupdatedinfo"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 516
    :try_start_0
    iget-object v0, v0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    invoke-static {v0, v5}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/ImsAutoUpdate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getSmkConfig()Lcom/google/gson/JsonObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 518
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to get SMK Updated Information : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    :goto_1
    if-eqz v7, :cond_5

    .line 520
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    const-string/jumbo v0, "updated info return, query to ImsSettings"

    .line 521
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    invoke-virtual {v1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    :cond_5
    return-object v1

    .line 495
    :pswitch_4
    new-instance v0, Landroid/database/MatrixCursor;

    const-string v1, "secretkey"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 496
    invoke-virtual {v0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v1

    invoke-static {}, Lcom/sec/internal/ims/settings/SettingsProvider;->getSecretKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    return-object v0

    .line 507
    :pswitch_5
    new-instance v0, Landroid/database/MatrixCursor;

    const-string/jumbo v1, "simmobility"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 508
    invoke-virtual {v0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v1

    invoke-static {v5}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->isSimMobilityActivated()Z

    move-result v2

    if-ne v2, v15, :cond_6

    move v12, v15

    :cond_6
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    return-object v0

    .line 501
    :pswitch_6
    new-instance v0, Landroid/database/MatrixCursor;

    const-string v1, "rcs_ver"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 502
    invoke-virtual {v0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v1

    const-string v2, "6.0.3"

    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    return-object v0

    .line 479
    :pswitch_7
    new-instance v0, Landroid/database/MatrixCursor;

    const-string v1, "NVLIST"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 480
    invoke-virtual {v6}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getNvList()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v6}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getNvList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    new-array v1, v15, [Ljava/lang/String;

    .line 481
    invoke-virtual {v6}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getNvList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v12

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_7
    return-object v0

    .line 471
    :pswitch_8
    invoke-virtual {v9}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v5, 0x1

    move-object v0, v6

    move-object v1, v9

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 472
    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->queryDm(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 487
    :pswitch_9
    new-instance v0, Landroid/database/MatrixCursor;

    const-string v1, "mvnoname"

    const-string v2, "hassim"

    filled-new-array {v13, v1, v2}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 489
    invoke-virtual {v0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    invoke-virtual {v6}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getMnoName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v13, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    .line 490
    invoke-virtual {v6}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getMvnoName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v1

    .line 491
    invoke-virtual {v6}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getHasSim()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    return-object v0

    .line 402
    :pswitch_a
    aget-object v1, v4, v12

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/settings/SettingsProvider;->getSavedImpu(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 462
    :pswitch_b
    invoke-virtual {v6}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getUserConfigStorage()Lcom/sec/internal/ims/settings/UserConfigStorage;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/settings/UserConfigStorage;->query([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :cond_8
    :pswitch_c
    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, v9

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 476
    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->queryDm(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 543
    :cond_9
    iget-object v0, v0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    const-string v1, "dtlocuserconsent"

    invoke-static {v14, v0, v1, v12, v12}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "dtlocation"

    .line 545
    invoke-interface {v0, v1, v14}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 546
    new-instance v2, Landroid/database/MatrixCursor;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 547
    invoke-virtual {v2}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    return-object v2

    .line 468
    :cond_a
    invoke-virtual {v6}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getDebugConfigStorage()Lcom/sec/internal/ims/settings/DebugConfigStorage;

    move-result-object v0

    invoke-virtual {v0, v5, v2}, Lcom/sec/internal/ims/settings/DebugConfigStorage;->query(I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 465
    :cond_b
    invoke-virtual {v6}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->queryGcfConfig()Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :cond_c
    if-nez v2, :cond_d

    .line 457
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/settings/SettingsProvider;->getAllServiceSwitches()Ljava/util/ArrayList;

    move-result-object v0

    new-array v1, v12, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_2

    :cond_d
    move-object v0, v2

    .line 459
    :goto_2
    invoke-virtual {v6, v0}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->queryImsSwitch([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 449
    :cond_e
    invoke-virtual {v6}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getGlobalSettingsRepo()Lcom/sec/internal/ims/settings/GlobalSettingsRepo;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v4}, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 439
    :cond_f
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 440
    invoke-virtual {v6}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getProfileCache()Lcom/sec/internal/ims/settings/ImsProfileCache;

    move-result-object v1

    invoke-virtual {v9}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/settings/ImsProfileCache;->getProfile(I)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 443
    invoke-virtual {v0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->toJson()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v14, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    :cond_10
    return-object v0

    .line 409
    :cond_11
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 412
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string v1, "="

    .line 413
    invoke-virtual {v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v15

    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 414
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ImsProfile query with  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v5, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    const-string v2, "mdmn_type"

    .line 415
    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 417
    invoke-virtual {v6}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getProfileCache()Lcom/sec/internal/ims/settings/ImsProfileCache;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/settings/ImsProfileCache;->getProfileListByMdmnType(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    goto :goto_3

    :cond_12
    const-string v2, "salescode"

    .line 418
    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 419
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_3

    :cond_13
    const-string v2, "mccmnc"

    .line 420
    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 421
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_3

    .line 422
    :cond_14
    invoke-virtual {v3, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 423
    invoke-virtual {v6}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getGlobalSettingsRepo()Lcom/sec/internal/ims/settings/GlobalSettingsRepo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->getGlobalGcEnabled()Z

    move-result v2

    .line 424
    invoke-virtual {v6}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getProfileCache()Lcom/sec/internal/ims/settings/ImsProfileCache;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/sec/internal/ims/settings/ImsProfileCache;->getProfileListByMnoName(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v1

    goto :goto_3

    .line 426
    :cond_15
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_3

    .line 429
    :cond_16
    invoke-virtual {v6}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getProfileCache()Lcom/sec/internal/ims/settings/ImsProfileCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/settings/ImsProfileCache;->getAllProfileList()Ljava/util/List;

    move-result-object v1

    .line 432
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/settings/ImsProfile;

    .line 433
    invoke-virtual {v0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->toJson()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v14, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_4

    :cond_17
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x17
        :pswitch_9
        :pswitch_c
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1f
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8

    .line 654
    invoke-static {p1}, Lcom/sec/internal/helper/UriUtil;->getSimSlotFromUri(Landroid/net/Uri;)I

    move-result p3

    .line 655
    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/settings/SettingsProvider;->getDeviceConfigManager(I)Lcom/sec/internal/ims/settings/DeviceConfigManager;

    move-result-object p4

    const/4 v0, 0x0

    if-nez p4, :cond_0

    return v0

    .line 660
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Uri["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "], value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Update"

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3, v1, v3}, Lcom/sec/internal/ims/settings/SettingsProvider;->dumpBinderInfo(Ljava/lang/String;ZLjava/lang/String;Z)V

    .line 662
    iget-object v1, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/internal/helper/os/PackageUtils;->getProcessNameById(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ":CloudMessageService"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 663
    iget-object p0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo p1, "update: Ignore the call from CMS process"

    invoke-virtual {p0, p3, p1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    return v0

    .line 668
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 669
    invoke-static {v1}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 670
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v2, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, p1

    .line 674
    :goto_0
    sget-object v2, Lcom/sec/internal/ims/settings/SettingsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/16 v4, 0xf

    const/4 v5, 0x0

    const-string v6, "ImsSettingsProvider"

    if-eq v2, v4, :cond_c

    const/16 v4, 0x27

    if-eq v2, v4, :cond_b

    const/16 v4, 0x1c

    if-eq v2, v4, :cond_a

    const/16 v4, 0x1d

    if-eq v2, v4, :cond_7

    const/16 v4, 0x23

    if-eq v2, v4, :cond_6

    const/16 v4, 0x24

    if-eq v2, v4, :cond_5

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    packed-switch v2, :pswitch_data_3

    .line 809
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown URI "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 797
    :pswitch_0
    invoke-direct {p0, p3, p2}, Lcom/sec/internal/ims/settings/SettingsProvider;->sendData(ILandroid/content/ContentValues;)V

    .line 798
    invoke-virtual {p4, v1, p2}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->updateDm(Landroid/net/Uri;Landroid/content/ContentValues;)I

    goto/16 :goto_4

    .line 793
    :pswitch_1
    invoke-virtual {p4, p2}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->updateMno(Landroid/content/ContentValues;)V

    goto/16 :goto_4

    .line 789
    :pswitch_2
    invoke-virtual {p4, p2}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->updateWificallingProperty(Landroid/content/ContentValues;)V

    goto/16 :goto_4

    .line 785
    :pswitch_3
    invoke-virtual {p4, p2}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->updateDnsBlock(Landroid/content/ContentValues;)V

    goto/16 :goto_4

    .line 781
    :pswitch_4
    invoke-virtual {p4, p2}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->updateGcfConfig(Landroid/content/ContentValues;)V

    goto/16 :goto_4

    .line 777
    :pswitch_5
    invoke-virtual {p4, p2}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->updateProvisioningProperty(Landroid/content/ContentValues;)V

    goto/16 :goto_4

    .line 769
    :pswitch_6
    invoke-virtual {p4}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->resetImsSwitch()V

    goto/16 :goto_4

    :pswitch_7
    const-string p3, "service"

    .line 760
    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v1, "enabled"

    .line 761
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const-string v1, "ipme"

    .line 762
    invoke-virtual {v1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    xor-int/2addr v1, v3

    .line 765
    invoke-virtual {p4, p3, p2}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->enableImsSwitch(Ljava/lang/String;Z)V

    move p2, v0

    move v0, v1

    goto/16 :goto_5

    :pswitch_8
    const-string/jumbo p2, "update: reset."

    .line 743
    invoke-static {v6, p3, p2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 744
    invoke-virtual {p4}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getGlobalSettingsRepo()Lcom/sec/internal/ims/settings/GlobalSettingsRepo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->reset()V

    .line 745
    invoke-virtual {p4}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getGlobalSettingsRepo()Lcom/sec/internal/ims/settings/GlobalSettingsRepo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->load()V

    goto/16 :goto_4

    .line 739
    :pswitch_9
    invoke-virtual {p4}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getGlobalSettingsRepo()Lcom/sec/internal/ims/settings/GlobalSettingsRepo;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->update(Landroid/content/ContentValues;)V

    goto/16 :goto_4

    .line 734
    :pswitch_a
    invoke-virtual {p4}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->restoreDefaultImsProfile()Z

    goto/16 :goto_4

    .line 697
    :pswitch_b
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 699
    invoke-virtual {p4}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getGlobalSettingsRepo()Lcom/sec/internal/ims/settings/GlobalSettingsRepo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->getPreviousMno()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 700
    invoke-virtual {p4}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getProfileCache()Lcom/sec/internal/ims/settings/ImsProfileCache;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/settings/ImsProfileCache;->getProfile(I)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getBadEventExpiry()I

    move-result v2

    .line 701
    invoke-virtual {p4}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getProfileCache()Lcom/sec/internal/ims/settings/ImsProfileCache;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/sec/internal/ims/settings/ImsProfileCache;->getProfile(I)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getExtendedPublishTimer()I

    move-result v4

    .line 703
    invoke-virtual {p4}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getProfileCache()Lcom/sec/internal/ims/settings/ImsProfileCache;

    move-result-object v7

    invoke-virtual {v7, v0, p2}, Lcom/sec/internal/ims/settings/ImsProfileCache;->update(ILandroid/content/ContentValues;)I

    move-result p2

    .line 704
    sget-object v7, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne v1, v7, :cond_4

    .line 705
    invoke-virtual {p4}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getProfileCache()Lcom/sec/internal/ims/settings/ImsProfileCache;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/settings/ImsProfileCache;->getProfile(I)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getBadEventExpiry()I

    move-result v1

    if-ne v2, v1, :cond_3

    .line 706
    invoke-virtual {p4}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getProfileCache()Lcom/sec/internal/ims/settings/ImsProfileCache;

    move-result-object p4

    invoke-virtual {p4, v0}, Lcom/sec/internal/ims/settings/ImsProfileCache;->getProfile(I)Lcom/sec/ims/settings/ImsProfile;

    move-result-object p4

    .line 707
    invoke-virtual {p4}, Lcom/sec/ims/settings/ImsProfile;->getExtendedPublishTimer()I

    move-result p4

    if-eq v4, p4, :cond_4

    :cond_3
    const-string/jumbo p0, "update : badEventExpiry or badEventExpiry for ATT"

    .line 709
    invoke-static {v6, p3, p0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return p2

    :cond_4
    :goto_1
    move v0, v3

    goto/16 :goto_5

    :pswitch_c
    const-string/jumbo p0, "update: Bulk edit not supported."

    .line 676
    invoke-static {v6, p3, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return v0

    :cond_5
    const-string p3, "name"

    .line 753
    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string/jumbo v1, "value"

    .line 754
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 755
    invoke-virtual {p4, p3, p2}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->setImsUserSetting(Ljava/lang/String;I)V

    goto/16 :goto_4

    .line 802
    :cond_6
    invoke-virtual {p4, p2}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->updateGcfInitRat(Landroid/content/ContentValues;)V

    goto/16 :goto_4

    :cond_7
    const p4, 0x10040010

    .line 716
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",SMK UPDATE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p4, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 718
    iget-object p4, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    invoke-static {p4, p3}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/ImsAutoUpdate;

    move-result-object p3

    .line 719
    sget-object p4, Lcom/sec/internal/constants/ims/ImsConstants;->DOWNLOAD_CONFIG:Ljava/lang/String;

    invoke-virtual {p2, p4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->updateSmkConfig(Ljava/lang/String;)V

    const-string p2, "remove_mnomap"

    .line 721
    invoke-virtual {p3, v0, p2}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getMnomap(ILjava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p2

    sget-object p4, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    if-ne p2, p4, :cond_9

    const-string p2, "add_mnomap"

    .line 723
    invoke-virtual {p3, v0, p2}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getMnomap(ILjava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p2

    sget-object p3, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    if-eq p2, p3, :cond_8

    goto :goto_2

    :cond_8
    move p2, v0

    goto :goto_3

    :cond_9
    :goto_2
    move p2, v3

    .line 725
    :goto_3
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/settings/SettingsProvider;->resetStoredConfig(Z)V

    if-eqz p2, :cond_d

    .line 727
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string p3, "content://com.sec.ims.settings/mnomap_updated"

    .line 728
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    .line 727
    invoke-virtual {p2, p3, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move p2, v0

    goto :goto_5

    .line 749
    :cond_a
    new-instance p2, Lcom/sec/internal/ims/config/adapters/StorageAdapter;

    invoke-direct {p2}, Lcom/sec/internal/ims/config/adapters/StorageAdapter;-><init>()V

    iget-object p3, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->forceDeleteALL(Landroid/content/Context;)V

    goto :goto_4

    .line 806
    :cond_b
    invoke-virtual {p4, p2}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->updateDtLocUserConsent(Landroid/content/ContentValues;)V

    goto :goto_4

    :cond_c
    const-string/jumbo p2, "update: not supported in NV_STORAGE. use insert"

    .line 773
    invoke-static {v6, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    :goto_4
    move p2, v0

    goto/16 :goto_1

    :goto_5
    if-eqz v0, :cond_e

    .line 813
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "notifyChange uri ["

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, "]"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v6, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_e
    return p2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_7
        :pswitch_6
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x12
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x16
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
