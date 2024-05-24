.class public Lcom/sec/internal/ims/core/RegistrationObserverManager;
.super Ljava/lang/Object;
.source "RegistrationObserverManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/core/RegistrationObserverManager$ChatbotAgreementObserver;,
        Lcom/sec/internal/ims/core/RegistrationObserverManager$CompleteSetupWizardObserver;,
        Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;,
        Lcom/sec/internal/ims/core/RegistrationObserverManager$ImsServiceSwitchObserver;
    }
.end annotation


# static fields
.field private static final EVENT_AIRPLANE_MODE:I = 0x3

.field private static final EVENT_DATA_ROAMING:I = 0x2

.field private static final EVENT_DOWNLOAD_CONFIG:I = 0x14

.field private static final EVENT_DYNAMIC_UPDATED:I = 0x15

.field private static final EVENT_ENRICHED_CALL_VBC_SETTING:I = 0x21

.field private static final EVENT_IMS_DM_CONFIG:I = 0x9

.field private static final EVENT_IMS_GLOBAL_SETTING:I = 0x6

.field private static final EVENT_IMS_PROFILE_SETTING:I = 0x7

.field private static final EVENT_MNOMAP_UPDATED:I = 0x1d

.field private static final EVENT_MOBILE_DATA:I = 0x4

.field private static final EVENT_MOBILE_DATA_PRESSED:I = 0x5

.field private static final EVENT_RCS_USER_SETTING_SLOT1:I = 0x1e

.field private static final EVENT_RCS_USER_SETTING_SLOT2:I = 0x1f

.field private static final EVENT_RESET_SMK_CONFIG:I = 0x16

.field private static final EVENT_SIM_MOBILITY:I = 0x17

.field private static final EVENT_VILTE_SLOT1:I = 0x1

.field private static final EVENT_VILTE_SLOT2:I = 0x12

.field private static final EVENT_VOLTE_ROAMING:I = 0xb

.field private static final EVENT_VOLTE_SLOT1:I = 0x0

.field private static final EVENT_VOLTE_SLOT2:I = 0x11

.field private static final EVENT_VOWIFI_SLOT1:I = 0xa

.field private static final EVENT_VOWIFI_SLOT2:I = 0x13

.field private static final LOG_TAG:Ljava/lang/String; = "RegiObsMgr"

.field private static final SILENT_LOG_CHANGED_ACTION:Ljava/lang/String; = "com.sec.android.app.servicemodeapp.SILENT_LOG_CHANGED"

.field private static sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mChatbotAgreementObserver:Lcom/sec/internal/ims/core/RegistrationObserverManager$ChatbotAgreementObserver;

.field private mCompleteSetupWizardObserver:Lcom/sec/internal/ims/core/RegistrationObserverManager$CompleteSetupWizardObserver;

.field protected mContext:Landroid/content/Context;

.field protected mHandler:Landroid/os/Handler;

.field protected mHandlerThread:Landroid/os/HandlerThread;

.field mImsServiceSwitchObserver:Landroid/database/ContentObserver;

.field private final mLocationModeReceiver:Landroid/content/BroadcastReceiver;

.field mRegContentObserver:Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;

.field protected mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

.field protected mRegManHandler:Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;

.field private mSilentLogReceiver:Landroid/content/BroadcastReceiver;

.field protected mSimManagers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/ISimManager;",
            ">;"
        }
    .end annotation
.end field

.field private mVoicecall_Type:I

.field private mVoicecall_Type2:I


# direct methods
.method static bridge synthetic -$$Nest$sfgetsUriMatcher()Landroid/content/UriMatcher;
    .registers 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->sUriMatcher:Landroid/content/UriMatcher;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 100
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->sUriMatcher:Landroid/content/UriMatcher;

    .line 103
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->addUri(Landroid/content/UriMatcher;Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;I)V

    .line 104
    sget-object v0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_SLOT2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    const/16 v2, 0x11

    invoke-static {v0, v1, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->addUri(Landroid/content/UriMatcher;Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;I)V

    .line 105
    sget-object v0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VILTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->addUri(Landroid/content/UriMatcher;Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;I)V

    .line 106
    sget-object v0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VILTE_SLOT2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    const/16 v2, 0x12

    invoke-static {v0, v1, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->addUri(Landroid/content/UriMatcher;Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;I)V

    .line 107
    sget-object v0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->DATA_ROAMING:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->addUri(Landroid/content/UriMatcher;Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;I)V

    .line 108
    sget-object v0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->AIRPLANE_MODE:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->addUri(Landroid/content/UriMatcher;Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;I)V

    .line 109
    sget-object v0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->MOBILE_DATA:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->addUri(Landroid/content/UriMatcher;Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;I)V

    .line 110
    sget-object v0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->MOBILE_DATA_PRESSED:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->addUri(Landroid/content/UriMatcher;Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;I)V

    .line 111
    sget-object v0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_ROAMING:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    const/16 v2, 0xb

    invoke-static {v0, v1, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->addUri(Landroid/content/UriMatcher;Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;I)V

    .line 113
    sget-object v0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->IMS_GLOBAL:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    const/4 v2, 0x6

    invoke-static {v0, v1, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->addUri(Landroid/content/UriMatcher;Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;I)V

    .line 114
    sget-object v0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->IMS_PROFILES:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    const/4 v2, 0x7

    invoke-static {v0, v1, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->addUri(Landroid/content/UriMatcher;Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;I)V

    .line 115
    sget-object v0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->IMS_SIM_MOBILITY:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    const/16 v2, 0x17

    invoke-static {v0, v1, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->addUri(Landroid/content/UriMatcher;Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;I)V

    .line 116
    sget-object v0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->IMS_NV_STORAGE:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    const/16 v2, 0x9

    invoke-static {v0, v1, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->addUri(Landroid/content/UriMatcher;Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;I)V

    .line 117
    sget-object v0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->IMS_DM_CONFIG:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-static {v0, v1, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->addUri(Landroid/content/UriMatcher;Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;I)V

    .line 119
    sget-object v0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->WIFI_CALL_ENABLE1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->addUri(Landroid/content/UriMatcher;Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;I)V

    .line 120
    sget-object v0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->WIFI_CALL_ENABLE2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    const/16 v3, 0x13

    invoke-static {v0, v1, v3}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->addUri(Landroid/content/UriMatcher;Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;I)V

    .line 122
    sget-object v0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->WIFI_CALL_PREFERRED1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-static {v0, v1, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->addUri(Landroid/content/UriMatcher;Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;I)V

    .line 123
    sget-object v0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->WIFI_CALL_PREFERRED2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-static {v0, v1, v3}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->addUri(Landroid/content/UriMatcher;Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;I)V

    .line 125
    sget-object v0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->WIFI_CALL_WHEN_ROAMING1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-static {v0, v1, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->addUri(Landroid/content/UriMatcher;Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;I)V

    .line 126
    sget-object v0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->WIFI_CALL_WHEN_ROAMING2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-static {v0, v1, v3}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->addUri(Landroid/content/UriMatcher;Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;I)V

    .line 128
    sget-object v0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->RESET_SMK_CONFIG:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    const/16 v2, 0x16

    invoke-static {v0, v1, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->addUri(Landroid/content/UriMatcher;Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;I)V

    .line 129
    sget-object v0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->MNOMAP_UPDATED:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    const/16 v2, 0x1d

    invoke-static {v0, v1, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->addUri(Landroid/content/UriMatcher;Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;I)V

    .line 130
    sget-object v0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->DYNAMIC_IMS_UPDATED:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    const/16 v2, 0x15

    invoke-static {v0, v1, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->addUri(Landroid/content/UriMatcher;Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;I)V

    .line 131
    sget-object v0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->DOWNLOAD_SMK_CONFIG:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    const/16 v2, 0x14

    invoke-static {v0, v1, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->addUri(Landroid/content/UriMatcher;Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;I)V

    .line 133
    sget-object v0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->RCS_USER_SETTING1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    const/16 v2, 0x1e

    invoke-static {v0, v1, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->addUri(Landroid/content/UriMatcher;Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;I)V

    .line 134
    sget-object v0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->RCS_USER_SETTING2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    const/16 v2, 0x1f

    invoke-static {v0, v1, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->addUri(Landroid/content/UriMatcher;Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;I)V

    .line 135
    sget-object v0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->ENRICHED_CALL_VBC:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    const/16 v2, 0x21

    invoke-static {v0, v1, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->addUri(Landroid/content/UriMatcher;Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;I)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/sec/internal/ims/core/RegistrationManagerBase;Ljava/util/List;Lcom/sec/internal/ims/core/RegistrationManagerHandler;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sec/internal/ims/core/RegistrationManagerBase;",
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/ISimManager;",
            ">;",
            "Lcom/sec/internal/ims/core/RegistrationManagerHandler;",
            ")V"
        }
    .end annotation

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 51
    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    .line 52
    iput v1, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mVoicecall_Type:I

    .line 53
    iput v1, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mVoicecall_Type2:I

    .line 56
    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mImsServiceSwitchObserver:Landroid/database/ContentObserver;

    .line 57
    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mChatbotAgreementObserver:Lcom/sec/internal/ims/core/RegistrationObserverManager$ChatbotAgreementObserver;

    .line 58
    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mCompleteSetupWizardObserver:Lcom/sec/internal/ims/core/RegistrationObserverManager$CompleteSetupWizardObserver;

    .line 84
    new-instance v0, Lcom/sec/internal/ims/core/RegistrationObserverManager$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/RegistrationObserverManager$1;-><init>(Lcom/sec/internal/ims/core/RegistrationObserverManager;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mSilentLogReceiver:Landroid/content/BroadcastReceiver;

    .line 92
    new-instance v0, Lcom/sec/internal/ims/core/RegistrationObserverManager$2;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/RegistrationObserverManager$2;-><init>(Lcom/sec/internal/ims/core/RegistrationObserverManager;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mLocationModeReceiver:Landroid/content/BroadcastReceiver;

    .line 146
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mContext:Landroid/content/Context;

    .line 147
    iput-object p2, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    .line 148
    iput-object p3, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mSimManagers:Ljava/util/List;

    .line 149
    iput-object p4, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegManHandler:Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/ISimManager;",
            ">;)V"
        }
    .end annotation

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 51
    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    .line 52
    iput v1, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mVoicecall_Type:I

    .line 53
    iput v1, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mVoicecall_Type2:I

    .line 56
    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mImsServiceSwitchObserver:Landroid/database/ContentObserver;

    .line 57
    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mChatbotAgreementObserver:Lcom/sec/internal/ims/core/RegistrationObserverManager$ChatbotAgreementObserver;

    .line 58
    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mCompleteSetupWizardObserver:Lcom/sec/internal/ims/core/RegistrationObserverManager$CompleteSetupWizardObserver;

    .line 84
    new-instance v0, Lcom/sec/internal/ims/core/RegistrationObserverManager$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/RegistrationObserverManager$1;-><init>(Lcom/sec/internal/ims/core/RegistrationObserverManager;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mSilentLogReceiver:Landroid/content/BroadcastReceiver;

    .line 92
    new-instance v0, Lcom/sec/internal/ims/core/RegistrationObserverManager$2;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/RegistrationObserverManager$2;-><init>(Lcom/sec/internal/ims/core/RegistrationObserverManager;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mLocationModeReceiver:Landroid/content/BroadcastReceiver;

    .line 140
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mContext:Landroid/content/Context;

    .line 141
    iput-object p2, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mSimManagers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public init()V
    .registers 4

    .line 153
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RegistrationObserverManager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 154
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 155
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mHandler:Landroid/os/Handler;

    .line 157
    new-instance v0, Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;-><init>(Lcom/sec/internal/ims/core/RegistrationObserverManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegContentObserver:Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;

    .line 158
    new-instance v0, Lcom/sec/internal/ims/core/RegistrationObserverManager$ImsServiceSwitchObserver;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/core/RegistrationObserverManager$ImsServiceSwitchObserver;-><init>(Lcom/sec/internal/ims/core/RegistrationObserverManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mImsServiceSwitchObserver:Landroid/database/ContentObserver;

    .line 159
    new-instance v0, Lcom/sec/internal/ims/core/RegistrationObserverManager$ChatbotAgreementObserver;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/core/RegistrationObserverManager$ChatbotAgreementObserver;-><init>(Lcom/sec/internal/ims/core/RegistrationObserverManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mChatbotAgreementObserver:Lcom/sec/internal/ims/core/RegistrationObserverManager$ChatbotAgreementObserver;

    .line 160
    new-instance v0, Lcom/sec/internal/ims/core/RegistrationObserverManager$CompleteSetupWizardObserver;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/core/RegistrationObserverManager$CompleteSetupWizardObserver;-><init>(Lcom/sec/internal/ims/core/RegistrationObserverManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mCompleteSetupWizardObserver:Lcom/sec/internal/ims/core/RegistrationObserverManager$CompleteSetupWizardObserver;

    .line 161
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->registerSilentLogIntentReceiver()V

    .line 162
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->registerLocationModeReceiver()V

    .line 163
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->registerObservers()V

    .line 164
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mContext:Landroid/content/Context;

    sget v1, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    const/4 v2, -0x1

    invoke-static {v0, v2, v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getVoiceCallType(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mVoicecall_Type:I

    .line 166
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mContext:Landroid/content/Context;

    sget v1, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_2:I

    invoke-static {v0, v2, v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getVoiceCallType(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mVoicecall_Type2:I

    return-void
.end method

.method onAirplaneModeSettingChanged()V
    .registers 6

    .line 251
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 253
    sget-object v1, Lcom/sec/internal/log/IMSLog$LAZER_TYPE;->REGI:Lcom/sec/internal/log/IMSLog$LAZER_TYPE;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Airplane Mode Changed ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    if-ne v0, v4, :cond_1d

    move v2, v4

    :cond_1d
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->lazer(Lcom/sec/internal/log/IMSLog$LAZER_TYPE;Ljava/lang/String;)V

    .line 255
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegManHandler:Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;->notifyAirplaneModeChanged(I)V

    return-void
.end method

.method onDataRoamingSettingChanged(I)V
    .registers 5

    .line 243
    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->DATA_ROAMING:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mContext:Landroid/content/Context;

    sget v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->LTE_DATA_ROAMING_DISABLED:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result v0

    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataRoamingSettingChanged: now ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    if-ne v0, v2, :cond_18

    goto :goto_19

    :cond_18
    const/4 v2, 0x0

    :goto_19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegiObsMgr"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegManHandler:Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;

    invoke-interface {p0, v0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;->notifyRoamingDataSettigChanged(II)V

    return-void
.end method

.method onEnrichedCallVbcSettingChanged(I)V
    .registers 4

    const-string v0, "RegiObsMgr"

    const-string v1, "onEnrichedCallVbcSettingChanged"

    .line 208
    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 209
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegManHandler:Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;->notifyEcVbcSettingChanged(I)V

    return-void
.end method

.method onImsDmConfigChanged(Landroid/net/Uri;I)V
    .registers 5

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onImsDmConfigChanged, phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiObsMgr"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegManHandler:Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;->notifyConfigChanged(Landroid/net/Uri;I)V

    return-void
.end method

.method onImsSettingsChanged(Landroid/net/Uri;I)V
    .registers 5

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onImsSettingsChanged, phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiObsMgr"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegManHandler:Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;->notifyImsSettingChanged(Landroid/net/Uri;I)V

    return-void
.end method

.method onLocationModeChanged(IZ)V
    .registers 5

    const-string v0, "onLocationModeChanged:"

    const-string v1, "RegiObsMgr"

    .line 295
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mSimManagers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    if-nez p1, :cond_12

    return-void

    .line 300
    :cond_12
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object p1

    .line 301
    sget-object v0, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-ne p1, v0, :cond_35

    .line 302
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onLocationModeChanged: isLocationEnabled = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_35

    .line 304
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegManHandler:Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;->notifyLocationModeChanged()V

    :cond_35
    return-void
.end method

.method onMnoMapUpdated(Landroid/net/Uri;I)V
    .registers 5

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMnoMapUpdated, phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiObsMgr"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegManHandler:Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;->notifyMnoMapUpdated(Landroid/net/Uri;I)V

    return-void
.end method

.method onMobileDataPressedSettingChanged(I)V
    .registers 6

    .line 267
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->MOBILE_DATA_PRESSED:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 268
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 267
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMobileDataPressedSettingChanged: now ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v0, v2, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v2, 0x0

    :goto_1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegiObsMgr"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegManHandler:Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;

    invoke-interface {p0, v0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;->notifyMobileDataPressedSettingeChanged(II)V

    return-void
.end method

.method onMobileDataSettingChanged(I)V
    .registers 6

    .line 259
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/ims/extensions/Extensions$Settings$Global;->MOBILE_DATA:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMobileDataSettingChanged: now ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v0, v2, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v2, 0x0

    :goto_1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegiObsMgr"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegManHandler:Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;

    invoke-interface {p0, v0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;->notifyMobileDataSettingeChanged(II)V

    return-void
.end method

.method onRcsUserSettingChanged(I)V
    .registers 5

    .line 171
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getRcsUserSetting(Landroid/content/Context;II)I

    move-result v0

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRcsUserSettingChanged rcsUserSetting:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegiObsMgr"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegManHandler:Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;

    invoke-interface {p0, v0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;->notifyRcsUserSettingChanged(II)V

    return-void
.end method

.method onVilteSettingChanged(I)V
    .registers 7

    .line 213
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mContext:Landroid/content/Context;

    const/4 v1, -0x1

    invoke-static {v0, v1, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getVideoCallType(Landroid/content/Context;II)I

    move-result v0

    const-string v2, "RegiObsMgr"

    if-ne v0, v1, :cond_11

    const-string p0, "onVilteSettingChanged : unknown"

    .line 217
    invoke-static {v2, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_11
    const/4 v1, 0x1

    if-nez v0, :cond_16

    move v0, v1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 222
    :goto_17
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onVilteSettingChanged : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, p1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 224
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegManHandler:Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;

    invoke-interface {p0, v0, v1, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;->notifyVolteSettingChanged(ZZI)V

    return-void
.end method

.method onVoWiFiSettingsChanged(I)V
    .registers 4

    const-string v0, "RegiObsMgr"

    const-string v1, "onVoWiFiSettingsChanged:"

    .line 290
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegManHandler:Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;

    const-wide/16 v0, 0x0

    invoke-interface {p0, p1, v0, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;->notifyVowifiSettingChanged(IJ)V

    return-void
.end method

.method onVolteRoamingSettingChanged(I)V
    .registers 6

    .line 228
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mSimManagers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    if-nez v0, :cond_b

    return-void

    .line 232
    :cond_b
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 233
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_ROAMING:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mContext:Landroid/content/Context;

    sget v3, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_ROAMING_ENABLED:I

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result v1

    .line 234
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onVolteRoamingSettingChanged: now ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    sget v3, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_ROAMING_ENABLED:I

    if-ne v1, v3, :cond_2a

    const-string v3, "VOLTE"

    goto :goto_2c

    :cond_2a
    const-string v3, "CS"

    :goto_2c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RegiObsMgr"

    .line 234
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    sget-object v2, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-ne v0, v2, :cond_4e

    .line 238
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegManHandler:Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;

    sget v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_ROAMING_ENABLED:I

    const/4 v2, 0x0

    if-ne v1, v0, :cond_4a

    const/4 v0, 0x1

    goto :goto_4b

    :cond_4a
    move v0, v2

    :goto_4b
    invoke-interface {p0, v0, v2, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;->notifyVolteSettingChanged(ZZI)V

    :cond_4e
    return-void
.end method

.method onVolteSettingChanged(I)V
    .registers 8

    .line 178
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mContext:Landroid/content/Context;

    const/4 v1, -0x1

    invoke-static {v0, v1, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getVoiceCallType(Landroid/content/Context;II)I

    move-result v0

    const-string v2, "RegiObsMgr"

    if-ne v0, v1, :cond_12

    const-string p0, "onVolteSettingChanged : unknown"

    .line 182
    invoke-static {v2, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_9e

    .line 184
    :cond_12
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mSimManagers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    if-nez v1, :cond_1d

    return-void

    .line 189
    :cond_1d
    sget v1, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    if-ne p1, v1, :cond_24

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    goto :goto_26

    :cond_24
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_SLOT2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 190
    :goto_26
    sget v3, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    if-ne p1, v3, :cond_2d

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mVoicecall_Type:I

    goto :goto_2f

    :cond_2d
    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mVoicecall_Type2:I

    :goto_2f
    if-eq v3, v0, :cond_78

    .line 191
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegistrationManager;->getEventLog()Lcom/sec/internal/helper/SimpleEventLog;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is changed, old "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    sget v5, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    if-ne p1, v5, :cond_4f

    iget v5, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mVoicecall_Type:I

    goto :goto_51

    :cond_4f
    iget v5, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mVoicecall_Type2:I

    :goto_51
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", new "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", pkg "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 191
    invoke-virtual {v3, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 194
    sget v1, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    if-ne p1, v1, :cond_76

    .line 195
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mVoicecall_Type:I

    goto :goto_78

    .line 197
    :cond_76
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mVoicecall_Type2:I

    :cond_78
    :goto_78
    const/4 v1, 0x0

    if-nez v0, :cond_7d

    const/4 v0, 0x1

    goto :goto_7e

    :cond_7d
    move v0, v1

    .line 202
    :goto_7e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onVolteSettingChanged : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_8d

    const-string v4, "VOLTE"

    goto :goto_8f

    :cond_8d
    const-string v4, "CS"

    :goto_8f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, p1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 203
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegManHandler:Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;

    invoke-interface {p0, v0, v1, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;->notifyVolteSettingChanged(ZZI)V

    :goto_9e
    return-void
.end method

.method registerLocationModeReceiver()V
    .registers 3

    const-string v0, "RegiObsMgr"

    const-string/jumbo v1, "registerLocationModeReceiver"

    .line 442
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.location.MODE_CHANGED"

    .line 444
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 445
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mLocationModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method registerObservers()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteFullException;
        }
    .end annotation

    const-string v0, "RegiObsMgr"

    const-string/jumbo v1, "registerObservers:"

    .line 331
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 333
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mSimManagers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 334
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 338
    :cond_27
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegContentObserver:Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->registerObservers(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 341
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_SLOT2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegContentObserver:Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;

    invoke-virtual {p0, v1, v3, v2}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->registerObservers(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 344
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->RCS_USER_SETTING1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegContentObserver:Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;

    invoke-virtual {p0, v1, v3, v2}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->registerObservers(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 347
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->RCS_USER_SETTING2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegContentObserver:Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;

    invoke-virtual {p0, v1, v3, v2}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->registerObservers(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 350
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VILTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegContentObserver:Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;

    invoke-virtual {p0, v1, v3, v2}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->registerObservers(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 353
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VILTE_SLOT2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegContentObserver:Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;

    invoke-virtual {p0, v1, v3, v2}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->registerObservers(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 356
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->DATA_ROAMING:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegContentObserver:Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;

    invoke-virtual {p0, v1, v3, v2}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->registerObservers(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 359
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->AIRPLANE_MODE:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegContentObserver:Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;

    invoke-virtual {p0, v1, v3, v2}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->registerObservers(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 362
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->MOBILE_DATA:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegContentObserver:Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;

    invoke-virtual {p0, v1, v3, v2}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->registerObservers(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 365
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->MOBILE_DATA_PRESSED:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegContentObserver:Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;

    invoke-virtual {p0, v1, v3, v2}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->registerObservers(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 368
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->IMS_SWITCHES:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mImsServiceSwitchObserver:Landroid/database/ContentObserver;

    invoke-virtual {p0, v1, v3, v2}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->registerObservers(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 371
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->WIFI_SETTING:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegContentObserver:Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;

    invoke-virtual {p0, v1, v3, v2}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->registerObservers(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 374
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->IMS_GLOBAL:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegContentObserver:Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;

    const/4 v4, 0x1

    invoke-virtual {p0, v1, v4, v2}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->registerObservers(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 377
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->IMS_PROFILES:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegContentObserver:Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;

    invoke-virtual {p0, v1, v4, v2}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->registerObservers(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 380
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->IMS_SIM_MOBILITY:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegContentObserver:Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;

    invoke-virtual {p0, v1, v4, v2}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->registerObservers(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 383
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->IMS_NV_STORAGE:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegContentObserver:Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;

    invoke-virtual {p0, v1, v4, v2}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->registerObservers(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 386
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->IMS_DM_CONFIG:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegContentObserver:Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;

    invoke-virtual {p0, v1, v4, v2}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->registerObservers(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 389
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->ENRICHED_CALL_VBC:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegContentObserver:Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;

    invoke-virtual {p0, v1, v3, v2}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->registerObservers(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 392
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/constants/Mno;

    .line 393
    sget-object v5, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-ne v2, v5, :cond_f3

    .line 394
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_ROAMING:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegContentObserver:Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;

    invoke-virtual {p0, v1, v3, v2}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->registerObservers(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 400
    :cond_10e
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->WIFI_CALL_ENABLE1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegContentObserver:Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;

    invoke-virtual {p0, v1, v3, v2}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->registerObservers(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 401
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->WIFI_CALL_ENABLE2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegContentObserver:Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;

    invoke-virtual {p0, v1, v3, v2}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->registerObservers(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 404
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->WIFI_CALL_WHEN_ROAMING1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegContentObserver:Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;

    invoke-virtual {p0, v1, v3, v2}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->registerObservers(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 405
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->WIFI_CALL_WHEN_ROAMING2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegContentObserver:Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;

    invoke-virtual {p0, v1, v3, v2}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->registerObservers(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 408
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->WIFI_CALL_PREFERRED1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegContentObserver:Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;

    invoke-virtual {p0, v1, v3, v2}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->registerObservers(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 409
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->WIFI_CALL_PREFERRED2:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegContentObserver:Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;

    invoke-virtual {p0, v1, v3, v2}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->registerObservers(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 412
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->PREFFERED_VOICE_CALL:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegContentObserver:Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;

    invoke-virtual {p0, v1, v4, v2}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->registerObservers(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 415
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->RESET_SMK_CONFIG:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegContentObserver:Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;

    invoke-virtual {p0, v1, v3, v2}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->registerObservers(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 416
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->DOWNLOAD_SMK_CONFIG:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegContentObserver:Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;

    invoke-virtual {p0, v1, v3, v2}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->registerObservers(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 419
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->MNOMAP_UPDATED:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegContentObserver:Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;

    invoke-virtual {p0, v1, v3, v2}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->registerObservers(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 420
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->DYNAMIC_IMS_UPDATED:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegContentObserver:Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;

    invoke-virtual {p0, v1, v3, v2}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->registerObservers(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 423
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_18b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/constants/Mno;

    .line 424
    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v1

    if-eqz v1, :cond_18b

    .line 425
    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$Uris;->MMS_PREFERENCE_PROVIDER_KEY_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mChatbotAgreementObserver:Lcom/sec/internal/ims/core/RegistrationObserverManager$ChatbotAgreementObserver;

    invoke-virtual {p0, v0, v3, v1}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->registerObservers(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 431
    :cond_1a4
    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->SETUP_WIZARD:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getUri()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mCompleteSetupWizardObserver:Lcom/sec/internal/ims/core/RegistrationObserverManager$CompleteSetupWizardObserver;

    invoke-virtual {p0, v0, v3, v1}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->registerObservers(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method registerObservers(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    .registers 7

    .line 315
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/\\*$"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 316
    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    .line 317
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "registerObservers: validateUri ["

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "] -> ["

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RegiObsMgr"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x1

    .line 322
    :cond_3b
    :try_start_3b
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, v0, p2, p3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_44
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_3b .. :try_end_44} :catch_45
    .catch Ljava/lang/SecurityException; {:try_start_3b .. :try_end_44} :catch_45

    goto :goto_69

    :catch_45
    move-exception p1

    .line 325
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationManager;->getEventLog()Lcom/sec/internal/helper/SimpleEventLog;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "registerObservers() : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " failed!"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 326
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->printStackTrace()V

    :goto_69
    return-void
.end method

.method registerSilentLogIntentReceiver()V
    .registers 3

    const-string v0, "RegiObsMgr"

    const-string/jumbo v1, "registerSilentLogIntentReceiver"

    .line 435
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sec.android.app.servicemodeapp.SILENT_LOG_CHANGED"

    .line 437
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 438
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mSilentLogReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
