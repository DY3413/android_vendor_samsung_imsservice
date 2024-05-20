.class public Lcom/sec/internal/constants/ims/ImsConstants$Uris;
.super Ljava/lang/Object;
.source "ImsConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/ImsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Uris"
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.sec.ims.settings"

.field public static final CONFIG_URI:Ljava/lang/String; = "content://com.sec.ims.settings"

.field public static final FRAGMENT_SIM_SLOT:Ljava/lang/String; = "simslot"

.field public static final LINES_CONTENT_URI:Landroid/net/Uri;

.field public static final MMS_PREFERENCE_PROVIDER_DATASAVER_URI:Landroid/net/Uri;

.field public static final MMS_PREFERENCE_PROVIDER_KEY_URI:Landroid/net/Uri;

.field public static final RCS_PREFERENCE_PROVIDER_SUPPORT_DUAL_RCS:Landroid/net/Uri;

.field public static final SETTINGS_PROVIDER_CARRIER_FEATURE_URI:Landroid/net/Uri;

.field public static final SETTINGS_PROVIDER_DOWNLOAD_CONFIG_RESET_URI:Landroid/net/Uri;

.field public static final SETTINGS_PROVIDER_DOWNLOAD_CONFIG_URI:Landroid/net/Uri;

.field public static final SETTINGS_PROVIDER_PROFILE_URI:Landroid/net/Uri;

.field public static final SETTINGS_PROVIDER_SIMMOBILITY_URI:Landroid/net/Uri;

.field public static final SMS_SETTING:Landroid/net/Uri;

.field public static final SPECIFIC_BOT_EXPIRES:Landroid/net/Uri;

.field public static final SPECIFIC_BOT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.samsung.ims.nsds.provider/lines"

    .line 45
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$Uris;->LINES_CONTENT_URI:Landroid/net/Uri;

    const-string v0, "content://com.sec.ims.settings/profile"

    .line 46
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$Uris;->SETTINGS_PROVIDER_PROFILE_URI:Landroid/net/Uri;

    const-string v0, "content://com.sec.ims.settings/downloadconfig"

    .line 47
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$Uris;->SETTINGS_PROVIDER_DOWNLOAD_CONFIG_URI:Landroid/net/Uri;

    const-string v0, "content://com.sec.ims.settings/carrier_feature_updated"

    .line 48
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$Uris;->SETTINGS_PROVIDER_CARRIER_FEATURE_URI:Landroid/net/Uri;

    const-string v0, "content://com.sec.ims.settings/resetconfig"

    .line 49
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$Uris;->SETTINGS_PROVIDER_DOWNLOAD_CONFIG_RESET_URI:Landroid/net/Uri;

    const-string v0, "content://com.sec.ims.settings/simmobility"

    .line 50
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$Uris;->SETTINGS_PROVIDER_SIMMOBILITY_URI:Landroid/net/Uri;

    const-string v0, "content://com.android.mms.csc.PreferenceProvider/key"

    .line 51
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$Uris;->MMS_PREFERENCE_PROVIDER_KEY_URI:Landroid/net/Uri;

    const-string v0, "content://com.android.mms.csc.PreferenceProvider/data_saver"

    .line 52
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$Uris;->MMS_PREFERENCE_PROVIDER_DATASAVER_URI:Landroid/net/Uri;

    const-string v0, "content://com.sec.ims.settings/sms_setting"

    .line 53
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$Uris;->SMS_SETTING:Landroid/net/Uri;

    const-string v0, "content://com.sec.ims.android.rcs/support_dual_rcs"

    .line 54
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$Uris;->RCS_PREFERENCE_PROVIDER_SUPPORT_DUAL_RCS:Landroid/net/Uri;

    const-string v0, "content://com.android.mms.csc.PreferenceProvider/specific_bot"

    .line 55
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$Uris;->SPECIFIC_BOT_URI:Landroid/net/Uri;

    const-string v0, "content://com.android.mms.csc.PreferenceProvider/specific_bot_expires"

    .line 56
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$Uris;->SPECIFIC_BOT_EXPIRES:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
