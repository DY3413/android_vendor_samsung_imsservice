.class public Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;
.super Ljava/lang/Object;
.source "ImsConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/ImsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SystemSettings"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;,
        Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SecWfcRoamModeFeatureValueConstants;,
        Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SecWfcModeFeatureValueConstants;,
        Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$WfcModeFeatureValueConstants;
    }
.end annotation


# static fields
.field public static final AIRPLANE_MODE:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

.field public static AIRPLANE_MODE_ON:I = 0x0

.field public static final AUTHOTIRY_RCS_DM_CONFIG:Ljava/lang/String; = "com.samsung.rcs.dmconfigurationprovider"

.field public static final CARRIER_FEATURE_UPDATED:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

.field public static final DATA_ROAMING:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

.field public static DATA_ROAMING_UNKNOWN:I = 0x0

.field public static final DEFAULT_SMS_APP:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

.field public static final ENRICHED_CALL_VBC:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

.field private static GLOBAL:Ljava/lang/String; = "global"

.field public static final IMS_DM_CONFIG:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

.field public static final IMS_DOWNLOAD_CONFIG:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

.field public static final IMS_GLOBAL:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

.field private static IMS_NV:Ljava/lang/String; = "nvstorage"

.field public static final IMS_NV_STORAGE:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

.field private static IMS_OMADM:Ljava/lang/String; = "omadm/./3GPP_IMS"

.field private static IMS_PROFILE:Ljava/lang/String; = "profile"

.field public static final IMS_PROFILES:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

.field public static final IMS_RESET_DOWNLOAD_CONFIG:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

.field public static final IMS_SIM_MOBILITY:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

.field private static IMS_SWITCH:Ljava/lang/String; = "imsswitch"

.field public static final IMS_SWITCHES:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

.field private static IMS_USER:Ljava/lang/String; = "userconfig"

.field public static final LOCATION_MODE:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

.field public static LTE_DATA_NETWORK_MODE_ENABLED:I = 0x0

.field public static LTE_DATA_ROAMING_DISABLED:I = 0x0

.field public static final MNOMAP_UPDATED:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

.field public static final MOBILE_DATA:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

.field public static final MOBILE_DATA_PRESSED:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

.field public static final PREFFERED_NETWORK_MODE:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

.field public static final PREFFERED_VOICE_CALL:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

.field public static final RCS_ALLOWED_URI:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

.field public static final RCS_DISABLED:I = 0x0

.field public static final RCS_DISABLED_BY_NETWORK:I = -0x2

.field public static final RCS_ENABLED:I = 0x1

.field public static final RCS_ENABLED_BY_NETWORK:I = 0x3

.field public static final RCS_NOTSET:I = -0x1

.field public static final RCS_ROAMING_PREF:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

.field public static final RCS_SETTING_NOT_FOUND:I = -0x3

.field public static final RCS_TURNING_OFF:I = 0x2

.field public static final RCS_USER_SETTING1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

.field public static final RCS_USER_SETTING2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

.field public static ROAMING_DATA_ENABLED:I = 0x1

.field private static SECURE:Ljava/lang/String; = "secure"

.field public static final SETUP_WIZARD:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

.field private static SIM_MOBILITY:Ljava/lang/String; = "simmobility"

.field private static SYSTEM:Ljava/lang/String; = "system"

.field public static final USER_TOGGLED_VOLTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

.field public static final USER_TOGGLED_VOLTE_SLOT2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

.field public static final VIDEO_DISABLED:I = 0x1

.field public static final VIDEO_ENABLED:I = 0x0

.field public static final VIDEO_UNKNOWN:I = -0x1

.field public static final VILTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

.field public static final VILTE_SLOT2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

.field public static final VOICE_CS:I = 0x1

.field public static final VOICE_UNKNOWN:I = -0x1

.field public static final VOICE_VOLTE:I = 0x0

.field public static final VOLTE_PROVISIONING:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

.field public static final VOLTE_PROVISIONING_DISABLED:I = 0x0

.field public static final VOLTE_PROVISIONING_ENABLED:I = 0x1

.field public static final VOLTE_ROAMING:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

.field public static VOLTE_ROAMING_ENABLED:I

.field public static VOLTE_ROAMING_UNKNOWN:I

.field public static final VOLTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

.field public static final VOLTE_SLOT2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

.field public static final WIFI_CALL_ENABLE1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

.field public static final WIFI_CALL_ENABLE2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

.field public static final WIFI_CALL_PREFERRED1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

.field public static final WIFI_CALL_PREFERRED2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

.field public static final WIFI_CALL_WHEN_ROAMING1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

.field public static final WIFI_CALL_WHEN_ROAMING2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

.field public static final WIFI_SETTING:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;


# direct methods
.method static bridge synthetic -$$Nest$sfgetGLOBAL()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->GLOBAL:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetSECURE()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->SECURE:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetSYSTEM()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->SYSTEM:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 7

    .line 99
    new-instance v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    const-string/jumbo v1, "settings"

    const-string/jumbo v2, "system"

    const-string/jumbo v3, "voicecall_type"

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 101
    new-instance v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->SYSTEM:Ljava/lang/String;

    const-string/jumbo v3, "voicecall_type2"

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_SLOT2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 108
    new-instance v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->SYSTEM:Ljava/lang/String;

    const-string/jumbo v3, "voicecall_type_user_action"

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->USER_TOGGLED_VOLTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 110
    new-instance v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->SYSTEM:Ljava/lang/String;

    const-string/jumbo v3, "voicecall_type_user_action2"

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->USER_TOGGLED_VOLTE_SLOT2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 113
    new-instance v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->SYSTEM:Ljava/lang/String;

    const-string/jumbo v3, "videocall_type"

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VILTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 115
    new-instance v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->SYSTEM:Ljava/lang/String;

    const-string/jumbo v3, "videocall_type2"

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VILTE_SLOT2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 121
    new-instance v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->SYSTEM:Ljava/lang/String;

    const-string v3, "rcs_user_setting"

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->RCS_USER_SETTING1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 123
    new-instance v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->SYSTEM:Ljava/lang/String;

    const-string v3, "rcs_user_setting2"

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->RCS_USER_SETTING2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 142
    new-instance v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->GLOBAL:Ljava/lang/String;

    const-string v3, "data_roaming"

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->DATA_ROAMING:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    const/4 v0, -0x1

    .line 144
    sput v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->DATA_ROAMING_UNKNOWN:I

    .line 148
    new-instance v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v3, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->GLOBAL:Ljava/lang/String;

    const-string v4, "airplane_mode_on"

    invoke-direct {v2, v1, v3, v4}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->AIRPLANE_MODE:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 150
    new-instance v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v3, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->GLOBAL:Ljava/lang/String;

    const-string v4, "mobile_data"

    invoke-direct {v2, v1, v3, v4}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->MOBILE_DATA:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 152
    new-instance v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v3, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->GLOBAL:Ljava/lang/String;

    const-string v4, "mobile_data_pressed"

    invoke-direct {v2, v1, v3, v4}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->MOBILE_DATA_PRESSED:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 154
    new-instance v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v3, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->GLOBAL:Ljava/lang/String;

    const-string/jumbo v4, "wifi_on"

    invoke-direct {v2, v1, v3, v4}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->WIFI_SETTING:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 156
    new-instance v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v3, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->SECURE:Ljava/lang/String;

    const-string/jumbo v4, "sms_default_application"

    invoke-direct {v2, v1, v3, v4}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->DEFAULT_SMS_APP:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 158
    new-instance v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v3, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->SECURE:Ljava/lang/String;

    const-string v4, "location_providers_allowed"

    invoke-direct {v2, v1, v3, v4}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->LOCATION_MODE:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 160
    new-instance v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v3, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->SECURE:Ljava/lang/String;

    const-string/jumbo v4, "user_setup_complete"

    invoke-direct {v2, v1, v3, v4}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->SETUP_WIZARD:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 162
    new-instance v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v3, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->GLOBAL:Ljava/lang/String;

    const-string v4, "hd_voice_roaming_enabled"

    invoke-direct {v2, v1, v3, v4}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_ROAMING:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 168
    new-instance v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v3, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->SYSTEM:Ljava/lang/String;

    const-string v4, "enriched_call_vbc"

    invoke-direct {v2, v1, v3, v4}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->ENRICHED_CALL_VBC:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 171
    sput v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_ROAMING_UNKNOWN:I

    const/4 v0, 0x1

    .line 172
    sput v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_ROAMING_ENABLED:I

    .line 174
    sput v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->AIRPLANE_MODE_ON:I

    .line 177
    sput v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->LTE_DATA_NETWORK_MODE_ENABLED:I

    const/4 v0, 0x0

    .line 180
    sput v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->LTE_DATA_ROAMING_DISABLED:I

    .line 182
    new-instance v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->GLOBAL:Ljava/lang/String;

    const-string v3, "preferred_network_mode"

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->PREFFERED_NETWORK_MODE:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 184
    new-instance v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->SYSTEM:Ljava/lang/String;

    const-string v3, "prefered_voice_call"

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->PREFFERED_VOICE_CALL:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 186
    new-instance v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->SYSTEM:Ljava/lang/String;

    const-string v3, "allow_volte_provisioning"

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_PROVISIONING:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 192
    new-instance v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->GLOBAL:Ljava/lang/String;

    const-string v3, "com.sec.ims.settings"

    const-string v4, ""

    invoke-direct {v0, v3, v2, v4}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->IMS_GLOBAL:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 194
    new-instance v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->IMS_PROFILE:Ljava/lang/String;

    const-string v5, "*"

    invoke-direct {v0, v3, v2, v5}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->IMS_PROFILES:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 196
    new-instance v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->SIM_MOBILITY:Ljava/lang/String;

    invoke-direct {v0, v3, v2, v4}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->IMS_SIM_MOBILITY:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 198
    new-instance v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->IMS_SWITCH:Ljava/lang/String;

    invoke-direct {v0, v3, v2, v4}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->IMS_SWITCHES:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 200
    new-instance v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->IMS_USER:Ljava/lang/String;

    invoke-direct {v0, v3, v2, v4}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->RCS_ROAMING_PREF:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 202
    new-instance v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->IMS_NV:Ljava/lang/String;

    invoke-direct {v0, v3, v2, v5}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->IMS_NV_STORAGE:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 204
    new-instance v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->IMS_OMADM:Ljava/lang/String;

    const-string v6, "com.samsung.rcs.dmconfigurationprovider"

    invoke-direct {v0, v6, v2, v5}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->IMS_DM_CONFIG:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 208
    new-instance v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->SYSTEM:Ljava/lang/String;

    const-string/jumbo v5, "wifi_call_enable1"

    invoke-direct {v0, v1, v2, v5}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->WIFI_CALL_ENABLE1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 210
    new-instance v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->SYSTEM:Ljava/lang/String;

    const-string/jumbo v5, "wifi_call_enable2"

    invoke-direct {v0, v1, v2, v5}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->WIFI_CALL_ENABLE2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 212
    new-instance v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->SYSTEM:Ljava/lang/String;

    const-string/jumbo v5, "wifi_call_preferred1"

    invoke-direct {v0, v1, v2, v5}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->WIFI_CALL_PREFERRED1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 214
    new-instance v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->SYSTEM:Ljava/lang/String;

    const-string/jumbo v5, "wifi_call_preferred2"

    invoke-direct {v0, v1, v2, v5}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->WIFI_CALL_PREFERRED2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 216
    new-instance v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->SYSTEM:Ljava/lang/String;

    const-string/jumbo v5, "wifi_call_when_roaming1"

    invoke-direct {v0, v1, v2, v5}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->WIFI_CALL_WHEN_ROAMING1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 218
    new-instance v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->SYSTEM:Ljava/lang/String;

    const-string/jumbo v5, "wifi_call_when_roaming2"

    invoke-direct {v0, v1, v2, v5}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->WIFI_CALL_WHEN_ROAMING2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 222
    new-instance v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "PhoneRestrictionPolicy"

    const-string v5, "isRCSEnabled"

    invoke-direct {v0, v1, v2, v5}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->RCS_ALLOWED_URI:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 228
    new-instance v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    const-string v1, "downloadconfig"

    invoke-direct {v0, v3, v4, v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->IMS_DOWNLOAD_CONFIG:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 231
    new-instance v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    const-string v1, "resetconfig"

    invoke-direct {v0, v3, v4, v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->IMS_RESET_DOWNLOAD_CONFIG:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 234
    new-instance v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    const-string v1, "mnomap_updated"

    invoke-direct {v0, v3, v4, v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->MNOMAP_UPDATED:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 237
    new-instance v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    const-string v1, "carrier_feature_updated"

    invoke-direct {v0, v3, v4, v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->CARRIER_FEATURE_UPDATED:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addUri(Landroid/content/UriMatcher;Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;I)V
    .locals 1

    .line 265
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1, p2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private static convertToGoogleWfcMode(IZ)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    if-eqz p0, :cond_1

    if-eq p0, v1, :cond_0

    return v1

    :cond_0
    return v0

    :cond_1
    return v2

    :cond_2
    if-eq p0, v2, :cond_4

    const/4 p1, 0x3

    if-eq p0, p1, :cond_3

    return v2

    :cond_3
    return v0

    :cond_4
    return v1
.end method

.method public static getRcsUserSetting(Landroid/content/Context;II)I
    .locals 1

    const/4 v0, 0x2

    .line 318
    invoke-static {v0, p2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getSettingsItemByPhoneId(II)Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public static getSettingsItemByPhoneId(II)Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;
    .locals 1

    if-eqz p0, :cond_6

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    .line 440
    sget-object p0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->WIFI_CALL_ENABLE1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    return-object p0

    .line 441
    :cond_1
    sget-object p0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->WIFI_CALL_ENABLE2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    return-object p0

    :cond_2
    if-nez p1, :cond_3

    .line 437
    sget-object p0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->RCS_USER_SETTING1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    return-object p0

    .line 438
    :cond_3
    sget-object p0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->RCS_USER_SETTING2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    return-object p0

    :cond_4
    if-nez p1, :cond_5

    .line 434
    sget-object p0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VILTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    return-object p0

    .line 435
    :cond_5
    sget-object p0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VILTE_SLOT2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    return-object p0

    :cond_6
    if-nez p1, :cond_7

    .line 431
    sget-object p0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    return-object p0

    .line 432
    :cond_7
    sget-object p0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_SLOT2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    return-object p0
.end method

.method public static getVideoCallType(Landroid/content/Context;II)I
    .locals 1

    .line 331
    sget v0, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    if-ne p2, v0, :cond_0

    .line 332
    sget-object p2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VILTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {p2, p0, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result p0

    goto :goto_0

    .line 334
    :cond_0
    sget-object p2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VILTE_SLOT2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {p2, p0, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static getVoiceCallType(Landroid/content/Context;II)I
    .locals 1

    .line 270
    sget v0, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    if-ne p2, v0, :cond_0

    .line 271
    sget-object p2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {p2, p0, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result p0

    goto :goto_0

    .line 273
    :cond_0
    sget-object p2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_SLOT2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {p2, p0, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static getWiFiCallEnabled(Landroid/content/Context;II)I
    .locals 1

    .line 364
    sget v0, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    if-ne p2, v0, :cond_0

    sget-object p2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->WIFI_CALL_ENABLE1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {p2, p0, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result p0

    goto :goto_0

    .line 365
    :cond_0
    sget-object p2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->WIFI_CALL_ENABLE2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {p2, p0, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static getWiFiCallPreferred(Landroid/content/Context;II)I
    .locals 1

    .line 369
    sget v0, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    if-ne p2, v0, :cond_0

    sget-object p2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->WIFI_CALL_PREFERRED1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {p2, p0, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result p0

    goto :goto_0

    .line 370
    :cond_0
    sget-object p2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->WIFI_CALL_PREFERRED2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {p2, p0, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static getWiFiCallWhenRoaming(Landroid/content/Context;II)I
    .locals 1

    .line 374
    sget v0, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    if-ne p2, v0, :cond_0

    sget-object p2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->WIFI_CALL_WHEN_ROAMING1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {p2, p0, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result p0

    goto :goto_0

    .line 375
    :cond_0
    sget-object p2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->WIFI_CALL_WHEN_ROAMING2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {p2, p0, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static isUserToggledVoiceCallType(Landroid/content/Context;I)Z
    .locals 2

    .line 309
    sget v0, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 310
    sget-object p1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->USER_TOGGLED_VOLTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {p1, p0, v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result p0

    goto :goto_0

    .line 312
    :cond_0
    sget-object p1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->USER_TOGGLED_VOLTE_SLOT2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {p1, p0, v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result p0

    :goto_0
    const/4 p1, 0x1

    if-ne p0, p1, :cond_1

    move v1, p1

    :cond_1
    return v1
.end method

.method public static isWiFiCallEnabled(Landroid/content/Context;)Z
    .locals 6

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 354
    invoke-static {p0, v0, v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getWiFiCallEnabled(Landroid/content/Context;II)I

    move-result v2

    const/4 v3, 0x1

    .line 356
    invoke-static {p0, v0, v3}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getWiFiCallEnabled(Landroid/content/Context;II)I

    move-result p0

    .line 358
    invoke-static {}, Lcom/sec/internal/constants/ims/ImsConstants;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isWiFiCallEnabled: wifi_call_enable ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "], wifi_call_enable2 ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v2, v3, :cond_0

    if-ne p0, v3, :cond_1

    :cond_0
    move v1, v3

    :cond_1
    return v1
.end method

.method public static setRcsUserSetting(Landroid/content/Context;II)V
    .locals 2

    const/4 v0, 0x2

    .line 322
    invoke-static {v0, p2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getSettingsItemByPhoneId(II)Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    move-result-object p2

    const/4 v0, -0x1

    .line 323
    invoke-virtual {p2, p0, v0}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result v1

    if-ne v1, p1, :cond_0

    if-ne p1, v0, :cond_1

    .line 325
    :cond_0
    invoke-virtual {p2, p0, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->set(Landroid/content/Context;I)V

    :cond_1
    return-void
.end method

.method public static setVideoCallType(Landroid/content/Context;II)V
    .locals 2

    .line 340
    sget v0, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    const/4 v1, -0x1

    if-ne p2, v0, :cond_1

    .line 341
    sget-object p2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VILTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {p2, p0, v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result v0

    if-ne v0, p1, :cond_0

    if-ne p1, v1, :cond_3

    .line 343
    :cond_0
    invoke-virtual {p2, p0, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->set(Landroid/content/Context;I)V

    goto :goto_0

    .line 346
    :cond_1
    sget-object p2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VILTE_SLOT2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {p2, p0, v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result v0

    if-ne v0, p1, :cond_2

    if-ne p1, v1, :cond_3

    .line 348
    :cond_2
    invoke-virtual {p2, p0, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->set(Landroid/content/Context;I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static setVoiceCallType(Landroid/content/Context;II)V
    .locals 2

    .line 279
    sget v0, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    const/4 v1, -0x1

    if-ne p2, v0, :cond_1

    .line 280
    sget-object p2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {p2, p0, v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result v0

    if-ne v0, p1, :cond_0

    if-ne p1, v1, :cond_3

    .line 282
    :cond_0
    invoke-virtual {p2, p0, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->set(Landroid/content/Context;I)V

    goto :goto_0

    .line 285
    :cond_1
    sget-object p2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_SLOT2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {p2, p0, v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result v0

    if-ne v0, p1, :cond_2

    if-ne p1, v1, :cond_3

    .line 287
    :cond_2
    invoke-virtual {p2, p0, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->set(Landroid/content/Context;I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static setVoiceCallTypeUserAction(Landroid/content/Context;II)V
    .locals 2

    .line 294
    sget v0, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    .line 295
    sget-object p2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->USER_TOGGLED_VOLTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {p2, p0, v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 297
    invoke-virtual {p2, p0, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->set(Landroid/content/Context;I)V

    goto :goto_0

    .line 300
    :cond_0
    sget-object p2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->USER_TOGGLED_VOLTE_SLOT2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {p2, p0, v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 302
    invoke-virtual {p2, p0, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->set(Landroid/content/Context;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static setWiFiCallEnabled(Landroid/content/Context;II)V
    .locals 1

    .line 380
    sget v0, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    if-ne p1, v0, :cond_0

    .line 381
    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->WIFI_CALL_ENABLE1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v0, p0, p2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->set(Landroid/content/Context;I)V

    goto :goto_0

    .line 382
    :cond_0
    sget v0, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_2:I

    if-ne p1, v0, :cond_1

    .line 383
    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->WIFI_CALL_ENABLE2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v0, p0, p2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->set(Landroid/content/Context;I)V

    .line 385
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result p0

    if-gez p0, :cond_2

    return-void

    .line 389
    :cond_2
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "wfc_ims_enabled"

    invoke-static {p0, p2, p1}, Landroid/telephony/SubscriptionManager;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setWiFiCallPreferred(Landroid/content/Context;II)V
    .locals 1

    .line 394
    sget v0, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    if-ne p1, v0, :cond_0

    .line 395
    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->WIFI_CALL_PREFERRED1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v0, p0, p2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->set(Landroid/content/Context;I)V

    goto :goto_0

    .line 396
    :cond_0
    sget v0, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_2:I

    if-ne p1, v0, :cond_1

    .line 397
    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->WIFI_CALL_PREFERRED2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v0, p0, p2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->set(Landroid/content/Context;I)V

    :cond_1
    :goto_0
    const/4 p0, 0x3

    if-gt p2, p0, :cond_3

    .line 401
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result p0

    if-gez p0, :cond_2

    return-void

    :cond_2
    const/4 p1, 0x0

    .line 405
    invoke-static {p2, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->convertToGoogleWfcMode(IZ)I

    move-result p1

    .line 406
    invoke-static {}, Lcom/sec/internal/constants/ims/ImsConstants;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "setWiFiCallPreferred: Set telephony DB"

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "wfc_ims_mode"

    invoke-static {p0, p2, p1}, Landroid/telephony/SubscriptionManager;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public static setWiFiCallWhenRoaming(Landroid/content/Context;II)V
    .locals 1

    .line 413
    sget v0, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    if-ne p1, v0, :cond_0

    .line 414
    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->WIFI_CALL_WHEN_ROAMING1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v0, p0, p2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->set(Landroid/content/Context;I)V

    goto :goto_0

    .line 415
    :cond_0
    sget v0, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_2:I

    if-ne p1, v0, :cond_1

    .line 416
    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->WIFI_CALL_WHEN_ROAMING2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v0, p0, p2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->set(Landroid/content/Context;I)V

    .line 419
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result p0

    if-gez p0, :cond_2

    return-void

    :cond_2
    const/4 p1, 0x1

    .line 423
    invoke-static {p2, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->convertToGoogleWfcMode(IZ)I

    move-result p1

    .line 424
    invoke-static {}, Lcom/sec/internal/constants/ims/ImsConstants;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "setWiFiCallWhenRoaming: Set telephony DB"

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "wfc_ims_roaming_mode"

    invoke-static {p0, p2, p1}, Landroid/telephony/SubscriptionManager;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
