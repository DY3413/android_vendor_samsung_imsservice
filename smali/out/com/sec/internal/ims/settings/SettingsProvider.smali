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

.field private static final EXTRA_CARRIER_GROUP_CHANGED:Ljava/lang/String; = "com.samsung.carrier.extra.CARRIER_GROUP_CHANGED"

.field private static final EXTRA_CARRIER_PHONEID:Ljava/lang/String; = "com.samsung.carrier.extra.CARRIER_PHONE_ID"

.field private static final EXTRA_CARRIER_STATE:Ljava/lang/String; = "com.samsung.carrier.extra.CARRIER_STATE"

.field private static final GCF_CONFIG_NAME:I = 0x13

.field private static final GCF_INIT_RAT:I = 0x23

.field private static final IDC_CONFIG:I = 0x28

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
.method public static synthetic $r8$lambda$ToZTK_PkBLan-RO8ExxbPGuq4aI(Lcom/sec/internal/ims/settings/DeviceConfigManager;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/settings/SettingsProvider;->lambda$reset$0(Lcom/sec/internal/ims/settings/DeviceConfigManager;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/sec/internal/ims/settings/SettingsProvider;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mdoCarrierFeatureUpdate(Lcom/sec/internal/ims/settings/SettingsProvider;Lcom/sec/internal/ims/settings/ImsAutoUpdate;II)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/settings/SettingsProvider;->doCarrierFeatureUpdate(Lcom/sec/internal/ims/settings/ImsAutoUpdate;II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetSavedCarrierId(Lcom/sec/internal/ims/settings/SettingsProvider;I)I
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/settings/SettingsProvider;->getSavedCarrierId(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetSavedSwVersion(Lcom/sec/internal/ims/settings/SettingsProvider;I)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/settings/SettingsProvider;->getSavedSwVersion(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mresetStoredConfig(Lcom/sec/internal/ims/settings/SettingsProvider;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/settings/SettingsProvider;->resetStoredConfig(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateOtherVoLTEIconSetting(Lcom/sec/internal/ims/settings/SettingsProvider;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/settings/SettingsProvider;->updateOtherVoLTEIconSetting(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 5

    .line 129
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/sec/internal/ims/settings/SettingsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "match_profile_id"

    const/4 v2, 0x0

    const-string v3, "com.sec.ims.settings"

    .line 131
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "profile"

    const/4 v2, 0x1

    .line 133
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "profile/#"

    const/4 v2, 0x2

    .line 134
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "profile/reset"

    const/4 v2, 0x3

    .line 135
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "global"

    const/4 v2, 0x4

    .line 136
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "global/#"

    const/4 v2, 0x5

    .line 137
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "global/reset"

    const/4 v2, 0x6

    .line 138
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "config/reset"

    const/16 v2, 0x1c

    .line 139
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "cscprofile"

    const/4 v2, 0x7

    .line 140
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "cscprofile/#"

    const/16 v2, 0x8

    .line 141
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "cscsetting"

    const/16 v2, 0x9

    .line 142
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "cscsetting/#"

    const/16 v2, 0xa

    .line 143
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "imsswitch"

    const/16 v2, 0xb

    .line 144
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "imsswitch/*"

    const/16 v2, 0xd

    .line 145
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "imsswitchreset"

    const/16 v2, 0xc

    .line 146
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v1, "simdata"

    const/16 v2, 0xe

    .line 147
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "nvstorage/*"

    const/16 v2, 0xf

    .line 148
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v1, "userconfig"

    const/16 v2, 0x10

    .line 149
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "impu"

    const/16 v2, 0x11

    .line 150
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v1, "selfprovisioning"

    const/16 v2, 0x12

    .line 151
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "gcfconfig"

    const/16 v2, 0x13

    .line 152
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "dnsblock"

    const/16 v2, 0x14

    .line 153
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "debugconfig/#"

    const/16 v2, 0x15

    .line 154
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v1, "selfwificallingactivation"

    const/16 v2, 0x16

    .line 155
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "mno"

    const/16 v2, 0x17

    .line 157
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "com.samsung.rcs.dmconfigurationprovider"

    const-string v2, "omadm/./3GPP_IMS/*"

    const/16 v4, 0x18

    .line 160
    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "omadm"

    .line 161
    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "presence"

    .line 162
    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "*"

    .line 163
    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v2, 0x0

    .line 164
    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "omadm/*"

    const/16 v4, 0x19

    .line 167
    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "nvlist"

    const/16 v2, 0x1a

    .line 170
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "ims_info/rcs_ver"

    const/16 v2, 0x1f

    .line 172
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v1, "secretkey"

    const/16 v2, 0x21

    .line 175
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "downloadconfig"

    const/16 v2, 0x1d

    .line 177
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v1, "resetconfig"

    const/16 v2, 0x1e

    .line 178
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v1, "smkupdatedinfo"

    const/16 v2, 0x22

    .line 180
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 182
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    sput-object v1, Lcom/sec/internal/ims/settings/SettingsProvider;->SIM_STATE_CHANGED_INTENT_FILTER:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    .line 183
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "simmobility"

    const/16 v2, 0x20

    .line 184
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "gcfinitrat"

    const/16 v2, 0x23

    .line 185
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "imsusersetting"

    const/16 v2, 0x24

    .line 186
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v1, "sms_setting"

    const/16 v2, 0x25

    .line 187
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "epdgsettings"

    const/16 v2, 0x26

    .line 189
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "dtlocuserconsent"

    const/16 v2, 0x27

    .line 190
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "idcconfig"

    const/16 v2, 0x28

    .line 191
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 68
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    const/4 v0, 0x0

    .line 194
    iput-object v0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    .line 197
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mDeviceConfigManager:Ljava/util/Map;

    .line 263
    new-instance v0, Lcom/sec/internal/ims/settings/SettingsProvider$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/settings/SettingsProvider$1;-><init>(Lcom/sec/internal/ims/settings/SettingsProvider;)V

    iput-object v0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mCarrierFeatureReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private doCarrierFeatureUpdate(Lcom/sec/internal/ims/settings/ImsAutoUpdate;II)V
    .registers 7

    .line 219
    invoke-virtual {p1}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->loadCarrierFeature()Z

    move-result v0

    if-eqz v0, :cond_45

    const-string/jumbo v0, "remove_mnomap"

    const/4 v1, 0x4

    .line 220
    invoke-virtual {p1, v1, v0}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getMnomap(ILjava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    sget-object v2, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    if-ne v0, v2, :cond_1f

    const-string v0, "add_mnomap"

    .line 222
    invoke-virtual {p1, v1, v0}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getMnomap(ILjava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    sget-object v0, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    if-eq p1, v0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p1, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 p1, 0x1

    .line 225
    :goto_20
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/settings/SettingsProvider;->resetStoredConfig(Z)V

    const/4 v0, 0x0

    if-eqz p1, :cond_36

    .line 227
    iget-object p1, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "content://com.sec.ims.settings/mnomap_updated"

    .line 228
    invoke-static {v1, p2}, Lcom/sec/internal/helper/UriUtil;->buildUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v1

    .line 227
    invoke-virtual {p1, v1, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_45

    .line 231
    :cond_36
    iget-object p1, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "content://com.sec.ims.settings/dynamic_ims_updated"

    .line 232
    invoke-static {v1, p2}, Lcom/sec/internal/helper/UriUtil;->buildUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v1

    .line 231
    invoke-virtual {p1, v1, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 237
    :cond_45
    :goto_45
    invoke-direct {p0, p2, p3}, Lcom/sec/internal/ims/settings/SettingsProvider;->saveUpdatedCarrierId(II)V

    return-void
.end method

.method private dumpBinderInfo(Ljava/lang/String;ZLjava/lang/String;Z)V
    .registers 7

    .line 915
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 917
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, ") : "

    if-eqz p4, :cond_48

    .line 919
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p4, v0}, Lcom/sec/internal/helper/os/PackageUtils;->getProcessNameById(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p4

    .line 920
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

    goto :goto_57

    .line 922
    :cond_48
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 925
    :goto_57
    invoke-static {}, Lcom/sec/internal/log/IMSLog;->isShipBuild()Z

    move-result p4

    if-eqz p4, :cond_81

    const-string p4, "impu"

    .line 926
    invoke-virtual {p3, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_78

    const-string p4, "imsi"

    invoke-virtual {p3, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_6e

    goto :goto_78

    :cond_6e
    const-string p4, "\\d++@"

    const-string/jumbo v0, "xxx@"

    .line 930
    invoke-virtual {p3, p4, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_81

    :cond_78
    :goto_78
    const-string p4, "\\d"

    const-string/jumbo v0, "x"

    .line 927
    invoke-virtual {p3, p4, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 933
    :cond_81
    :goto_81
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_98

    .line 936
    iget-object p0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    goto :goto_9d

    :cond_98
    const-string p0, "ImsSettingsProvider"

    .line 938
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9d
    return-void
.end method

.method private getAllServiceSwitches()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 355
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v0, "volte"

    .line 357
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "rcs"

    .line 358
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "ims"

    .line 359
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VILTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "defaultmsgappinuse"

    .line 362
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "mmtel"

    .line 365
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "mmtel-video"

    .line 366
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "mmtel-call-composer"

    .line 367
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "smsip"

    .line 368
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "ss"

    .line 369
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "cdpn"

    .line 370
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "options"

    .line 371
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "presence"

    .line 372
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "im"

    .line 373
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "ft"

    .line 374
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "ft_http"

    .line 375
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "slm"

    .line 376
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "lastseen"

    .line 377
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "is"

    .line 378
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "vs"

    .line 379
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "euc"

    .line 380
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "gls"

    .line 381
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "profile"

    .line 382
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "ec"

    .line 383
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "cab"

    .line 384
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "cms"

    .line 385
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "chatbot-communication"

    .line 386
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "datachannel"

    .line 387
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method private getSavedCarrierId(I)I
    .registers 4

    .line 241
    iget-object p0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    const-string v0, "carrierId"

    const/4 v1, -0x1

    invoke-static {p1, p0, v0, v0, v1}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getInt(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private getSavedImpu(Ljava/lang/String;)Landroid/database/Cursor;
    .registers 5

    .line 393
    iget-object p0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "saved_impu"

    const-string v1, ""

    const/4 v2, -0x1

    invoke-static {v2, p0, v0, p1, v1}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getString(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 394
    new-instance p1, Landroid/database/MatrixCursor;

    const-string v0, "impu"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 395
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object p1
.end method

.method private getSavedSwVersion(I)Ljava/lang/String;
    .registers 5

    .line 246
    iget-object p0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "swversion"

    const-string v1, ""

    const-string v2, "carrierId"

    invoke-static {p1, p0, v2, v0, v1}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getString(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSecretKey()Ljava/lang/String;
    .registers 1

    .line 0
    const-string v0, "3C061A6726A7E3CAF9634D43D93CAC61"

    return-object v0
.end method

.method private getShortenKeyForXNode(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string p0, "\\./3GPP_IMS/"

    const-string v0, ""

    .line 1019
    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "/"

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1020
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1022
    array-length v1, p0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_29

    add-int/lit8 v2, v1, -0x2

    .line 1024
    aget-object v2, p0, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, -0x1

    aget-object p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_31

    :cond_29
    if-lez v1, :cond_31

    const/4 p1, 0x0

    .line 1026
    aget-object p0, p0, p1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1029
    :cond_31
    :goto_31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isCmcSecondaryDevice()Z
    .registers 6

    .line 1039
    new-instance v0, Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-direct {v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;-><init>()V

    .line 1040
    iget-object p0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->init(Landroid/content/Context;)Z

    .line 1041
    invoke-virtual {v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getOwnDeviceType()Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    move-result-object p0

    .line 1042
    invoke-virtual {v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->deInit()V

    .line 1043
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate: isCmcSecondaryDevice: api: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsSettingsProvider"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    sget-object v0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;->DEVICE_TYPE_SD:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    const/4 v2, 0x1

    if-ne p0, v0, :cond_2d

    return v2

    .line 1046
    :cond_2d
    sget-object v0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;->DEVICE_TYPE_PD:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    const/4 v3, 0x0

    if-ne p0, v0, :cond_33

    return v3

    :cond_33
    const-string/jumbo p0, "ro.cmc.device_type"

    const-string v0, ""

    .line 1049
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1050
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_60

    .line 1051
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate: isCmcSecondaryDevice: prop: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "sd"

    .line 1052
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_60

    return v2

    :cond_60
    return v3
.end method

.method private static synthetic lambda$reset$0(Lcom/sec/internal/ims/settings/DeviceConfigManager;)V
    .registers 2

    .line 880
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->restoreDefaultImsProfile()Z

    .line 881
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->updateImsSwitchByDynamicUpdate()V

    .line 882
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getGlobalSettingsRepo()Lcom/sec/internal/ims/settings/GlobalSettingsRepo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->reset()V

    .line 883
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getGlobalSettingsRepo()Lcom/sec/internal/ims/settings/GlobalSettingsRepo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->loadByDynamicConfig()V

    .line 884
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getSmsSetting()Lcom/sec/internal/ims/settings/SmsSetting;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/SmsSetting;->init()Z

    return-void
.end method

.method private queryIdcConfig()Landroid/database/Cursor;
    .registers 5

    .line 1125
    iget-object p0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    const-string v0, "IDC_APPDATA_PROCESS_MODE_PREF"

    const-string v1, "file"

    const/4 v2, -0x1

    const-string/jumbo v3, "saved_idc_appdata_process_mode"

    invoke-static {v2, p0, v3, v0, v1}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getString(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1128
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Lcom/sec/ims/settings/ImsSettings$ImsUserSettingTable;->PROJECTION:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1130
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "IDC_APPDATA_PROCESS_MODE"

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 1129
    invoke-virtual {v0, p0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v0
.end method

.method private reset(I)V
    .registers 5

    .line 879
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/settings/SettingsProvider;->getDeviceConfigManager(I)Lcom/sec/internal/ims/settings/DeviceConfigManager;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/settings/SettingsProvider$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/sec/internal/ims/settings/SettingsProvider$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const/4 v0, 0x1

    .line 886
    invoke-static {p1, v0}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->loadRcsSettings(IZ)Z

    .line 887
    iget-object v0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/settings/GlobalSettingsConstants;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/sec/internal/helper/UriUtil;->buildUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 888
    iget-object p0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$Uris;->SMS_SETTING:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sec/internal/helper/UriUtil;->buildUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method

.method private resetStoredConfig(Z)V
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_27

    move p1, v0

    .line 896
    :goto_4
    iget-object v1, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mDeviceConfigManager:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-ge p1, v1, :cond_27

    .line 897
    iget-object v1, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    const-string v2, "globalsettings"

    invoke-static {p1, v1, v2, v0, v0}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 899
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "mnoname"

    const-string v3, "default"

    .line 900
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 901
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_24
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    .line 906
    :cond_27
    :goto_27
    iget-object p1, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mDeviceConfigManager:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-ge v0, p1, :cond_35

    .line 907
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/settings/SettingsProvider;->reset(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    :cond_35
    return-void
.end method

.method private saveUpdatedCarrierId(II)V
    .registers 5

    .line 251
    iget-object v0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    const-string v1, "carrierId"

    invoke-static {p1, v0, v1, v1, p2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 252
    iget-object p0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    const-string/jumbo p2, "swversion"

    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-static {p1, p0, v1, p2, v0}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private sendData(ILandroid/content/ContentValues;)V
    .registers 15

    .line 944
    invoke-static {p2}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Landroid/content/ContentValues;)Z

    move-result v0

    if-nez v0, :cond_19d

    .line 945
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 946
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INTERNAL_KEY_PROCESS_NAME"

    .line 949
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 950
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {v3, v4}, Lcom/sec/internal/helper/os/PackageUtils;->getProcessNameById(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2d

    .line 952
    :cond_29
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 954
    :goto_2d
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 956
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",UPD:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 957
    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/high16 v5, 0x10040000

    .line 956
    invoke-static {v5, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 958
    invoke-virtual {p2}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 959
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "^"

    const-string v7, "ImsSettingsProvider"

    if-eqz v5, :cond_14d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v8, "nv_init_done"

    .line 961
    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_76

    goto :goto_5d

    .line 967
    :cond_76
    sget-object v8, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_7c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v10, -0x1

    if-eqz v9, :cond_98

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    .line 968
    invoke-virtual {v9}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;->getPathName()Ljava/lang/String;

    move-result-object v11

    .line 969
    invoke-virtual {v11, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_7c

    .line 970
    invoke-virtual {v9}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;->getIndex()I

    move-result v8

    goto :goto_99

    :cond_98
    move v8, v10

    .line 976
    :goto_99
    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-ne v8, v10, :cond_c7

    .line 977
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_c7

    .line 978
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignore: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": ["

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5d

    :cond_c7
    const-string v10, ":"

    if-ltz v8, :cond_de

    .line 984
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f8

    .line 986
    :cond_de
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "xNode item: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "X:"

    .line 987
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 991
    :goto_f8
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_126

    .line 992
    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_10c

    const-string v8, "."

    invoke-virtual {v9, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_123

    .line 993
    :cond_10c
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

    .line 996
    :cond_123
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 999
    :cond_126
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1000
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1001
    invoke-direct {p0, v5}, Lcom/sec/internal/ims/settings/SettingsProvider;->getShortenKeyForXNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const v6, 0x10040001

    .line 1000
    invoke-static {v6, v5}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    goto/16 :goto_5d

    .line 1004
    :cond_14d
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_19d

    .line 1006
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1007
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "DMST"

    .line 1009
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "USRC"

    .line 1010
    invoke-virtual {v0, p2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendData : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v7, p2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    iget-object p0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    const-string p2, "DMUI"

    invoke-static {p1, p0, p2, v0}, Lcom/sec/internal/ims/diagnosis/ImsLogAgentUtil;->sendLogToAgent(ILandroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V

    :cond_19d
    return-void
.end method

.method private setSavedImpu(Landroid/content/ContentValues;)I
    .registers 5

    .line 400
    iget-object p0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    const-string v0, "imsi"

    .line 401
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "impu"

    .line 402
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, -0x1

    const-string/jumbo v2, "saved_impu"

    .line 400
    invoke-static {v1, p0, v2, v0, p1}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method private updateEpdgSystemSettings(Landroid/content/ContentValues;)V
    .registers 8

    .line 1080
    invoke-virtual {p1}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1081
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, ".+[1-9]$"

    .line 1082
    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eqz v2, :cond_32

    .line 1083
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_33

    :cond_32
    move v2, v3

    .line 1086
    :goto_33
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 1087
    instance-of v5, v0, Ljava/lang/Integer;

    if-eqz v5, :cond_43

    .line 1088
    move-object v3, v0

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_4e

    .line 1089
    :cond_43
    instance-of v5, v0, Ljava/lang/String;

    if-eqz v5, :cond_4e

    .line 1091
    :try_start_47
    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_4e
    .catch Ljava/lang/NumberFormatException; {:try_start_47 .. :try_end_4e} :catch_4e

    :catch_4e
    :cond_4e
    :goto_4e
    if-ltz v2, :cond_95

    if-gez v3, :cond_53

    goto :goto_95

    :cond_53
    const-string/jumbo v0, "wifi_call_enable"

    const-string v5, ""

    .line 1104
    invoke-virtual {v1, v0, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v4, :cond_6a

    .line 1105
    iget-object v0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2, v3}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setWiFiCallEnabled(Landroid/content/Context;II)V

    goto :goto_8

    :cond_6a
    const-string/jumbo v0, "wifi_call_preferred"

    .line 1106
    invoke-virtual {v1, v0, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v4, :cond_7f

    .line 1107
    iget-object v0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2, v3}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setWiFiCallPreferred(Landroid/content/Context;II)V

    goto :goto_8

    :cond_7f
    const-string/jumbo v0, "wifi_call_when_roaming"

    .line 1108
    invoke-virtual {v1, v0, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v4, :cond_8

    .line 1109
    iget-object v0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2, v3}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setWiFiCallWhenRoaming(Landroid/content/Context;II)V

    goto/16 :goto_8

    .line 1098
    :cond_95
    :goto_95
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateEpdgSystemSettings: Skip wrong input ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1099
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

    .line 1098
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_e0
    return-void
.end method

.method private updateIdcConfig(Landroid/content/ContentValues;)V
    .registers 5

    if-eqz p1, :cond_24

    .line 1135
    invoke-virtual {p1}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_24

    :cond_9
    const-string v0, "IDC_APPDATA_PROCESS_MODE"

    .line 1139
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_19

    const-string p0, "ImsSettingsProvider"

    const-string p1, "IDC_APPDATA_PROCESS_MODE is null"

    .line 1141
    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1145
    :cond_19
    iget-object p0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "saved_idc_appdata_process_mode"

    const-string v1, "IDC_APPDATA_PROCESS_MODE_PREF"

    const/4 v2, -0x1

    invoke-static {v2, p0, v0, v1, p1}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_24
    :goto_24
    return-void
.end method

.method private updateOtherVoLTEIconSetting(I)V
    .registers 2

    if-nez p1, :cond_4

    const/4 p0, 0x1

    goto :goto_5

    :cond_4
    const/4 p0, 0x0

    .line 1119
    :goto_5
    invoke-static {p0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getIconManager()Lcom/sec/internal/ims/core/ImsIconManager;

    move-result-object p1

    if-eqz p1, :cond_1a

    .line 1120
    invoke-static {p0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getIconManager()Lcom/sec/internal/ims/core/ImsIconManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->updateRegistrationIcon()V

    :cond_1a
    return-void
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .registers 2
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

    .line 351
    invoke-super {p0, p1}, Landroid/content/ContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object p0

    return-object p0
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 4

    const-string p2, "dump"

    .line 871
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_c

    .line 872
    invoke-virtual {p0, p2, p2, p2}, Lcom/sec/internal/ims/settings/SettingsProvider;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_c
    return-object p2
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 8

    .line 653
    invoke-static {p1}, Lcom/sec/internal/helper/UriUtil;->getSimSlotFromUri(Landroid/net/Uri;)I

    move-result p2

    .line 654
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/settings/SettingsProvider;->getDeviceConfigManager(I)Lcom/sec/internal/ims/settings/DeviceConfigManager;

    move-result-object p3

    const/4 v0, 0x0

    if-nez p3, :cond_c

    return v0

    .line 659
    :cond_c
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Delete"

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3, v1, v3}, Lcom/sec/internal/ims/settings/SettingsProvider;->dumpBinderInfo(Ljava/lang/String;ZLjava/lang/String;Z)V

    .line 662
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 663
    invoke-static {v1}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_40

    .line 664
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_41

    :cond_40
    move-object v1, p1

    .line 668
    :goto_41
    sget-object v2, Lcom/sec/internal/ims/settings/SettingsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_8b

    const/16 v3, 0xf

    if-eq v2, v3, :cond_86

    const/16 v3, 0x18

    if-eq v2, v3, :cond_86

    const/16 p3, 0x1e

    if-ne v2, p3, :cond_6f

    .line 677
    iget-object p3, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    invoke-static {p3, p2}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/ImsAutoUpdate;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->clearSmkConfig()V

    .line 678
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/settings/SettingsProvider;->resetStoredConfig(Z)V

    .line 679
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_9e

    .line 682
    :cond_6f
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

    .line 674
    :cond_86
    invoke-virtual {p3, v1}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->deleteDm(Landroid/net/Uri;)I

    move-result v0

    goto :goto_9e

    .line 670
    :cond_8b
    invoke-virtual {p3}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getProfileCache()Lcom/sec/internal/ims/settings/ImsProfileCache;

    move-result-object p0

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/settings/ImsProfileCache;->remove(I)V

    :goto_9e
    return v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    .line 1034
    iget-object p1, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {p1}, Lcom/sec/internal/helper/SimpleEventLog;->dump()V

    .line 1035
    iget-object p0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mDeviceConfigManager:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/settings/SettingsProvider$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lcom/sec/internal/ims/settings/SettingsProvider$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method getDeviceConfigManager(I)Lcom/sec/internal/ims/settings/DeviceConfigManager;
    .registers 4

    .line 340
    iget-object p0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mDeviceConfigManager:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/settings/DeviceConfigManager;

    if-nez p0, :cond_15

    const-string v0, "ImsSettingsProvider"

    const-string v1, "getDeviceConfigManager: Not exist."

    .line 342
    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    :cond_15
    return-object p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 2

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 10

    .line 600
    invoke-static {p1}, Lcom/sec/internal/helper/UriUtil;->getSimSlotFromUri(Landroid/net/Uri;)I

    move-result v0

    .line 601
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/settings/SettingsProvider;->getDeviceConfigManager(I)Lcom/sec/internal/ims/settings/DeviceConfigManager;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_e8

    if-nez p2, :cond_f

    goto/16 :goto_e8

    .line 606
    :cond_f
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

    .line 608
    iget-object v3, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {v3, v4}, Lcom/sec/internal/helper/os/PackageUtils;->getProcessNameById(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ":CloudMessageService"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 609
    iget-object p0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string p1, "insert: Ignore the call from CMS process"

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    return-object v2

    .line 614
    :cond_4c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 615
    invoke-static {v3}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_76

    .line 616
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, ""

    invoke-virtual {v4, v3, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_77

    :cond_76
    move-object v3, p1

    .line 620
    :goto_77
    sget-object v4, Lcom/sec/internal/ims/settings/SettingsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v4, v3}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    if-eq v4, v5, :cond_c6

    const/16 v5, 0x15

    if-eq v4, v5, :cond_bc

    const/16 v5, 0x18

    if-eq v4, v5, :cond_b5

    const/16 v5, 0x26

    if-eq v4, v5, :cond_b1

    packed-switch v4, :pswitch_data_ea

    .line 642
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

    .line 622
    :pswitch_a5
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/settings/SettingsProvider;->setSavedImpu(Landroid/content/ContentValues;)I

    goto :goto_c3

    .line 625
    :pswitch_a9
    invoke-virtual {v1}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getUserConfigStorage()Lcom/sec/internal/ims/settings/UserConfigStorage;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/settings/UserConfigStorage;->insert(Landroid/content/ContentValues;)V

    goto :goto_c3

    .line 639
    :cond_b1
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/settings/SettingsProvider;->updateEpdgSystemSettings(Landroid/content/ContentValues;)V

    goto :goto_c3

    .line 635
    :cond_b5
    :pswitch_b5
    invoke-direct {p0, v0, p2}, Lcom/sec/internal/ims/settings/SettingsProvider;->sendData(ILandroid/content/ContentValues;)V

    .line 636
    invoke-virtual {v1, v3, p2}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->insertDm(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_c3

    .line 631
    :cond_bc
    invoke-virtual {v1}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getDebugConfigStorage()Lcom/sec/internal/ims/settings/DebugConfigStorage;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/sec/internal/ims/settings/DebugConfigStorage;->insert(ILandroid/content/ContentValues;)V

    :goto_c3
    const-wide/16 v0, 0x0

    goto :goto_d4

    .line 628
    :cond_c6
    invoke-virtual {v1}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getProfileCache()Lcom/sec/internal/ims/settings/ImsProfileCache;

    move-result-object v0

    new-instance v1, Lcom/sec/ims/settings/ImsProfile;

    invoke-direct {v1, p2}, Lcom/sec/ims/settings/ImsProfile;-><init>(Landroid/content/ContentValues;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/settings/ImsProfileCache;->insert(Lcom/sec/ims/settings/ImsProfile;)I

    move-result p2

    int-to-long v0, p2

    .line 645
    :goto_d4
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 647
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_e8
    :goto_e8
    return-object v2

    nop

    :pswitch_data_ea
    .packed-switch 0xf
        :pswitch_b5
        :pswitch_a9
        :pswitch_a5
    .end packed-switch
.end method

.method public onCreate()Z
    .registers 7

    .line 201
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    .line 202
    new-instance v1, Lcom/sec/internal/helper/SimpleEventLog;

    const/16 v2, 0x1f4

    const-string v3, "ImsSettingsProvider"

    invoke-direct {v1, v0, v3, v2}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 204
    iget-object v0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v0, 0x0

    .line 205
    :goto_1e
    iget-object v1, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_39

    .line 206
    iget-object v1, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mDeviceConfigManager:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v4, Lcom/sec/internal/ims/settings/DeviceConfigManager;

    iget-object v5, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v0}, Lcom/sec/internal/ims/settings/DeviceConfigManager;-><init>(Landroid/content/Context;I)V

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 208
    :cond_39
    iget-object v0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-nez v0, :cond_60

    invoke-direct {p0}, Lcom/sec/internal/ims/settings/SettingsProvider;->isCmcSecondaryDevice()Z

    move-result v0

    if-eqz v0, :cond_60

    .line 209
    iget-object v0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mDeviceConfigManager:Ljava/util/Map;

    sget v1, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/ims/settings/DeviceConfigManager;

    iget-object v4, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    sget v5, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    invoke-direct {v2, v4, v5}, Lcom/sec/internal/ims/settings/DeviceConfigManager;-><init>(Landroid/content/Context;I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "CMC supported no NOSIM model : DeviceConfigManager"

    .line 210
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_60
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
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 408
    invoke-static/range {p1 .. p1}, Lcom/sec/internal/helper/UriUtil;->getSimSlotFromUri(Landroid/net/Uri;)I

    move-result v5

    .line 409
    invoke-virtual {v0, v5}, Lcom/sec/internal/ims/settings/SettingsProvider;->getDeviceConfigManager(I)Lcom/sec/internal/ims/settings/DeviceConfigManager;

    move-result-object v6

    const/4 v7, 0x0

    if-nez v6, :cond_16

    return-object v7

    .line 414
    :cond_16
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Uri["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 417
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "#"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 418
    invoke-static {v9}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v10

    const-string v11, ""

    if-nez v10, :cond_56

    .line 419
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v9, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    goto :goto_57

    :cond_56
    move-object v9, v1

    :goto_57
    if-eqz v3, :cond_6d

    .line 423
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", sel : "

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_6d
    if-eqz v2, :cond_87

    .line 426
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

    .line 429
    :cond_87
    invoke-static {}, Lcom/sec/internal/log/IMSLog;->isShipBuild()Z

    move-result v10

    const/4 v12, 0x0

    if-nez v10, :cond_93

    const-string v10, "Query"

    .line 430
    invoke-direct {v0, v10, v12, v8, v12}, Lcom/sec/internal/ims/settings/SettingsProvider;->dumpBinderInfo(Ljava/lang/String;ZLjava/lang/String;Z)V

    .line 433
    :cond_93
    sget-object v8, Lcom/sec/internal/ims/settings/SettingsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v8, v9}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v8

    const-string v10, "ImsSettingsProvider"

    const-string v13, "mnoname"

    const-string v14, "profile"

    const/4 v15, 0x1

    if-eq v8, v15, :cond_2b6

    const/4 v7, 0x2

    if-eq v8, v7, :cond_28f

    const/4 v7, 0x4

    if-eq v8, v7, :cond_286

    const/16 v7, 0xb

    if-eq v8, v7, :cond_271

    const/16 v7, 0xd

    if-eq v8, v7, :cond_271

    const/16 v7, 0x13

    if-eq v8, v7, :cond_26c

    const/16 v7, 0x15

    if-eq v8, v7, :cond_263

    const/16 v7, 0x27

    const/4 v14, -0x1

    if-eq v8, v7, :cond_240

    const/16 v7, 0x28

    if-eq v8, v7, :cond_23b

    packed-switch v8, :pswitch_data_354

    packed-switch v8, :pswitch_data_35e

    packed-switch v8, :pswitch_data_36a

    .line 589
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

    .line 571
    :pswitch_e1
    invoke-virtual {v6}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getSmsSetting()Lcom/sec/internal/ims/settings/SmsSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/settings/SmsSetting;->getAsCursor()Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 485
    :pswitch_ea
    invoke-virtual {v6, v2}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->queryImsUserSetting([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 562
    :pswitch_ef
    iget-object v0, v0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    const-string v1, "gcf_init_rat"

    invoke-static {v14, v0, v1, v12, v12}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "rat"

    .line 564
    invoke-interface {v0, v1, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 565
    new-instance v2, Landroid/database/MatrixCursor;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 566
    invoke-virtual {v2}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    return-object v2

    .line 546
    :pswitch_10f
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "smkupdatedinfo"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 549
    :try_start_11b
    iget-object v0, v0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    invoke-static {v0, v5}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/ImsAutoUpdate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getSmkConfig()Lcom/google/gson/JsonObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_129
    .catch Ljava/lang/Exception; {:try_start_11b .. :try_end_129} :catch_12a

    goto :goto_140

    :catch_12a
    move-exception v0

    .line 551
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to get SMK Updated Information : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    :goto_140
    if-eqz v7, :cond_155

    .line 553
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_155

    const-string/jumbo v0, "updated info return, query to ImsSettings"

    .line 554
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    invoke-virtual {v1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    :cond_155
    return-object v1

    .line 528
    :pswitch_156
    new-instance v0, Landroid/database/MatrixCursor;

    const-string/jumbo v1, "secretkey"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 529
    invoke-virtual {v0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v1

    invoke-static {}, Lcom/sec/internal/ims/settings/SettingsProvider;->getSecretKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    return-object v0

    .line 540
    :pswitch_16e
    new-instance v0, Landroid/database/MatrixCursor;

    const-string/jumbo v1, "simmobility"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 541
    invoke-virtual {v0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v1

    invoke-static {v5}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->isSimMobilityActivated()Z

    move-result v2

    if-ne v2, v15, :cond_189

    move v12, v15

    :cond_189
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    return-object v0

    .line 534
    :pswitch_191
    new-instance v0, Landroid/database/MatrixCursor;

    const-string/jumbo v1, "rcs_ver"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 535
    invoke-virtual {v0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v1

    const-string v2, "6.0.3"

    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    return-object v0

    .line 512
    :pswitch_1a7
    new-instance v0, Landroid/database/MatrixCursor;

    const-string v1, "NVLIST"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 513
    invoke-virtual {v6}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getNvList()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1d5

    invoke-virtual {v6}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getNvList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1d5

    .line 514
    invoke-virtual {v6}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getNvList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_1d5
    return-object v0

    .line 504
    :pswitch_1d6
    invoke-virtual {v9}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22d

    const/4 v5, 0x1

    move-object v0, v6

    move-object v1, v9

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 505
    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->queryDm(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 520
    :pswitch_1f0
    new-instance v0, Landroid/database/MatrixCursor;

    const-string v1, "mvnoname"

    const-string v2, "hassim"

    filled-new-array {v13, v1, v2}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 522
    invoke-virtual {v0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    invoke-virtual {v6}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getMnoName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v13, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    .line 523
    invoke-virtual {v6}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getMvnoName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v1

    .line 524
    invoke-virtual {v6}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getHasSim()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    return-object v0

    .line 435
    :pswitch_21d
    aget-object v1, v4, v12

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/settings/SettingsProvider;->getSavedImpu(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 495
    :pswitch_224
    invoke-virtual {v6}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getUserConfigStorage()Lcom/sec/internal/ims/settings/UserConfigStorage;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/settings/UserConfigStorage;->query([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :cond_22d
    :pswitch_22d
    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, v9

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 509
    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->queryDm(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 585
    :cond_23b
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/settings/SettingsProvider;->queryIdcConfig()Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 576
    :cond_240
    iget-object v0, v0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    const-string v1, "dtlocuserconsent"

    invoke-static {v14, v0, v1, v12, v12}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "dtlocation"

    .line 578
    invoke-interface {v0, v1, v14}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 579
    new-instance v2, Landroid/database/MatrixCursor;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 580
    invoke-virtual {v2}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    return-object v2

    .line 501
    :cond_263
    invoke-virtual {v6}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getDebugConfigStorage()Lcom/sec/internal/ims/settings/DebugConfigStorage;

    move-result-object v0

    invoke-virtual {v0, v5, v2}, Lcom/sec/internal/ims/settings/DebugConfigStorage;->query(I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 498
    :cond_26c
    invoke-virtual {v6}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->queryGcfConfig()Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :cond_271
    if-nez v2, :cond_280

    .line 490
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/settings/SettingsProvider;->getAllServiceSwitches()Ljava/util/ArrayList;

    move-result-object v0

    new-array v1, v12, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_281

    :cond_280
    move-object v0, v2

    .line 492
    :goto_281
    invoke-virtual {v6, v0}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->queryImsSwitch([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 482
    :cond_286
    invoke-virtual {v6}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getGlobalSettingsRepo()Lcom/sec/internal/ims/settings/GlobalSettingsRepo;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v4}, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 472
    :cond_28f
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 473
    invoke-virtual {v6}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getProfileCache()Lcom/sec/internal/ims/settings/ImsProfileCache;

    move-result-object v1

    invoke-virtual {v9}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/settings/ImsProfileCache;->getProfile(I)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    if-eqz v1, :cond_2b5

    .line 476
    invoke-virtual {v0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->toJson()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v14, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    :cond_2b5
    return-object v0

    .line 442
    :cond_2b6
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 445
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_32f

    const-string v1, "="

    .line 446
    invoke-virtual {v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v15

    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 447
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ImsProfile query with  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v5, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    const-string v2, "mdmn_type"

    .line 448
    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f5

    .line 450
    invoke-virtual {v6}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getProfileCache()Lcom/sec/internal/ims/settings/ImsProfileCache;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/settings/ImsProfileCache;->getProfileListByMdmnType(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    goto :goto_337

    :cond_2f5
    const-string/jumbo v2, "salescode"

    .line 451
    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_304

    .line 452
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_337

    :cond_304
    const-string v2, "mccmnc"

    .line 453
    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_312

    .line 454
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_337

    .line 455
    :cond_312
    invoke-virtual {v3, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_329

    .line 456
    invoke-virtual {v6}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getGlobalSettingsRepo()Lcom/sec/internal/ims/settings/GlobalSettingsRepo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->getGlobalGcEnabled()Z

    move-result v2

    .line 457
    invoke-virtual {v6}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getProfileCache()Lcom/sec/internal/ims/settings/ImsProfileCache;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/sec/internal/ims/settings/ImsProfileCache;->getProfileListByMnoName(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v1

    goto :goto_337

    .line 459
    :cond_329
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_337

    .line 462
    :cond_32f
    invoke-virtual {v6}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getProfileCache()Lcom/sec/internal/ims/settings/ImsProfileCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/settings/ImsProfileCache;->getAllProfileList()Ljava/util/List;

    move-result-object v1

    .line 465
    :goto_337
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_33b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_353

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/settings/ImsProfile;

    .line 466
    invoke-virtual {v0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->toJson()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v14, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_33b

    :cond_353
    return-object v0

    :pswitch_data_354
    .packed-switch 0xf
        :pswitch_22d
        :pswitch_224
        :pswitch_21d
    .end packed-switch

    :pswitch_data_35e
    .packed-switch 0x17
        :pswitch_1f0
        :pswitch_22d
        :pswitch_1d6
        :pswitch_1a7
    .end packed-switch

    :pswitch_data_36a
    .packed-switch 0x1f
        :pswitch_191
        :pswitch_16e
        :pswitch_156
        :pswitch_10f
        :pswitch_ef
        :pswitch_ea
        :pswitch_e1
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 13

    .line 691
    invoke-static {p1}, Lcom/sec/internal/helper/UriUtil;->getSimSlotFromUri(Landroid/net/Uri;)I

    move-result p3

    .line 692
    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/settings/SettingsProvider;->getDeviceConfigManager(I)Lcom/sec/internal/ims/settings/DeviceConfigManager;

    move-result-object p4

    const/4 v0, 0x0

    if-nez p4, :cond_c

    return v0

    .line 697
    :cond_c
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

    .line 699
    iget-object v1, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/internal/helper/os/PackageUtils;->getProcessNameById(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ":CloudMessageService"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 700
    iget-object p0, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo p1, "update: Ignore the call from CMS process"

    invoke-virtual {p0, p3, p1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    return v0

    .line 705
    :cond_4a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 706
    invoke-static {v1}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_74

    .line 707
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v2, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_75

    :cond_74
    move-object v1, p1

    .line 711
    :goto_75
    sget-object v2, Lcom/sec/internal/ims/settings/SettingsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/4 v4, 0x0

    const-string v5, "ImsSettingsProvider"

    packed-switch v2, :pswitch_data_220

    .line 858
    :pswitch_81
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

    .line 854
    :pswitch_98
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/settings/SettingsProvider;->updateIdcConfig(Landroid/content/ContentValues;)V

    goto/16 :goto_190

    .line 851
    :pswitch_9d
    invoke-virtual {p4, p2}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->updateDtLocUserConsent(Landroid/content/ContentValues;)V

    goto/16 :goto_190

    :pswitch_a2
    :try_start_a2
    const-string v1, "name"

    .line 791
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "value"

    .line 792
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 793
    invoke-virtual {p4, v1, p2}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->setImsUserSetting(Ljava/lang/String;I)V
    :try_end_b6
    .catch Ljava/lang/NullPointerException; {:try_start_a2 .. :try_end_b6} :catch_b8

    goto/16 :goto_190

    :catch_b8
    const-string p2, "IMS_USER_SETTING - NullPointerException"

    .line 795
    invoke-static {v5, p3, p2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_190

    .line 847
    :pswitch_bf
    invoke-virtual {p4, p2}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->updateGcfInitRat(Landroid/content/ContentValues;)V

    goto/16 :goto_190

    .line 753
    :pswitch_c4
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",SMK UPDATE"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const v1, 0x10040010

    invoke-static {v1, p4}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 755
    iget-object p4, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    invoke-static {p4, p3}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/ImsAutoUpdate;

    move-result-object p3

    .line 756
    sget-object p4, Lcom/sec/internal/constants/ims/ImsConstants;->DOWNLOAD_CONFIG:Ljava/lang/String;

    invoke-virtual {p2, p4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->updateSmkConfig(Ljava/lang/String;)V

    const-string/jumbo p2, "remove_mnomap"

    .line 758
    invoke-virtual {p3, v0, p2}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getMnomap(ILjava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p2

    sget-object p4, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    if-ne p2, p4, :cond_102

    const-string p2, "add_mnomap"

    .line 760
    invoke-virtual {p3, v0, p2}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getMnomap(ILjava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p2

    sget-object p3, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    if-eq p2, p3, :cond_100

    goto :goto_102

    :cond_100
    move p2, v0

    goto :goto_103

    :cond_102
    :goto_102
    move p2, v3

    .line 762
    :goto_103
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/settings/SettingsProvider;->resetStoredConfig(Z)V

    if-eqz p2, :cond_190

    .line 764
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string p3, "content://com.sec.ims.settings/mnomap_updated"

    .line 765
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    .line 764
    invoke-virtual {p2, p3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move p2, v0

    goto/16 :goto_1f2

    .line 786
    :pswitch_11c
    new-instance p2, Lcom/sec/internal/ims/config/adapters/StorageAdapter;

    invoke-direct {p2}, Lcom/sec/internal/ims/config/adapters/StorageAdapter;-><init>()V

    iget-object p3, p0, Lcom/sec/internal/ims/settings/SettingsProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->forceDeleteALL(Landroid/content/Context;)V

    goto/16 :goto_190

    .line 842
    :pswitch_128
    invoke-direct {p0, p3, p2}, Lcom/sec/internal/ims/settings/SettingsProvider;->sendData(ILandroid/content/ContentValues;)V

    .line 843
    invoke-virtual {p4, v1, p2}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->updateDm(Landroid/net/Uri;Landroid/content/ContentValues;)I

    goto :goto_190

    .line 838
    :pswitch_12f
    invoke-virtual {p4, p2}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->updateMno(Landroid/content/ContentValues;)V

    goto :goto_190

    .line 834
    :pswitch_133
    invoke-virtual {p4, p2}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->updateWificallingProperty(Landroid/content/ContentValues;)V

    goto :goto_190

    .line 830
    :pswitch_137
    invoke-virtual {p4, p2}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->updateDnsBlock(Landroid/content/ContentValues;)V

    goto :goto_190

    .line 826
    :pswitch_13b
    invoke-virtual {p4, p2}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->updateGcfConfig(Landroid/content/ContentValues;)V

    goto :goto_190

    .line 822
    :pswitch_13f
    invoke-virtual {p4, p2}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->updateProvisioningProperty(Landroid/content/ContentValues;)V

    goto :goto_190

    :pswitch_143
    const-string/jumbo p2, "update: not supported in NV_STORAGE. use insert"

    .line 818
    invoke-static {v5, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_190

    .line 814
    :pswitch_14a
    invoke-virtual {p4}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->resetImsSwitch()V

    goto :goto_190

    :pswitch_14e
    :try_start_14e
    const-string/jumbo v1, "service"

    .line 802
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "enabled"

    .line 803
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const-string v2, "ipme"

    .line 804
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    xor-int/2addr v3, v2

    .line 807
    invoke-virtual {p4, v1, p2}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->enableImsSwitch(Ljava/lang/String;Z)V
    :try_end_169
    .catch Ljava/lang/NullPointerException; {:try_start_14e .. :try_end_169} :catch_16a

    goto :goto_190

    :catch_16a
    const-string p2, "IMS_SWITCH - NullPointerException"

    .line 809
    invoke-static {v5, p3, p2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_190

    :pswitch_170
    const-string/jumbo p2, "update: reset."

    .line 780
    invoke-static {v5, p3, p2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 781
    invoke-virtual {p4}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getGlobalSettingsRepo()Lcom/sec/internal/ims/settings/GlobalSettingsRepo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->reset()V

    .line 782
    invoke-virtual {p4}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getGlobalSettingsRepo()Lcom/sec/internal/ims/settings/GlobalSettingsRepo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->load()V

    goto :goto_190

    .line 776
    :pswitch_185
    invoke-virtual {p4}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getGlobalSettingsRepo()Lcom/sec/internal/ims/settings/GlobalSettingsRepo;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->update(Landroid/content/ContentValues;)V

    goto :goto_190

    .line 771
    :pswitch_18d
    invoke-virtual {p4}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->restoreDefaultImsProfile()Z

    :cond_190
    :goto_190
    move p2, v0

    goto :goto_1f1

    .line 734
    :pswitch_192
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 736
    invoke-virtual {p4}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getGlobalSettingsRepo()Lcom/sec/internal/ims/settings/GlobalSettingsRepo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->getPreviousMno()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 737
    invoke-virtual {p4}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getProfileCache()Lcom/sec/internal/ims/settings/ImsProfileCache;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/settings/ImsProfileCache;->getProfile(I)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getBadEventExpiry()I

    move-result v2

    .line 738
    invoke-virtual {p4}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getProfileCache()Lcom/sec/internal/ims/settings/ImsProfileCache;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/sec/internal/ims/settings/ImsProfileCache;->getProfile(I)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->getExtendedPublishTimer()I

    move-result v6

    .line 740
    invoke-virtual {p4}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getProfileCache()Lcom/sec/internal/ims/settings/ImsProfileCache;

    move-result-object v7

    invoke-virtual {v7, v0, p2}, Lcom/sec/internal/ims/settings/ImsProfileCache;->update(ILandroid/content/ContentValues;)I

    move-result p2

    .line 741
    sget-object v7, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne v1, v7, :cond_1f1

    .line 742
    invoke-virtual {p4}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getProfileCache()Lcom/sec/internal/ims/settings/ImsProfileCache;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/settings/ImsProfileCache;->getProfile(I)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getBadEventExpiry()I

    move-result v1

    if-ne v2, v1, :cond_1ea

    .line 743
    invoke-virtual {p4}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->getProfileCache()Lcom/sec/internal/ims/settings/ImsProfileCache;

    move-result-object p4

    invoke-virtual {p4, v0}, Lcom/sec/internal/ims/settings/ImsProfileCache;->getProfile(I)Lcom/sec/ims/settings/ImsProfile;

    move-result-object p4

    .line 744
    invoke-virtual {p4}, Lcom/sec/ims/settings/ImsProfile;->getExtendedPublishTimer()I

    move-result p4

    if-eq v6, p4, :cond_1f1

    :cond_1ea
    const-string/jumbo p0, "update : badEventExpiry or badEventExpiry for ATT"

    .line 746
    invoke-static {v5, p3, p0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return p2

    :cond_1f1
    :goto_1f1
    move v0, v3

    :goto_1f2
    if-eqz v0, :cond_218

    .line 862
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "notifyChange uri ["

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, "]"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v5, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_218
    return p2

    :pswitch_219
    const-string/jumbo p0, "update: Bulk edit not supported."

    .line 713
    invoke-static {v5, p3, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return v0

    :pswitch_data_220
    .packed-switch 0x1
        :pswitch_219
        :pswitch_192
        :pswitch_18d
        :pswitch_185
        :pswitch_185
        :pswitch_170
        :pswitch_81
        :pswitch_81
        :pswitch_81
        :pswitch_81
        :pswitch_14e
        :pswitch_14a
        :pswitch_14e
        :pswitch_81
        :pswitch_143
        :pswitch_81
        :pswitch_81
        :pswitch_13f
        :pswitch_13b
        :pswitch_137
        :pswitch_81
        :pswitch_133
        :pswitch_12f
        :pswitch_128
        :pswitch_81
        :pswitch_81
        :pswitch_81
        :pswitch_11c
        :pswitch_c4
        :pswitch_81
        :pswitch_81
        :pswitch_81
        :pswitch_81
        :pswitch_81
        :pswitch_bf
        :pswitch_a2
        :pswitch_81
        :pswitch_81
        :pswitch_9d
        :pswitch_98
    .end packed-switch
.end method
