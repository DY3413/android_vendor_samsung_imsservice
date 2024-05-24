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
        Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$WfcModeFeatureValueConstants;,
        Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SecWfcRoamModeFeatureValueConstants;,
        Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SecWfcModeFeatureValueConstants;
    }
.end annotation


# static fields
.field public static final AIRPLANE_MODE:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

.field public static AIRPLANE_MODE_ON:I = 0x0

.field public static final AUTHOTIRY_RCS_DM_CONFIG:Ljava/lang/String; = "com.samsung.rcs.dmconfigurationprovider"

.field public static final DATA_ROAMING:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

.field public static DATA_ROAMING_UNKNOWN:I = 0x0

.field public static final DEFAULT_SMS_APP:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

.field public static final DOWNLOAD_SMK_CONFIG:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

.field public static final DYNAMIC_IMS_UPDATED:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

.field public static final ENRICHED_CALL_VBC:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

.field private static GLOBAL:Ljava/lang/String; = "global"

.field public static final IMS_DM_CONFIG:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

.field public static final IMS_GLOBAL:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

.field private static IMS_NV:Ljava/lang/String; = "nvstorage"

.field public static final IMS_NV_STORAGE:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

.field private static IMS_OMADM:Ljava/lang/String; = "omadm/./3GPP_IMS"

.field private static IMS_PROFILE:Ljava/lang/String; = "profile"

.field public static final IMS_PROFILES:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

.field public static final IMS_SIM_MOBILITY:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

.field private static IMS_SWITCH:Ljava/lang/String; = "imsswitch"

.field public static final IMS_SWITCHES:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

.field private static IMS_USER:Ljava/lang/String; = "userconfig"

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

.field public static final RESET_SMK_CONFIG:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

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
    .registers 1

    .line 0
    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->GLOBAL:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetSECURE()Ljava/lang/String;
    .registers 1

    .line 0
    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->SECURE:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetSYSTEM()Ljava/lang/String;
    .registers 1

    .line 0
    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->SYSTEM:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 7

    .line 102
    new-instance v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    const-string/jumbo v1, "voicecall_type"

    const-string/jumbo v2, "settings"

    const-string/jumbo v3, "system"

    invoke-direct {v0, v2, v3, v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 104
    new-instance v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->SYSTEM:Ljava/lang/String;

    const-string/jumbo v3, "voicecall_type2"

    invoke-direct {v0, v2, v1, v3}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_SLOT2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 111
    new-instance v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->SYSTEM:Ljava/lang/String;

    const-string/jumbo v3, "voicecall_type_user_action"

    invoke-direct {v0, v2, v1, v3}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->USER_TOGGLED_VOLTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 113
    new-instance v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->SYSTEM:Ljava/lang/String;

    const-string/jumbo v3, "voicecall_type_user_action2"

    invoke-direct {v0, v2, v1, v3}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->USER_TOGGLED_VOLTE_SLOT2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 116
    new-instance v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->SYSTEM:Ljava/lang/String;

    const-string/jumbo v3, "videocall_type"

    invoke-direct {v0, v2, v1, v3}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VILTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 118
    new-instance v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->SYSTEM:Ljava/lang/String;

    const-string/jumbo v3, "videocall_type2"

    invoke-direct {v0, v2, v1, v3}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VILTE_SLOT2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 124
    new-instance v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->SYSTEM:Ljava/lang/String;

    const-string/jumbo v3, "rcs_user_setting"

    invoke-direct {v0, v2, v1, v3}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->RCS_USER_SETTING1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 126
    new-instance v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->SYSTEM:Ljava/lang/String;

    const-string/jumbo v3, "rcs_user_setting2"

    invoke-direct {v0, v2, v1, v3}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->RCS_USER_SETTING2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 145
    new-instance v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->GLOBAL:Ljava/lang/String;

    const-string v3, "data_roaming"

    invoke-direct {v0, v2, v1, v3}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->DATA_ROAMING:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    const/4 v0, -0x1

    .line 147
    sput v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->DATA_ROAMING_UNKNOWN:I

    .line 151
    new-instance v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v3, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->GLOBAL:Ljava/lang/String;

    const-string v4, "airplane_mode_on"

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->AIRPLANE_MODE:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 153
    new-instance v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v3, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->GLOBAL:Ljava/lang/String;

    const-string v4, "mobile_data"

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->MOBILE_DATA:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 155
    new-instance v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v3, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->GLOBAL:Ljava/lang/String;

    const-string v4, "mobile_data_pressed"

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->MOBILE_DATA_PRESSED:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 157
    new-instance v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v3, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->GLOBAL:Ljava/lang/String;

    const-string/jumbo v4, "wifi_on"

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->WIFI_SETTING:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 159
    new-instance v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v3, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->SECURE:Ljava/lang/String;

    const-string/jumbo v4, "sms_default_application"

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->DEFAULT_SMS_APP:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 162
    new-instance v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v3, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->SECURE:Ljava/lang/String;

    const-string/jumbo v4, "user_setup_complete"

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->SETUP_WIZARD:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 164
    new-instance v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v3, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->GLOBAL:Ljava/lang/String;

    const-string v4, "hd_voice_roaming_enabled"

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_ROAMING:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 170
    new-instance v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v3, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->SYSTEM:Ljava/lang/String;

    const-string v4, "enriched_call_vbc"

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->ENRICHED_CALL_VBC:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 173
    sput v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_ROAMING_UNKNOWN:I

    const/4 v0, 0x1

    .line 174
    sput v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_ROAMING_ENABLED:I

    .line 176
    sput v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->AIRPLANE_MODE_ON:I

    .line 179
    sput v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->LTE_DATA_NETWORK_MODE_ENABLED:I

    const/4 v0, 0x0

    .line 182
    sput v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->LTE_DATA_ROAMING_DISABLED:I

    .line 184
    new-instance v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->GLOBAL:Ljava/lang/String;

    const-string v3, "preferred_network_mode"

    invoke-direct {v0, v2, v1, v3}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->PREFFERED_NETWORK_MODE:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 186
    new-instance v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->SYSTEM:Ljava/lang/String;

    const-string v3, "prefered_voice_call"

    invoke-direct {v0, v2, v1, v3}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->PREFFERED_VOICE_CALL:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 188
    new-instance v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->SYSTEM:Ljava/lang/String;

    const-string v3, "allow_volte_provisioning"

    invoke-direct {v0, v2, v1, v3}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_PROVISIONING:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 194
    new-instance v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->GLOBAL:Ljava/lang/String;

    const-string v3, "com.sec.ims.settings"

    const-string v4, ""

    invoke-direct {v0, v3, v1, v4}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->IMS_GLOBAL:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 196
    new-instance v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->IMS_PROFILE:Ljava/lang/String;

    const-string v5, "*"

    invoke-direct {v0, v3, v1, v5}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->IMS_PROFILES:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 198
    new-instance v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->SIM_MOBILITY:Ljava/lang/String;

    invoke-direct {v0, v3, v1, v4}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->IMS_SIM_MOBILITY:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 200
    new-instance v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->IMS_SWITCH:Ljava/lang/String;

    invoke-direct {v0, v3, v1, v4}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->IMS_SWITCHES:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 202
    new-instance v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->IMS_USER:Ljava/lang/String;

    invoke-direct {v0, v3, v1, v4}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->RCS_ROAMING_PREF:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 204
    new-instance v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->IMS_NV:Ljava/lang/String;

    invoke-direct {v0, v3, v1, v5}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->IMS_NV_STORAGE:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 206
    new-instance v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    const-string v1, "com.samsung.rcs.dmconfigurationprovider"

    sget-object v6, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->IMS_OMADM:Ljava/lang/String;

    invoke-direct {v0, v1, v6, v5}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->IMS_DM_CONFIG:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 210
    new-instance v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->SYSTEM:Ljava/lang/String;

    const-string/jumbo v5, "wifi_call_enable1"

    invoke-direct {v0, v2, v1, v5}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->WIFI_CALL_ENABLE1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 212
    new-instance v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->SYSTEM:Ljava/lang/String;

    const-string/jumbo v5, "wifi_call_enable2"

    invoke-direct {v0, v2, v1, v5}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->WIFI_CALL_ENABLE2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 214
    new-instance v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->SYSTEM:Ljava/lang/String;

    const-string/jumbo v5, "wifi_call_preferred1"

    invoke-direct {v0, v2, v1, v5}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->WIFI_CALL_PREFERRED1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 216
    new-instance v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->SYSTEM:Ljava/lang/String;

    const-string/jumbo v5, "wifi_call_preferred2"

    invoke-direct {v0, v2, v1, v5}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->WIFI_CALL_PREFERRED2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 218
    new-instance v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->SYSTEM:Ljava/lang/String;

    const-string/jumbo v5, "wifi_call_when_roaming1"

    invoke-direct {v0, v2, v1, v5}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->WIFI_CALL_WHEN_ROAMING1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 220
    new-instance v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->SYSTEM:Ljava/lang/String;

    const-string/jumbo v5, "wifi_call_when_roaming2"

    invoke-direct {v0, v2, v1, v5}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->WIFI_CALL_WHEN_ROAMING2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 224
    new-instance v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    const-string v1, "PhoneRestrictionPolicy"

    const-string v2, "isRCSEnabled"

    const-string v5, "com.sec.knox.provider2"

    invoke-direct {v0, v5, v1, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->RCS_ALLOWED_URI:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 229
    new-instance v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    const-string/jumbo v1, "resetconfig"

    invoke-direct {v0, v3, v4, v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->RESET_SMK_CONFIG:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 231
    new-instance v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    const-string v1, "downloadconfig"

    invoke-direct {v0, v3, v4, v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->DOWNLOAD_SMK_CONFIG:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 233
    new-instance v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    const-string v1, "mnomap_updated"

    invoke-direct {v0, v3, v4, v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->MNOMAP_UPDATED:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 235
    new-instance v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    const-string v1, "dynamic_ims_updated"

    invoke-direct {v0, v3, v4, v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->DYNAMIC_IMS_UPDATED:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addUri(Landroid/content/UriMatcher;Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;I)V
    .registers 4

    .line 263
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1, p2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private static convertToGoogleWfcMode(IZ)I
    .registers 5

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_c

    if-eqz p0, :cond_b

    if-eq p0, v1, :cond_a

    return v1

    :cond_a
    return v0

    :cond_b
    return v2

    :cond_c
    if-eq p0, v2, :cond_13

    const/4 p1, 0x3

    if-eq p0, p1, :cond_12

    return v2

    :cond_12
    return v0

    :cond_13
    return v1
.end method

.method public static getRcsUserSetting(Landroid/content/Context;II)I
    .registers 4

    const/4 v0, 0x2

    .line 322
    invoke-static {v0, p2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getSettingsItemByPhoneId(II)Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public static getSettingsItemByPhoneId(II)Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;
    .registers 3

    if-eqz p0, :cond_25

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1d

    const/4 v0, 0x2

    if-eq p0, v0, :cond_15

    const/4 v0, 0x3

    if-eq p0, v0, :cond_d

    const/4 p0, 0x0

    return-object p0

    :cond_d
    if-nez p1, :cond_12

    .line 444
    sget-object p0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->WIFI_CALL_ENABLE1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    return-object p0

    .line 445
    :cond_12
    sget-object p0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->WIFI_CALL_ENABLE2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    return-object p0

    :cond_15
    if-nez p1, :cond_1a

    .line 441
    sget-object p0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->RCS_USER_SETTING1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    return-object p0

    .line 442
    :cond_1a
    sget-object p0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->RCS_USER_SETTING2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    return-object p0

    :cond_1d
    if-nez p1, :cond_22

    .line 438
    sget-object p0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VILTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    return-object p0

    .line 439
    :cond_22
    sget-object p0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VILTE_SLOT2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    return-object p0

    :cond_25
    if-nez p1, :cond_2a

    .line 435
    sget-object p0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    return-object p0

    .line 436
    :cond_2a
    sget-object p0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_SLOT2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    return-object p0
.end method

.method public static getVideoCallType(Landroid/content/Context;II)I
    .registers 4

    .line 335
    sget v0, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    if-ne p2, v0, :cond_b

    .line 336
    sget-object p2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VILTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {p2, p0, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result p0

    goto :goto_11

    .line 338
    :cond_b
    sget-object p2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VILTE_SLOT2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {p2, p0, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result p0

    :goto_11
    return p0
.end method

.method public static getVoiceCallType(Landroid/content/Context;II)I
    .registers 4

    .line 268
    sget v0, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    if-ne p2, v0, :cond_b

    .line 269
    sget-object p2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {p2, p0, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result p0

    goto :goto_11

    .line 271
    :cond_b
    sget-object p2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_SLOT2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {p2, p0, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result p0

    :goto_11
    return p0
.end method

.method public static getWiFiCallEnabled(Landroid/content/Context;II)I
    .registers 4

    .line 368
    sget v0, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    if-ne p2, v0, :cond_b

    sget-object p2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->WIFI_CALL_ENABLE1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {p2, p0, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result p0

    goto :goto_11

    .line 369
    :cond_b
    sget-object p2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->WIFI_CALL_ENABLE2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {p2, p0, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result p0

    :goto_11
    return p0
.end method

.method public static getWiFiCallPreferred(Landroid/content/Context;II)I
    .registers 4

    .line 373
    sget v0, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    if-ne p2, v0, :cond_b

    sget-object p2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->WIFI_CALL_PREFERRED1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {p2, p0, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result p0

    goto :goto_11

    .line 374
    :cond_b
    sget-object p2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->WIFI_CALL_PREFERRED2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {p2, p0, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result p0

    :goto_11
    return p0
.end method

.method public static getWiFiCallWhenRoaming(Landroid/content/Context;II)I
    .registers 4

    .line 378
    sget v0, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    if-ne p2, v0, :cond_b

    sget-object p2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->WIFI_CALL_WHEN_ROAMING1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {p2, p0, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result p0

    goto :goto_11

    .line 379
    :cond_b
    sget-object p2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->WIFI_CALL_WHEN_ROAMING2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {p2, p0, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result p0

    :goto_11
    return p0
.end method

.method public static isUserToggledVoiceCallType(Landroid/content/Context;I)Z
    .registers 4

    .line 313
    sget v0, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_c

    .line 314
    sget-object p1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->USER_TOGGLED_VOLTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {p1, p0, v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result p0

    goto :goto_12

    .line 316
    :cond_c
    sget-object p1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->USER_TOGGLED_VOLTE_SLOT2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {p1, p0, v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result p0

    :goto_12
    const/4 p1, 0x1

    if-ne p0, p1, :cond_16

    move v1, p1

    :cond_16
    return v1
.end method

.method public static isWiFiCallEnabled(Landroid/content/Context;)Z
    .registers 7

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 358
    invoke-static {p0, v0, v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getWiFiCallEnabled(Landroid/content/Context;II)I

    move-result v2

    const/4 v3, 0x1

    .line 360
    invoke-static {p0, v0, v3}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getWiFiCallEnabled(Landroid/content/Context;II)I

    move-result p0

    .line 362
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

    if-eq v2, v3, :cond_34

    if-ne p0, v3, :cond_35

    :cond_34
    move v1, v3

    :cond_35
    return v1
.end method

.method public static setRcsUserSetting(Landroid/content/Context;II)V
    .registers 5

    const/4 v0, 0x2

    .line 326
    invoke-static {v0, p2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getSettingsItemByPhoneId(II)Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    move-result-object p2

    const/4 v0, -0x1

    .line 327
    invoke-virtual {p2, p0, v0}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result v1

    if-ne v1, p1, :cond_e

    if-ne p1, v0, :cond_11

    .line 329
    :cond_e
    invoke-virtual {p2, p0, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->set(Landroid/content/Context;I)V

    :cond_11
    return-void
.end method

.method public static setVideoCallType(Landroid/content/Context;II)V
    .registers 5

    .line 344
    sget v0, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    const/4 v1, -0x1

    if-ne p2, v0, :cond_13

    .line 345
    sget-object p2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VILTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {p2, p0, v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result v0

    if-ne v0, p1, :cond_f

    if-ne p1, v1, :cond_20

    .line 347
    :cond_f
    invoke-virtual {p2, p0, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->set(Landroid/content/Context;I)V

    goto :goto_20

    .line 350
    :cond_13
    sget-object p2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VILTE_SLOT2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {p2, p0, v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result v0

    if-ne v0, p1, :cond_1d

    if-ne p1, v1, :cond_20

    .line 352
    :cond_1d
    invoke-virtual {p2, p0, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->set(Landroid/content/Context;I)V

    :cond_20
    :goto_20
    return-void
.end method

.method public static setVoiceCallType(Landroid/content/Context;II)V
    .registers 6

    .line 277
    sget v0, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    const/4 v1, -0x1

    if-ne p2, v0, :cond_13

    .line 278
    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v0, p0, v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result v2

    if-ne v2, p1, :cond_f

    if-ne p1, v1, :cond_20

    .line 280
    :cond_f
    invoke-virtual {v0, p0, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->set(Landroid/content/Context;I)V

    goto :goto_20

    .line 283
    :cond_13
    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_SLOT2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v0, p0, v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result v2

    if-ne v2, p1, :cond_1d

    if-ne p1, v1, :cond_20

    .line 285
    :cond_1d
    invoke-virtual {v0, p0, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->set(Landroid/content/Context;I)V

    .line 289
    :cond_20
    :goto_20
    invoke-static {p2}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result p0

    if-eq p0, v1, :cond_35

    if-eq p1, v1, :cond_35

    if-nez p1, :cond_2d

    const-string p1, "1"

    goto :goto_2f

    :cond_2d
    const-string p1, "0"

    :goto_2f
    const-string/jumbo p2, "volte_vt_enabled"

    .line 292
    invoke-static {p0, p2, p1}, Landroid/telephony/SubscriptionManager;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    :cond_35
    return-void
.end method

.method public static setVoiceCallTypeUserAction(Landroid/content/Context;II)V
    .registers 5

    .line 298
    sget v0, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    const/4 v1, 0x0

    if-ne p2, v0, :cond_11

    .line 299
    sget-object p2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->USER_TOGGLED_VOLTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {p2, p0, v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result v0

    if-eq v0, p1, :cond_1c

    .line 301
    invoke-virtual {p2, p0, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->set(Landroid/content/Context;I)V

    goto :goto_1c

    .line 304
    :cond_11
    sget-object p2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->USER_TOGGLED_VOLTE_SLOT2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {p2, p0, v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result v0

    if-eq v0, p1, :cond_1c

    .line 306
    invoke-virtual {p2, p0, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->set(Landroid/content/Context;I)V

    :cond_1c
    :goto_1c
    return-void
.end method

.method public static setWiFiCallEnabled(Landroid/content/Context;II)V
    .registers 4

    .line 384
    sget v0, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    if-ne p1, v0, :cond_a

    .line 385
    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->WIFI_CALL_ENABLE1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v0, p0, p2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->set(Landroid/content/Context;I)V

    goto :goto_13

    .line 386
    :cond_a
    sget v0, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_2:I

    if-ne p1, v0, :cond_13

    .line 387
    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->WIFI_CALL_ENABLE2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v0, p0, p2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->set(Landroid/content/Context;I)V

    .line 389
    :cond_13
    :goto_13
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result p0

    if-gez p0, :cond_1a

    return-void

    :cond_1a
    const-string/jumbo p1, "wfc_ims_enabled"

    .line 393
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Landroid/telephony/SubscriptionManager;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setWiFiCallPreferred(Landroid/content/Context;II)V
    .registers 4

    .line 398
    sget v0, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    if-ne p1, v0, :cond_a

    .line 399
    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->WIFI_CALL_PREFERRED1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v0, p0, p2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->set(Landroid/content/Context;I)V

    goto :goto_13

    .line 400
    :cond_a
    sget v0, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_2:I

    if-ne p1, v0, :cond_13

    .line 401
    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->WIFI_CALL_PREFERRED2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v0, p0, p2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->set(Landroid/content/Context;I)V

    :cond_13
    :goto_13
    const/4 p0, 0x3

    if-gt p2, p0, :cond_36

    .line 405
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result p0

    if-gez p0, :cond_1d

    return-void

    :cond_1d
    const/4 p1, 0x0

    .line 409
    invoke-static {p2, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->convertToGoogleWfcMode(IZ)I

    move-result p1

    .line 410
    invoke-static {}, Lcom/sec/internal/constants/ims/ImsConstants;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "setWiFiCallPreferred: Set telephony DB"

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p2, "wfc_ims_mode"

    .line 411
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p2, p1}, Landroid/telephony/SubscriptionManager;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    :cond_36
    return-void
.end method

.method public static setWiFiCallWhenRoaming(Landroid/content/Context;II)V
    .registers 4

    .line 417
    sget v0, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    if-ne p1, v0, :cond_a

    .line 418
    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->WIFI_CALL_WHEN_ROAMING1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v0, p0, p2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->set(Landroid/content/Context;I)V

    goto :goto_13

    .line 419
    :cond_a
    sget v0, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_2:I

    if-ne p1, v0, :cond_13

    .line 420
    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->WIFI_CALL_WHEN_ROAMING2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v0, p0, p2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->set(Landroid/content/Context;I)V

    .line 423
    :cond_13
    :goto_13
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result p0

    if-gez p0, :cond_1a

    return-void

    :cond_1a
    const/4 p1, 0x1

    .line 427
    invoke-static {p2, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->convertToGoogleWfcMode(IZ)I

    move-result p1

    .line 428
    invoke-static {}, Lcom/sec/internal/constants/ims/ImsConstants;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "setWiFiCallWhenRoaming: Set telephony DB"

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p2, "wfc_ims_roaming_mode"

    .line 429
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p2, p1}, Landroid/telephony/SubscriptionManager;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
