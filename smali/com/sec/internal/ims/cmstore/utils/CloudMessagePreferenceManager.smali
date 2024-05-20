.class public Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;
.super Ljava/lang/Object;
.source "CloudMessagePreferenceManager.java"


# static fields
.field private static final ACS_HAS_NMS:Ljava/lang/String; = "acs_has_nms"

.field private static final ACS_NMS_HOST:Ljava/lang/String; = "acs_nms_host"

.field private static final APP_VER:Ljava/lang/String; = "app_ver"

.field private static final ATS_TOKEN:Ljava/lang/String; = "ats_token"

.field private static final AUTH_ZCODE:Ljava/lang/String; = "auth_zcode"

.field private static final BUFFER_DB_LOADED:Ljava/lang/String; = "buffer_db_loaded"

.field private static final COUNT_USER_INPUT_PHONE_NUMBER:Ljava/lang/String; = "count_user_input_phone_number"

.field private static final DEVICE_ID:Ljava/lang/String; = "device_id"

.field private static final HAS_SHOWN_POPUP_OPT_IN:Ljava/lang/String; = "has_shown_popup_opt_in"

.field private static final HUI_6014_ERR:Ljava/lang/String; = "6014_err"

.field private static final INITIAL_SYNC_STATUS:Ljava/lang/String; = "initial sync status"

.field private static final IS_IMSI_FIXED_FOR_ATT_DATABASE:Ljava/lang/String; = "is_imsi_fixed_for_att_database"

.field private static final IS_NATIVE_MSGAPP_DEFAULT:Ljava/lang/String; = "is_native_message_app_default"

.field private static final LAST_API_CREATE_SERVICE:Ljava/lang/String; = "last_api_create_service"

.field private static final LAST_SCREEN:Ljava/lang/String; = "last_screen"

.field private static final LAST_SCREEN_USER_STOP_BACKUP:Ljava/lang/String; = "last_screen_where_user_stop_backup"

.field private static final MSG_STORE_TOKEN:Ljava/lang/String; = "msg_store_token"

.field private static final NC_HOST:Ljava/lang/String; = "nc_host"

.field private static final NETWORK_OK_TIME:Ljava/lang/String; = "network_is_available_time"

.field private static final NEW_USER_OPT_IN_CASE:Ljava/lang/String; = "new_user_opt_in_case"

.field private static final NMS_HOST:Ljava/lang/String; = "nms_host"

.field private static final NSDS_AUTHORY:Ljava/lang/String; = "com.samsung.ims.nsds.provider"

.field private static final OBJECT_SEARCH_CURSOR:Ljava/lang/String; = "object_search_cursor"

.field private static final OMA_CALLBACK_URL:Ljava/lang/String; = "oma_callback_url"

.field private static final OMA_CHANNELS_CHANNEL_URL:Ljava/lang/String; = "oma_channels_channel_url"

.field private static final OMA_CHANNELS_RESOURCE_URL:Ljava/lang/String; = "oma_channels_resources_url"

.field private static final OMA_CHANNEL_CREATE_TIME:Ljava/lang/String; = "oma_channel_create_lifetime"

.field private static final OMA_CHANNEL_LIFETIME:Ljava/lang/String; = "oma_channel_lifetime"

.field private static final OMA_RETRY_COUNT:Ljava/lang/String; = "oma_retry_count"

.field private static final OMA_SUBSCIRPTION_CHANNEL_DURATION:Ljava/lang/String; = "oma_subscription_channel_duration"

.field private static final OMA_SUBSCIRPTION_RESTART_TOKEN:Ljava/lang/String; = "oma_subscription_restart_token"

.field private static final OMA_SUBSCIRPTION_RESURL:Ljava/lang/String; = "oma_subscription_resurl"

.field private static final OMA_SUBSCIRPTION_TIME:Ljava/lang/String; = "oma_subscription_time"

.field private static final OMA_SUBSCRIPTION_INDEX:Ljava/lang/String; = "oma_subscription_index"

.field private static final PAT:Ljava/lang/String; = "cps_pat"

.field private static final PAT_GENERATE_TIME:Ljava/lang/String; = "pat_generate_time"

.field private static final PREFERENCE_FILE_NAME:Ljava/lang/String; = "cloudmessage"

.field private static final PREFERENCE_MIGRATE_SUCCESS:Ljava/lang/String; = "cmsmigratesuccess"

.field private static final PREFERENCE_USER_DEBUG:Ljava/lang/String; = "cmsuserdebug"

.field private static final PREF_KEY_RETRY_STACK:Ljava/lang/String; = "Retry_Stack"

.field private static final REDIRECT_DOMAIN:Ljava/lang/String; = "redirect_domain"

.field public static final SIMSLOT_1:I = 0x0

.field public static final SIMSLOT_2:I = 0x1

.field private static final SIM_IMSI:Ljava/lang/String; = "sim_imsi"

.field private static final STEADY_STATE_FLAG:Ljava/lang/String; = "steady_state_flag"

.field private static final TBS_REQUIRED:Ljava/lang/String; = "tbs_required"

.field private static final TERM_CONDITION_ID:Ljava/lang/String; = "T&C"

.field private static final USER_CTN:Ljava/lang/String; = "user_ctn_id"

.field private static final USER_CTN_IS_INPUT:Ljava/lang/String; = "is_user_input_ctn"

.field private static final USER_DELETE_ACCOUNT:Ljava/lang/String; = "user_requested_delete_account"

.field private static final USER_OPT_IN_FLAG:Ljava/lang/String; = "user_opt_in_flag"

.field private static final ZCODE_COUNTER:Ljava/lang/String; = "zcode_counter"

.field private static final ZCODE_LAST_REQUEST_ID:Ljava/lang/String; = "zcode_last_request_id"

.field private static mUserDebugPreference:Landroid/content/SharedPreferences;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mMigrateSuccessPreference:Landroid/content/SharedPreferences;

.field private mPhoneID:I

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V
    .locals 3

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-class v0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 105
    iput v0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mPhoneID:I

    .line 119
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 120
    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v1

    iput v1, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mPhoneID:I

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mPhoneID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->TAG:Ljava/lang/String;

    .line 122
    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mContext:Landroid/content/Context;

    .line 123
    iget v1, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mPhoneID:I

    const-string v2, "cloudmessage"

    if-nez v1, :cond_0

    .line 124
    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mPreferences:Landroid/content/SharedPreferences;

    goto :goto_0

    .line 126
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mPhoneID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mPreferences:Landroid/content/SharedPreferences;

    .line 128
    :goto_0
    sget-object p1, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mUserDebugPreference:Landroid/content/SharedPreferences;

    if-nez p1, :cond_1

    .line 129
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mContext:Landroid/content/Context;

    const-string v1, "cmsuserdebug"

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    sput-object p1, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mUserDebugPreference:Landroid/content/SharedPreferences;

    .line 131
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mContext:Landroid/content/Context;

    const-string v1, "cmsmigratesuccess"

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mMigrateSuccessPreference:Landroid/content/SharedPreferences;

    .line 132
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->initUserDebug()V

    return-void
.end method

.method private getKeyBooleanValue(Ljava/lang/String;Z)Z
    .locals 0

    .line 189
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private getKeyIntegerValue(Ljava/lang/String;I)I
    .locals 0

    .line 178
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private getKeyLongValue(Ljava/lang/String;J)J
    .locals 0

    .line 200
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method private getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 167
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getPrefEditor()Landroid/content/SharedPreferences$Editor;
    .locals 0

    .line 149
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    return-object p0
.end method

.method private saveKeyBooleanValue(Ljava/lang/String;Z)V
    .locals 3

    .line 182
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "save key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getPrefEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 184
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 185
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private saveKeyIntegerValue(Ljava/lang/String;I)V
    .locals 3

    .line 171
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "save key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getPrefEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 173
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 174
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private saveKeyLongValue(Ljava/lang/String;J)V
    .locals 3

    .line 193
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "save key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getPrefEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 195
    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 196
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 153
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "save key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getPrefEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 155
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 156
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public clearAll()V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->TAG:Ljava/lang/String;

    const-string v1, "clear all preferences data"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getPrefEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 142
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 143
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public clearInvalidUserCtn()V
    .locals 1

    const-string/jumbo v0, "user_ctn_id"

    .line 268
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->removeKey(Ljava/lang/String;)V

    const-string v0, "is_user_input_ctn"

    .line 269
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->removeKey(Ljava/lang/String;)V

    return-void
.end method

.method public clearOMASubscriptionChannelDuration()V
    .locals 1

    const-string v0, "oma_subscription_channel_duration"

    .line 604
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->removeKey(Ljava/lang/String;)V

    return-void
.end method

.method public clearOMASubscriptionTime()V
    .locals 1

    const-string v0, "oma_subscription_time"

    .line 590
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->removeKey(Ljava/lang/String;)V

    return-void
.end method

.method public getAMBSPauseService()Z
    .locals 3

    const-string v0, "ambs_pause_service"

    const/4 v1, 0x0

    .line 463
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    .line 464
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAMBSPauseService :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getAMBSStopService()Z
    .locals 3

    const-string v0, "ambs_stop_service"

    const/4 v1, 0x0

    .line 452
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    .line 453
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAMBSStopService :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getAcsNmsHost()Ljava/lang/String;
    .locals 2

    const-string v0, "acs_nms_host"

    const-string v1, ""

    .line 382
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAtsToken()Ljava/lang/String;
    .locals 3

    const-string v0, "ats_token"

    const-string v1, ""

    .line 356
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 357
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "atsToken: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getAuthZCode()Ljava/lang/String;
    .locals 2

    const-string v0, "auth_zcode"

    const-string v1, ""

    .line 235
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBufferDbLoaded()Z
    .locals 2

    const-string v0, "buffer_db_loaded"

    const/4 v1, 0x0

    .line 644
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyBooleanValue(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 3

    const-string v0, "device_id"

    const-string v1, ""

    .line 656
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 657
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 658
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/Util;->getImei(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)Ljava/lang/String;

    move-result-object v0

    .line 659
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 660
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->TAG:Ljava/lang/String;

    const-string v0, "can\'t get imei from sp and telephonymgr"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 663
    :cond_0
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveDeviceId(Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public getGcmTokenFromVsim()Ljava/lang/String;
    .locals 7

    .line 678
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v0, "content://com.samsung.ims.nsds.provider/devices/push_token"

    .line 679
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v0, 0x0

    .line 681
    :try_start_0
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_1

    if-eqz v1, :cond_0

    .line 688
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    .line 685
    :cond_1
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "device_push_token"

    .line 686
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 688
    :cond_2
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v2

    .line 681
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v2
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v1

    .line 689
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!!!Could not get data from db "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-object v0
.end method

.method public getIsUserInputCtn()Z
    .locals 2

    const-string v0, "is_user_input_ctn"

    const/4 v1, 0x0

    .line 290
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyBooleanValue(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getLastScreen()I
    .locals 2

    const-string v0, "last_screen"

    const/4 v1, -0x1

    .line 336
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyIntegerValue(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getLastScreenUserStopBackup()I
    .locals 2

    const-string v0, "last_screen_where_user_stop_backup"

    const/4 v1, -0x1

    .line 344
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyIntegerValue(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getLastVVMStatus()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "vvm_on_status"

    const-string v1, ""

    .line 511
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMigrateSuccessFlag()Z
    .locals 2

    .line 714
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->TAG:Ljava/lang/String;

    const-string v1, "getMigrateSuccessFlag "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mMigrateSuccessPreference:Landroid/content/SharedPreferences;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "is_imsi_fixed_for_att_database"

    .line 718
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getMsgStoreSessionId()Ljava/lang/String;
    .locals 2

    const-string v0, "msg_store_token"

    const-string v1, ""

    .line 366
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNcHost()Ljava/lang/String;
    .locals 2

    const-string v0, "nc_host"

    const-string v1, ""

    .line 536
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNetworkAvailableTime()J
    .locals 3

    const-string v0, "network_is_available_time"

    const-wide/16 v1, -0x1

    .line 700
    invoke-direct {p0, v0, v1, v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyLongValue(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNewUserOptInCase()I
    .locals 2

    .line 430
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->getId()I

    move-result v0

    const-string v1, "new_user_opt_in_case"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyIntegerValue(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getNmsHost()Ljava/lang/String;
    .locals 2

    const-string v0, "nms_host"

    const-string v1, ""

    .line 374
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOMACallBackURL()Ljava/lang/String;
    .locals 2

    const-string v0, "oma_callback_url"

    const-string v1, ""

    .line 560
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOMAChannelCreateTime()J
    .locals 3

    const-string v0, "oma_channel_create_lifetime"

    const-wide/16 v1, 0x0

    .line 624
    invoke-direct {p0, v0, v1, v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyLongValue(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOMAChannelLifeTime()J
    .locals 3

    const-string v0, "oma_channel_lifetime"

    const-wide/16 v1, 0x0

    .line 614
    invoke-direct {p0, v0, v1, v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyLongValue(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOMAChannelResURL()Ljava/lang/String;
    .locals 2

    const-string v0, "oma_channels_resources_url"

    const-string v1, ""

    .line 544
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOMAChannelURL()Ljava/lang/String;
    .locals 2

    const-string v0, "oma_channels_channel_url"

    const-string v1, ""

    .line 552
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOMASSubscriptionRestartToken()Ljava/lang/String;
    .locals 2

    const-string v0, "oma_subscription_restart_token"

    const/4 v1, 0x0

    .line 576
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOMASubscriptionChannelDuration()I
    .locals 2

    const-string v0, "oma_subscription_channel_duration"

    const/4 v1, 0x0

    .line 600
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyIntegerValue(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getOMASubscriptionIndex()J
    .locals 3

    const-string v0, "oma_subscription_index"

    const-wide/16 v1, 0x0

    .line 568
    invoke-direct {p0, v0, v1, v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyLongValue(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOMASubscriptionResUrl()Ljava/lang/String;
    .locals 2

    const-string v0, "oma_subscription_resurl"

    const-string v1, ""

    .line 632
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOMASubscriptionTime()J
    .locals 3

    const-string v0, "oma_subscription_time"

    const-wide/16 v1, 0x0

    .line 586
    invoke-direct {p0, v0, v1, v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyLongValue(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOmaRetryCounter()I
    .locals 2

    const-string v0, "oma_retry_count"

    const/4 v1, 0x0

    .line 636
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyIntegerValue(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getRedirectDomain()Ljava/lang/String;
    .locals 2

    const-string v0, "redirect_domain"

    const-string v1, ""

    .line 390
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRetryStackData()Ljava/lang/String;
    .locals 2

    const-string v0, "Retry_Stack"

    const-string v1, ""

    .line 503
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSimImsi()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "sim_imsi"

    const-string v1, ""

    .line 248
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTermConditionId()Ljava/lang/String;
    .locals 2

    const-string v0, "T&C"

    const-string v1, ""

    .line 223
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTotalRetryCounter()I
    .locals 2

    const-string v0, "retry_total_counter"

    const/4 v1, 0x0

    .line 490
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyIntegerValue(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getUserCtn()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "user_ctn_id"

    const-string v1, ""

    .line 273
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUserTbs()Z
    .locals 2

    const-string/jumbo v0, "tbs_required"

    const/4 v1, 0x0

    .line 256
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyBooleanValue(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getUserTelCtn()Ljava/lang/String;
    .locals 1

    .line 279
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserCtn()Ljava/lang/String;

    move-result-object p0

    .line 280
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 281
    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/utils/Util;->getNormalizedTelUri(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 283
    invoke-virtual {p0}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public getValidPAT()Ljava/lang/String;
    .locals 6

    const-string v0, "cps_pat"

    const/4 v1, 0x0

    .line 400
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 402
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 403
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "pat_generate_time"

    invoke-direct {p0, v4, v2, v3}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyLongValue(Ljava/lang/String;J)J

    move-result-wide v2

    .line 404
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/32 v2, 0x48190800

    cmp-long p0, v4, v2

    if-gez p0, :cond_0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public getZCodeLastRequestId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "zcode_last_request_id"

    .line 211
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hasShownPopupOptIn()Z
    .locals 2

    const-string v0, "has_shown_popup_opt_in"

    const/4 v1, 0x0

    .line 421
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyBooleanValue(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public hasUserDeleteAccount()Z
    .locals 3

    const-string/jumbo v0, "user_requested_delete_account"

    const/4 v1, 0x0

    .line 330
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    .line 331
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasUserDeleteAccount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public hasUserOptedIn()Z
    .locals 2

    const-string/jumbo v0, "user_opt_in_flag"

    const/4 v1, 0x0

    .line 413
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyBooleanValue(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public ifSteadyState()Z
    .locals 2

    const-string/jumbo v0, "steady_state_flag"

    const/4 v1, 0x0

    .line 482
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyBooleanValue(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public increaseUserInputNumberCount()V
    .locals 2

    const-string v0, "count_user_input_phone_number"

    const/4 v1, 0x0

    .line 294
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyIntegerValue(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 295
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyIntegerValue(Ljava/lang/String;I)V

    return-void
.end method

.method public increazeZCodeCounter()V
    .locals 2

    const-string/jumbo v0, "zcode_counter"

    const/4 v1, 0x0

    .line 311
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyIntegerValue(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 312
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyIntegerValue(Ljava/lang/String;I)V

    return-void
.end method

.method public initUserDebug()V
    .locals 7

    .line 723
    sget-object v0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mUserDebugPreference:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 724
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->TAG:Ljava/lang/String;

    const-string v0, "mUserDebugPreference is null failed to init"

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "AMBS_DEBUG"

    const/4 v2, 0x0

    .line 727
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 728
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "debug preference :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    .line 730
    sget-object v0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mUserDebugPreference:Landroid/content/SharedPreferences;

    const-string v1, "app_id"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 731
    sget-object v1, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mUserDebugPreference:Landroid/content/SharedPreferences;

    const-string v3, "cps_host_name"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 732
    sget-object v3, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mUserDebugPreference:Landroid/content/SharedPreferences;

    const-string v4, "auth_host_name"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 733
    sget-object v4, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mUserDebugPreference:Landroid/content/SharedPreferences;

    const-string v5, "retry_time"

    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 734
    sget-object v5, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mUserDebugPreference:Landroid/content/SharedPreferences;

    const-string v6, "nc_host_name"

    invoke-interface {v5, v6, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 735
    invoke-static {v0, v3, v1, v2}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 736
    sput-boolean v0, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->DEBUG_RETRY_TIMELINE_FLAG:Z

    .line 737
    invoke-static {v4}, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->setRetryTimeLine(Ljava/lang/String;)V

    goto :goto_0

    .line 739
    :cond_1
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->initDefault()V

    .line 740
    sput-boolean v2, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->DEBUG_RETRY_TIMELINE_FLAG:Z

    .line 741
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->initRetryTimeLine()V

    .line 743
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "appId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->APP_ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cpsHostName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->CPS_HOST_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", authHostName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->ACMS_HOST_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ncHostName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->DEFAULT_PRODUCT_NC_HOST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "timeLine="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->debugRetryTimeLine:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public isDebugEnable()Z
    .locals 2

    .line 670
    sget-object p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mUserDebugPreference:Landroid/content/SharedPreferences;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "AMBS_DEBUG"

    .line 673
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isEmptyPref()Z
    .locals 0

    .line 204
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isHUI6014Err()Z
    .locals 2

    const-string v0, "6014_err"

    const/4 v1, 0x0

    .line 470
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyBooleanValue(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isLastAPIRequestCreateAccount()Z
    .locals 2

    const-string v0, "last_api_create_service"

    const/4 v1, 0x0

    .line 439
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyBooleanValue(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isNoMoreChanceUserInputNumber()Z
    .locals 2

    const-string v0, "count_user_input_phone_number"

    const/4 v1, 0x0

    .line 305
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyIntegerValue(Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x2

    if-lt p0, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isZCodeMax2Tries()Z
    .locals 2

    const-string/jumbo v0, "zcode_counter"

    const/4 v1, 0x0

    .line 316
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyIntegerValue(Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public removeKey(Ljava/lang/String;)V
    .locals 3

    .line 160
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getPrefEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 162
    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 163
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public removeUserInputNumberCount()V
    .locals 1

    .line 299
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getPrefEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "count_user_input_phone_number"

    .line 300
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 301
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public removeZCodeCounter()V
    .locals 1

    .line 320
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getPrefEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string/jumbo v0, "zcode_counter"

    .line 321
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 322
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public saveAMBSPauseService(Z)V
    .locals 3

    .line 458
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveAMBSPauseService :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ambs_pause_service"

    .line 459
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyBooleanValue(Ljava/lang/String;Z)V

    return-void
.end method

.method public saveAMBSStopService(Z)V
    .locals 3

    .line 447
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveAMBSStopService :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ambs_stop_service"

    .line 448
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyBooleanValue(Ljava/lang/String;Z)V

    return-void
.end method

.method public saveAcsNmsHost(Ljava/lang/String;)V
    .locals 1

    const-string v0, "acs_nms_host"

    .line 378
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveAppVer(Ljava/lang/String;)V
    .locals 1

    const-string v0, "app_ver"

    .line 219
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveAtsToken(Ljava/lang/String;)V
    .locals 1

    const-string v0, "ats_token"

    .line 352
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveAuthZCode(Ljava/lang/String;)V
    .locals 1

    const-string v0, "auth_zcode"

    .line 231
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveBufferDbLoaded(Z)V
    .locals 1

    const-string v0, "buffer_db_loaded"

    .line 648
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyBooleanValue(Ljava/lang/String;Z)V

    return-void
.end method

.method public saveDeviceId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "device_id"

    .line 652
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveIfHUI6014Err(Z)V
    .locals 1

    const-string v0, "6014_err"

    .line 474
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyBooleanValue(Ljava/lang/String;Z)V

    return-void
.end method

.method public saveIfHasShownPopupOptIn(Z)V
    .locals 1

    const-string v0, "has_shown_popup_opt_in"

    .line 425
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyBooleanValue(Ljava/lang/String;Z)V

    return-void
.end method

.method public saveIfSteadyState(Z)V
    .locals 1

    const-string/jumbo v0, "steady_state_flag"

    .line 478
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyBooleanValue(Ljava/lang/String;Z)V

    return-void
.end method

.method public saveInitialSyncStatus(I)V
    .locals 1

    const-string v0, "initial sync status"

    .line 521
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyIntegerValue(Ljava/lang/String;I)V

    return-void
.end method

.method public saveLastApiRequestCreateAccount(Z)V
    .locals 1

    const-string v0, "last_api_create_service"

    .line 443
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyBooleanValue(Ljava/lang/String;Z)V

    return-void
.end method

.method public saveLastRetryTime(J)V
    .locals 1

    const-string v0, "last retry time"

    .line 499
    invoke-direct {p0, v0, p1, p2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyLongValue(Ljava/lang/String;J)V

    return-void
.end method

.method public saveLastScreen(I)V
    .locals 1

    const-string v0, "last_screen"

    .line 340
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyIntegerValue(Ljava/lang/String;I)V

    return-void
.end method

.method public saveLastScreenUserStopBackup(I)V
    .locals 1

    const-string v0, "last_screen_where_user_stop_backup"

    .line 348
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyIntegerValue(Ljava/lang/String;I)V

    return-void
.end method

.method public saveLastVVMStatus(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "vvm_on_status"

    .line 507
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveMigrateSuccessFlag(Z)V
    .locals 3

    .line 704
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveMigrateSuccess is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mMigrateSuccessPreference:Landroid/content/SharedPreferences;

    if-nez p0, :cond_0

    return-void

    .line 708
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "is_imsi_fixed_for_att_database"

    .line 709
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 710
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public saveMsgStoreSessionId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "msg_store_token"

    .line 362
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveNativeMsgAppIsDefault(Z)V
    .locals 1

    const-string v0, "is_native_message_app_default"

    .line 486
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyBooleanValue(Ljava/lang/String;Z)V

    return-void
.end method

.method public saveNcHost(Ljava/lang/String;)V
    .locals 1

    const-string v0, "nc_host"

    .line 532
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveNetworkAvailableTime(J)V
    .locals 2

    .line 695
    new-instance v0, Landroid/icu/text/SimpleDateFormat;

    const-string v1, "YYYY-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v0, "network_is_available_time"

    .line 696
    invoke-direct {p0, v0, p1, p2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyLongValue(Ljava/lang/String;J)V

    return-void
.end method

.method public saveNewUserOptInCase(I)V
    .locals 1

    const-string v0, "new_user_opt_in_case"

    .line 434
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyIntegerValue(Ljava/lang/String;I)V

    return-void
.end method

.method public saveNmsHost(Ljava/lang/String;)V
    .locals 1

    const-string v0, "nms_host"

    .line 370
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveOMACallBackURL(Ljava/lang/String;)V
    .locals 1

    const-string v0, "oma_callback_url"

    .line 556
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveOMAChannelCreateTime(J)V
    .locals 1

    const-string v0, "oma_channel_create_lifetime"

    .line 619
    invoke-direct {p0, v0, p1, p2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyLongValue(Ljava/lang/String;J)V

    return-void
.end method

.method public saveOMAChannelLifeTime(J)V
    .locals 1

    const-string v0, "oma_channel_lifetime"

    .line 609
    invoke-direct {p0, v0, p1, p2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyLongValue(Ljava/lang/String;J)V

    return-void
.end method

.method public saveOMAChannelResURL(Ljava/lang/String;)V
    .locals 1

    const-string v0, "oma_channels_resources_url"

    .line 540
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveOMAChannelURL(Ljava/lang/String;)V
    .locals 1

    const-string v0, "oma_channels_channel_url"

    .line 548
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveOMASubscriptionChannelDuration(I)V
    .locals 1

    const-string v0, "oma_subscription_channel_duration"

    .line 595
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyIntegerValue(Ljava/lang/String;I)V

    return-void
.end method

.method public saveOMASubscriptionIndex(J)V
    .locals 1

    const-string v0, "oma_subscription_index"

    .line 564
    invoke-direct {p0, v0, p1, p2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyLongValue(Ljava/lang/String;J)V

    return-void
.end method

.method public saveOMASubscriptionResUrl(Ljava/lang/String;)V
    .locals 1

    const-string v0, "oma_subscription_resurl"

    .line 628
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveOMASubscriptionRestartToken(Ljava/lang/String;)V
    .locals 1

    const-string v0, "oma_subscription_restart_token"

    .line 572
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveOMASubscriptionTime(J)V
    .locals 1

    const-string v0, "oma_subscription_time"

    .line 581
    invoke-direct {p0, v0, p1, p2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyLongValue(Ljava/lang/String;J)V

    return-void
.end method

.method public saveObjectSearchCursor(Ljava/lang/String;)V
    .locals 1

    const-string v0, "object_search_cursor"

    .line 527
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveOmaRetryCounter(I)V
    .locals 1

    const-string v0, "oma_retry_count"

    .line 640
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyIntegerValue(Ljava/lang/String;I)V

    return-void
.end method

.method public savePATAndTime(Ljava/lang/String;)V
    .locals 2

    const-string v0, "cps_pat"

    .line 394
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string p1, "pat_generate_time"

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyLongValue(Ljava/lang/String;J)V

    return-void
.end method

.method public saveRedirectDomain(Ljava/lang/String;)V
    .locals 1

    const-string v0, "redirect_domain"

    .line 386
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveRetryStackData(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Retry_Stack"

    .line 516
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveSimImsi(Ljava/lang/String;)V
    .locals 1

    .line 240
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "sim_imsi"

    .line 243
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveTermConditionId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "T&C"

    .line 227
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveTotalRetryCounter(I)V
    .locals 1

    const-string v0, "retry_total_counter"

    .line 495
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyIntegerValue(Ljava/lang/String;I)V

    return-void
.end method

.method public saveUserCtn(Ljava/lang/String;Z)V
    .locals 1

    .line 260
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "user_ctn_id"

    .line 263
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "is_user_input_ctn"

    .line 264
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyBooleanValue(Ljava/lang/String;Z)V

    return-void
.end method

.method public saveUserDebug()V
    .locals 2

    .line 749
    sget-object v0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mUserDebugPreference:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 750
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mUserDebugPreference is null failed to save, debug:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->DEBUG_RETRY_TIMELINE_FLAG:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 753
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 754
    sget-boolean v0, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->DEBUG_RETRY_TIMELINE_FLAG:Z

    const-string v1, "AMBS_DEBUG"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 755
    sget-object v0, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->APP_ID:Ljava/lang/String;

    const-string v1, "app_id"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 756
    sget-object v0, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->CPS_HOST_NAME:Ljava/lang/String;

    const-string v1, "cps_host_name"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 757
    sget-object v0, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->ACMS_HOST_NAME:Ljava/lang/String;

    const-string v1, "auth_host_name"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 758
    sget-object v0, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->debugRetryTimeLine:Ljava/lang/String;

    const-string v1, "retry_time"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 759
    sget-object v0, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->DEFAULT_PRODUCT_NC_HOST:Ljava/lang/String;

    const-string v1, "nc_host_name"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 760
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public saveUserDeleteAccount(Z)V
    .locals 1

    const-string/jumbo v0, "user_requested_delete_account"

    .line 326
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyBooleanValue(Ljava/lang/String;Z)V

    return-void
.end method

.method public saveUserOptedIn(Z)V
    .locals 1

    const-string/jumbo v0, "user_opt_in_flag"

    .line 417
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyBooleanValue(Ljava/lang/String;Z)V

    return-void
.end method

.method public saveUserTbsRquired(Z)V
    .locals 1

    const-string/jumbo v0, "tbs_required"

    .line 252
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyBooleanValue(Ljava/lang/String;Z)V

    return-void
.end method

.method public saveZCodeLastRequestId(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "zcode_last_request_id"

    .line 215
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
