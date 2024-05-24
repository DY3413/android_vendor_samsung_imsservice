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
    .registers 5

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-class v0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 106
    iput v0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mPhoneID:I

    .line 117
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 118
    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v1

    iput v1, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mPhoneID:I

    .line 119
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

    .line 120
    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mContext:Landroid/content/Context;

    .line 121
    iget v1, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mPhoneID:I

    const-string v2, "cloudmessage"

    if-nez v1, :cond_48

    .line 122
    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mPreferences:Landroid/content/SharedPreferences;

    goto :goto_5f

    .line 124
    :cond_48
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

    .line 126
    :goto_5f
    sget-object p1, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mUserDebugPreference:Landroid/content/SharedPreferences;

    if-nez p1, :cond_6d

    .line 127
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mContext:Landroid/content/Context;

    const-string v1, "cmsuserdebug"

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    sput-object p1, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mUserDebugPreference:Landroid/content/SharedPreferences;

    .line 129
    :cond_6d
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mContext:Landroid/content/Context;

    const-string v1, "cmsmigratesuccess"

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mMigrateSuccessPreference:Landroid/content/SharedPreferences;

    .line 130
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->initUserDebug()V

    return-void
.end method

.method private getKeyBooleanValue(Ljava/lang/String;Z)Z
    .registers 3

    .line 185
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private getKeyIntegerValue(Ljava/lang/String;I)I
    .registers 3

    .line 174
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private getKeyLongValue(Ljava/lang/String;J)J
    .registers 4

    .line 196
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method private getPrefEditor()Landroid/content/SharedPreferences$Editor;
    .registers 1

    .line 141
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    return-object p0
.end method

.method private saveKeyBooleanValue(Ljava/lang/String;Z)V
    .registers 6

    .line 178
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "save key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getPrefEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 180
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 181
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private saveKeyIntegerValue(Ljava/lang/String;I)V
    .registers 6

    .line 167
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "save key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getPrefEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 169
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 170
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private saveKeyLongValue(Ljava/lang/String;J)V
    .registers 7

    .line 189
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "save key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getPrefEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 191
    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 192
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public clearAll()V
    .registers 3

    .line 134
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->TAG:Ljava/lang/String;

    const-string v1, "clear all preferences data"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getPrefEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 136
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 137
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public clearInvalidUserCtn()V
    .registers 2

    const-string/jumbo v0, "user_ctn_id"

    .line 447
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->removeKey(Ljava/lang/String;)V

    const-string v0, "is_user_input_ctn"

    .line 448
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->removeKey(Ljava/lang/String;)V

    return-void
.end method

.method public clearOMASubscriptionChannelDuration()V
    .registers 2

    const-string v0, "oma_subscription_channel_duration"

    .line 784
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->removeKey(Ljava/lang/String;)V

    return-void
.end method

.method public clearOMASubscriptionTime()V
    .registers 2

    const-string v0, "oma_subscription_time"

    .line 770
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->removeKey(Ljava/lang/String;)V

    return-void
.end method

.method public getAMBSPauseService()Z
    .registers 4

    const-string v0, "ambs_pause_service"

    const/4 v1, 0x0

    .line 643
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    .line 644
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
    .registers 4

    const-string v0, "ambs_stop_service"

    const/4 v1, 0x0

    .line 632
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    .line 633
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
    .registers 3

    const-string v0, "acs_nms_host"

    const-string v1, ""

    .line 562
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAtsToken()Ljava/lang/String;
    .registers 4

    const-string v0, "ats_token"

    const-string v1, ""

    .line 536
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 537
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

.method public getAuthCode()Ljava/lang/String;
    .registers 3

    const-string v0, "authentication_code"

    const-string v1, ""

    .line 227
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAuthZCode()Ljava/lang/String;
    .registers 3

    const-string v0, "auth_zcode"

    const-string v1, ""

    .line 414
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBufferDbLoaded()Z
    .registers 3

    const-string v0, "buffer_db_loaded"

    const/4 v1, 0x0

    .line 824
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyBooleanValue(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getCmsDataTtl()I
    .registers 3

    const-string v0, "cms_data_ttl"

    const/4 v1, 0x0

    .line 292
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyIntegerValue(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getDeviceId()Ljava/lang/String;
    .registers 4

    const-string v0, "device_id"

    const-string v1, ""

    .line 836
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 837
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 838
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/Util;->getImei(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)Ljava/lang/String;

    move-result-object v0

    .line 839
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 840
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->TAG:Ljava/lang/String;

    const-string v0, "can\'t get imei from sp and telephonymgr"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 843
    :cond_22
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveDeviceId(Ljava/lang/String;)V

    :cond_25
    return-object v0
.end method

.method public getFcmRegistrationToken()Ljava/lang/String;
    .registers 3

    const-string v0, "fcm_registration_token"

    const-string v1, ""

    .line 364
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFcmSenderId()Ljava/lang/String;
    .registers 3

    const-string v0, "fcm_sender_id"

    const-string v1, ""

    .line 300
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getGcmTokenFromVsim()Ljava/lang/String;
    .registers 8

    .line 858
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v0, "content://com.samsung.ims.nsds.provider/devices/push_token"

    .line 859
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v0, 0x0

    .line 861
    :try_start_11
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_1d

    if-eqz v1, :cond_1c

    .line 868
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1c
    .catch Landroid/database/SQLException; {:try_start_11 .. :try_end_1c} :catch_3c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_1c} :catch_3c

    :cond_1c
    return-object v0

    .line 865
    :cond_1d
    :goto_1d
    :try_start_1d
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    const-string v2, "device_push_token"

    .line 866
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_2d
    .catchall {:try_start_1d .. :try_end_2d} :catchall_32

    goto :goto_1d

    .line 868
    :cond_2e
    :try_start_2e
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_31
    .catch Landroid/database/SQLException; {:try_start_2e .. :try_end_31} :catch_3c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2e .. :try_end_31} :catch_3c

    goto :goto_57

    :catchall_32
    move-exception v2

    .line 861
    :try_start_33
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_37

    goto :goto_3b

    :catchall_37
    move-exception v1

    :try_start_38
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3b
    throw v2
    :try_end_3c
    .catch Landroid/database/SQLException; {:try_start_38 .. :try_end_3c} :catch_3c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_38 .. :try_end_3c} :catch_3c

    :catch_3c
    move-exception v1

    .line 869
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

    :goto_57
    return-object v0
.end method

.method public getIsUserInputCtn()Z
    .registers 3

    const-string v0, "is_user_input_ctn"

    const/4 v1, 0x0

    .line 470
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyBooleanValue(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 159
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKeyStringValueOfUserDebug(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 163
    sget-object p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mUserDebugPreference:Landroid/content/SharedPreferences;

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLastScreen()I
    .registers 3

    const-string v0, "last_screen"

    const/4 v1, -0x1

    .line 516
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyIntegerValue(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getLastScreenUserStopBackup()I
    .registers 3

    const-string v0, "last_screen_where_user_stop_backup"

    const/4 v1, -0x1

    .line 524
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyIntegerValue(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getLastVVMStatus()Ljava/lang/String;
    .registers 3

    const-string/jumbo v0, "vvm_on_status"

    const-string v1, ""

    .line 691
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMaxSmallFileSize()I
    .registers 3

    const-string v0, "max_small_file_size"

    const/4 v1, 0x5

    .line 316
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyIntegerValue(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getMaxUploadFileSize()I
    .registers 3

    const-string v0, "max_upload_file_size"

    const/4 v1, 0x0

    .line 308
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyIntegerValue(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getMcsAccessToken()Ljava/lang/String;
    .registers 3

    const-string v0, "access_token"

    const-string v1, ""

    .line 260
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMcsAccessTokenExpireTime()J
    .registers 4

    const-string v0, "access_token_expire_time"

    const-wide/16 v1, 0x0

    .line 268
    invoke-direct {p0, v0, v1, v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyLongValue(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMcsAccountId()Ljava/lang/String;
    .registers 3

    const-string v0, "account_id"

    const-string v1, ""

    .line 372
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMcsAlias()Ljava/lang/String;
    .registers 3

    const-string v0, "alias"

    const-string v1, ""

    .line 380
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMcsRefreshToken()Ljava/lang/String;
    .registers 3

    const-string/jumbo v0, "refresh_token"

    const-string v1, ""

    .line 276
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMcsRefreshTokenExpireTime()J
    .registers 4

    const-string/jumbo v0, "refresh_token_expire_time"

    const-wide/16 v1, 0x0

    .line 284
    invoke-direct {p0, v0, v1, v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyLongValue(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMcsUser()I
    .registers 3

    const-string v0, "is_mcs_user"

    const/4 v1, -0x1

    .line 206
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyIntegerValue(Ljava/lang/String;I)I

    move-result v0

    .line 207
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->logMcsRegistrationStatus(I)V

    return v0
.end method

.method public getMigrateSuccessFlag()Z
    .registers 3

    .line 894
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->TAG:Ljava/lang/String;

    const-string v1, "getMigrateSuccessFlag "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mMigrateSuccessPreference:Landroid/content/SharedPreferences;

    const/4 v0, 0x0

    if-nez p0, :cond_d

    return v0

    :cond_d
    const-string v1, "is_imsi_fixed_for_att_database"

    .line 898
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getMmsRevokeTtlSecs()I
    .registers 3

    const-string v0, "mms_revoke_ttl_secs"

    const/4 v1, 0x0

    .line 348
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyIntegerValue(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getMsgStoreSessionId()Ljava/lang/String;
    .registers 3

    const-string v0, "msg_store_token"

    const-string v1, ""

    .line 546
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNcHost()Ljava/lang/String;
    .registers 3

    const-string v0, "nc_host"

    const-string v1, ""

    .line 716
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNetworkAvailableTime()J
    .registers 4

    const-string v0, "network_is_available_time"

    const-wide/16 v1, -0x1

    .line 880
    invoke-direct {p0, v0, v1, v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyLongValue(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNewUserOptInCase()I
    .registers 3

    .line 610
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->getId()I

    move-result v0

    const-string v1, "new_user_opt_in_case"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyIntegerValue(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getNmsHost()Ljava/lang/String;
    .registers 3

    const-string v0, "nms_host"

    const-string v1, ""

    .line 554
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOMACallBackURL()Ljava/lang/String;
    .registers 3

    const-string v0, "oma_callback_url"

    const-string v1, ""

    .line 740
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOMAChannelCreateTime()J
    .registers 4

    const-string v0, "oma_channel_create_lifetime"

    const-wide/16 v1, 0x0

    .line 804
    invoke-direct {p0, v0, v1, v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyLongValue(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOMAChannelLifeTime()J
    .registers 4

    const-string v0, "oma_channel_lifetime"

    const-wide/16 v1, 0x0

    .line 794
    invoke-direct {p0, v0, v1, v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyLongValue(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOMAChannelResURL()Ljava/lang/String;
    .registers 3

    const-string v0, "oma_channels_resources_url"

    const-string v1, ""

    .line 724
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOMAChannelURL()Ljava/lang/String;
    .registers 3

    const-string v0, "oma_channels_channel_url"

    const-string v1, ""

    .line 732
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOMASSubscriptionRestartToken()Ljava/lang/String;
    .registers 3

    const-string v0, "oma_subscription_restart_token"

    const/4 v1, 0x0

    .line 756
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOMASubscriptionChannelDuration()I
    .registers 3

    const-string v0, "oma_subscription_channel_duration"

    const/4 v1, 0x0

    .line 780
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyIntegerValue(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getOMASubscriptionIndex()J
    .registers 4

    const-string v0, "oma_subscription_index"

    const-wide/16 v1, 0x0

    .line 748
    invoke-direct {p0, v0, v1, v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyLongValue(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOMASubscriptionResUrl()Ljava/lang/String;
    .registers 3

    const-string v0, "oma_subscription_resurl"

    const-string v1, ""

    .line 812
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOMASubscriptionTime()J
    .registers 4

    const-string v0, "oma_subscription_time"

    const-wide/16 v1, 0x0

    .line 766
    invoke-direct {p0, v0, v1, v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyLongValue(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOasisAuthRoot()Ljava/lang/String;
    .registers 3

    const-string v0, "mcs_url"

    const-string v1, "https://rapi.rcsoasis.kr"

    .line 244
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValueOfUserDebug(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 245
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    return-object p0

    :cond_f
    return-object v1
.end method

.method public getOasisLargeFileServerRoot()Ljava/lang/String;
    .registers 3

    const-string v0, "oasis_large_file_server_root"

    const-string v1, ""

    .line 332
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOasisServerRoot()Ljava/lang/String;
    .registers 3

    const-string v0, "oasis_server_root"

    const-string v1, ""

    .line 252
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOasisServerVersion()Ljava/lang/String;
    .registers 3

    const-string v0, "oasis_server_version"

    const-string v1, "0.0.0"

    .line 340
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOasisSmallFileServerRoot()Ljava/lang/String;
    .registers 3

    const-string v0, "oasis_small_file_server_root"

    const-string v1, ""

    .line 324
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOmaRetryCounter()I
    .registers 3

    const-string v0, "oma_retry_count"

    const/4 v1, 0x0

    .line 816
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyIntegerValue(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getRedirectDomain()Ljava/lang/String;
    .registers 3

    const-string/jumbo v0, "redirect_domain"

    const-string v1, ""

    .line 570
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRegCode()Ljava/lang/String;
    .registers 3

    const-string/jumbo v0, "registration_code"

    const-string v1, ""

    .line 235
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRetryStackData()Ljava/lang/String;
    .registers 3

    const-string v0, "Retry_Stack"

    const-string v1, ""

    .line 683
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSimImsi()Ljava/lang/String;
    .registers 3

    const-string/jumbo v0, "sim_imsi"

    const-string v1, ""

    .line 427
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSmsRevokeTtlSecs()I
    .registers 3

    const-string/jumbo v0, "sms_revoke_ttl_secs"

    const/4 v1, 0x0

    .line 356
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyIntegerValue(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getTermConditionId()Ljava/lang/String;
    .registers 3

    const-string v0, "T&C"

    const-string v1, ""

    .line 402
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTotalRetryCounter()I
    .registers 3

    const-string/jumbo v0, "retry_total_counter"

    const/4 v1, 0x0

    .line 670
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyIntegerValue(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getUserCtn()Ljava/lang/String;
    .registers 3

    const-string/jumbo v0, "user_ctn_id"

    const-string v1, ""

    .line 452
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUserTbs()Z
    .registers 3

    const-string/jumbo v0, "tbs_required"

    const/4 v1, 0x0

    .line 435
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyBooleanValue(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getUserTelCtn()Ljava/lang/String;
    .registers 3

    .line 458
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserCtn()Ljava/lang/String;

    move-result-object v0

    .line 459
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mPhoneID:I

    invoke-static {v1, p0}, Lcom/sec/internal/ims/cmstore/utils/Util;->getSimCountryCode(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    .line 460
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 461
    invoke-static {v0, p0}, Lcom/sec/internal/ims/cmstore/utils/Util;->getNormalizedTelUri(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object p0

    if-eqz p0, :cond_1d

    .line 463
    invoke-virtual {p0}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1d
    const-string p0, ""

    return-object p0
.end method

.method public getValidPAT()Ljava/lang/String;
    .registers 7

    const-string v0, "cps_pat"

    const/4 v1, 0x0

    .line 580
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 582
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_24

    const-string v2, "pat_generate_time"

    .line 583
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {p0, v2, v3, v4}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyLongValue(Ljava/lang/String;J)J

    move-result-wide v2

    .line 584
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/32 v2, 0x48190800

    cmp-long p0, v4, v2

    if-gez p0, :cond_24

    return-object v0

    :cond_24
    return-object v1
.end method

.method public getZCodeLastRequestId(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string/jumbo v0, "zcode_last_request_id"

    .line 390
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hasShownPopupOptIn()Z
    .registers 3

    const-string v0, "has_shown_popup_opt_in"

    const/4 v1, 0x0

    .line 601
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyBooleanValue(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public hasUserDeleteAccount()Z
    .registers 4

    const-string/jumbo v0, "user_requested_delete_account"

    const/4 v1, 0x0

    .line 510
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    .line 511
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
    .registers 3

    const-string/jumbo v0, "user_opt_in_flag"

    const/4 v1, 0x0

    .line 593
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyBooleanValue(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public ifSteadyState()Z
    .registers 3

    const-string/jumbo v0, "steady_state_flag"

    const/4 v1, 0x0

    .line 662
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyBooleanValue(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public increaseUserInputNumberCount()V
    .registers 3

    const/4 v0, 0x0

    const-string v1, "count_user_input_phone_number"

    .line 474
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyIntegerValue(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 475
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyIntegerValue(Ljava/lang/String;I)V

    return-void
.end method

.method public increazeZCodeCounter()V
    .registers 3

    const/4 v0, 0x0

    const-string/jumbo v1, "zcode_counter"

    .line 491
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyIntegerValue(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 492
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyIntegerValue(Ljava/lang/String;I)V

    return-void
.end method

.method public initUserDebug()V
    .registers 8

    .line 903
    sget-object v0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mUserDebugPreference:Landroid/content/SharedPreferences;

    if-nez v0, :cond_c

    .line 904
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->TAG:Ljava/lang/String;

    const-string v0, "mUserDebugPreference is null failed to init"

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    const-string v1, "AMBS_DEBUG"

    const/4 v2, 0x0

    .line 907
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 908
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "debug preference :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_6c

    .line 910
    sget-object v0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mUserDebugPreference:Landroid/content/SharedPreferences;

    const-string v1, "app_id"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 911
    sget-object v1, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mUserDebugPreference:Landroid/content/SharedPreferences;

    const-string v3, "cps_host_name"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 912
    sget-object v3, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mUserDebugPreference:Landroid/content/SharedPreferences;

    const-string v4, "auth_host_name"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 913
    sget-object v4, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mUserDebugPreference:Landroid/content/SharedPreferences;

    const-string/jumbo v5, "retry_time"

    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 914
    sget-object v5, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mUserDebugPreference:Landroid/content/SharedPreferences;

    const-string v6, "nc_host_name"

    invoke-interface {v5, v6, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 915
    invoke-static {v0, v3, v1, v2}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 916
    sput-boolean v0, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->DEBUG_RETRY_TIMELINE_FLAG:Z

    .line 917
    invoke-static {v4}, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->setRetryTimeLine(Ljava/lang/String;)V

    .line 918
    sget-object v0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mUserDebugPreference:Landroid/content/SharedPreferences;

    const-string v1, "mcs_url"

    sget-object v2, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->DEBUG_MCS_URL:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->DEBUG_MCS_URL:Ljava/lang/String;

    goto :goto_74

    .line 920
    :cond_6c
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->initDefault()V

    .line 921
    sput-boolean v2, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->DEBUG_RETRY_TIMELINE_FLAG:Z

    .line 922
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->initRetryTimeLine()V

    .line 924
    :goto_74
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getOasisServerVersion()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->DEBUG_OASIS_VERSION:Ljava/lang/String;

    .line 925
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

    const-string v1, ", mcsUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->DEBUG_MCS_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", oasisVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->DEBUG_OASIS_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public isDebugEnable()Z
    .registers 3

    .line 850
    sget-object p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mUserDebugPreference:Landroid/content/SharedPreferences;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    :cond_6
    const-string v1, "AMBS_DEBUG"

    .line 853
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isEmptyPref()Z
    .registers 1

    .line 200
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz p0, :cond_11

    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    if-nez p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p0, 0x1

    :goto_12
    return p0
.end method

.method public isHUI6014Err()Z
    .registers 3

    const-string v0, "6014_err"

    const/4 v1, 0x0

    .line 650
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyBooleanValue(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isLastAPIRequestCreateAccount()Z
    .registers 3

    const-string v0, "last_api_create_service"

    const/4 v1, 0x0

    .line 619
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyBooleanValue(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isNoMoreChanceUserInputNumber()Z
    .registers 3

    const-string v0, "count_user_input_phone_number"

    const/4 v1, 0x0

    .line 485
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyIntegerValue(Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x2

    if-lt p0, v0, :cond_b

    const/4 v1, 0x1

    :cond_b
    return v1
.end method

.method public isZCodeMax2Tries()Z
    .registers 3

    const-string/jumbo v0, "zcode_counter"

    const/4 v1, 0x0

    .line 496
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyIntegerValue(Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-lt p0, v0, :cond_c

    move v1, v0

    :cond_c
    return v1
.end method

.method public logMcsRegistrationStatus(I)V
    .registers 3

    if-nez p1, :cond_a

    .line 218
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->TAG:Ljava/lang/String;

    const-string p1, "MCS registration : false"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c

    :cond_a
    const/4 v0, 0x1

    if-ne p1, v0, :cond_15

    .line 220
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->TAG:Ljava/lang/String;

    const-string p1, "MCS registration : true"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c

    .line 222
    :cond_15
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->TAG:Ljava/lang/String;

    const-string p1, "MCS registration : unknown"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1c
    return-void
.end method

.method public removeKey(Ljava/lang/String;)V
    .registers 5

    .line 145
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remove key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getPrefEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 147
    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 148
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public removeUserInputNumberCount()V
    .registers 2

    .line 479
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getPrefEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "count_user_input_phone_number"

    .line 480
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 481
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public removeZCodeCounter()V
    .registers 2

    .line 500
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getPrefEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string/jumbo v0, "zcode_counter"

    .line 501
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 502
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public saveAMBSPauseService(Z)V
    .registers 5

    .line 638
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveAMBSPauseService :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ambs_pause_service"

    .line 639
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyBooleanValue(Ljava/lang/String;Z)V

    return-void
.end method

.method public saveAMBSStopService(Z)V
    .registers 5

    .line 627
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveAMBSStopService :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ambs_stop_service"

    .line 628
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyBooleanValue(Ljava/lang/String;Z)V

    return-void
.end method

.method public saveAcsNmsHost(Ljava/lang/String;)V
    .registers 3

    const-string v0, "acs_nms_host"

    .line 558
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveAppVer(Ljava/lang/String;)V
    .registers 3

    const-string v0, "app_ver"

    .line 398
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveAtsToken(Ljava/lang/String;)V
    .registers 3

    const-string v0, "ats_token"

    .line 532
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveAuthCode(Ljava/lang/String;)V
    .registers 3

    const-string v0, "authentication_code"

    .line 231
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveAuthZCode(Ljava/lang/String;)V
    .registers 3

    const-string v0, "auth_zcode"

    .line 410
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveBufferDbLoaded(Z)V
    .registers 3

    const-string v0, "buffer_db_loaded"

    .line 828
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyBooleanValue(Ljava/lang/String;Z)V

    return-void
.end method

.method public saveCmsDataTtl(I)V
    .registers 3

    const-string v0, "cms_data_ttl"

    .line 296
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyIntegerValue(Ljava/lang/String;I)V

    return-void
.end method

.method public saveDeviceId(Ljava/lang/String;)V
    .registers 3

    const-string v0, "device_id"

    .line 832
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveFcmRegistrationToken(Ljava/lang/String;)V
    .registers 3

    const-string v0, "fcm_registration_token"

    .line 368
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveFcmSenderId(Ljava/lang/String;)V
    .registers 3

    const-string v0, "fcm_sender_id"

    .line 304
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveIfHUI6014Err(Z)V
    .registers 3

    const-string v0, "6014_err"

    .line 654
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyBooleanValue(Ljava/lang/String;Z)V

    return-void
.end method

.method public saveIfHasShownPopupOptIn(Z)V
    .registers 3

    const-string v0, "has_shown_popup_opt_in"

    .line 605
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyBooleanValue(Ljava/lang/String;Z)V

    return-void
.end method

.method public saveIfSteadyState(Z)V
    .registers 3

    const-string/jumbo v0, "steady_state_flag"

    .line 658
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyBooleanValue(Ljava/lang/String;Z)V

    return-void
.end method

.method public saveInitialSyncStatus(I)V
    .registers 3

    const-string v0, "initial sync status"

    .line 701
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyIntegerValue(Ljava/lang/String;I)V

    return-void
.end method

.method public saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 152
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "save key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getPrefEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 154
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 155
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public saveLastApiRequestCreateAccount(Z)V
    .registers 3

    const-string v0, "last_api_create_service"

    .line 623
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyBooleanValue(Ljava/lang/String;Z)V

    return-void
.end method

.method public saveLastRetryTime(J)V
    .registers 4

    const-string v0, "last retry time"

    .line 679
    invoke-direct {p0, v0, p1, p2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyLongValue(Ljava/lang/String;J)V

    return-void
.end method

.method public saveLastScreen(I)V
    .registers 3

    const-string v0, "last_screen"

    .line 520
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyIntegerValue(Ljava/lang/String;I)V

    return-void
.end method

.method public saveLastScreenUserStopBackup(I)V
    .registers 3

    const-string v0, "last_screen_where_user_stop_backup"

    .line 528
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyIntegerValue(Ljava/lang/String;I)V

    return-void
.end method

.method public saveLastVVMStatus(Ljava/lang/String;)V
    .registers 3

    const-string/jumbo v0, "vvm_on_status"

    .line 687
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveMaxSmallFileSize(I)V
    .registers 3

    const-string v0, "max_small_file_size"

    .line 320
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyIntegerValue(Ljava/lang/String;I)V

    return-void
.end method

.method public saveMaxUploadFileSize(I)V
    .registers 3

    const-string v0, "max_upload_file_size"

    .line 312
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyIntegerValue(Ljava/lang/String;I)V

    return-void
.end method

.method public saveMcsAccessToken(Ljava/lang/String;)V
    .registers 3

    const-string v0, "access_token"

    .line 264
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveMcsAccessTokenExpireTime(J)V
    .registers 4

    const-string v0, "access_token_expire_time"

    .line 272
    invoke-direct {p0, v0, p1, p2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyLongValue(Ljava/lang/String;J)V

    return-void
.end method

.method public saveMcsAccountId(Ljava/lang/String;)V
    .registers 3

    const-string v0, "account_id"

    .line 376
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveMcsAlias(Ljava/lang/String;)V
    .registers 3

    const-string v0, "alias"

    .line 384
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveMcsRefreshToken(Ljava/lang/String;)V
    .registers 3

    const-string/jumbo v0, "refresh_token"

    .line 280
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveMcsRefreshTokenExpireTime(J)V
    .registers 4

    const-string/jumbo v0, "refresh_token_expire_time"

    .line 288
    invoke-direct {p0, v0, p1, p2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyLongValue(Ljava/lang/String;J)V

    return-void
.end method

.method public saveMcsUser(I)V
    .registers 3

    .line 212
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->logMcsRegistrationStatus(I)V

    const-string v0, "is_mcs_user"

    .line 213
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyIntegerValue(Ljava/lang/String;I)V

    return-void
.end method

.method public saveMigrateSuccessFlag(Z)V
    .registers 5

    .line 884
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveMigrateSuccess is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mMigrateSuccessPreference:Landroid/content/SharedPreferences;

    if-nez p0, :cond_1c

    return-void

    .line 888
    :cond_1c
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "is_imsi_fixed_for_att_database"

    .line 889
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 890
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public saveMmsRevokeTtlSecs(I)V
    .registers 3

    const-string v0, "mms_revoke_ttl_secs"

    .line 352
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyIntegerValue(Ljava/lang/String;I)V

    return-void
.end method

.method public saveMsgStoreSessionId(Ljava/lang/String;)V
    .registers 3

    const-string v0, "msg_store_token"

    .line 542
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveNativeMsgAppIsDefault(Z)V
    .registers 3

    const-string v0, "is_native_message_app_default"

    .line 666
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyBooleanValue(Ljava/lang/String;Z)V

    return-void
.end method

.method public saveNcHost(Ljava/lang/String;)V
    .registers 3

    const-string v0, "nc_host"

    .line 712
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveNetworkAvailableTime(J)V
    .registers 5

    .line 875
    new-instance v0, Landroid/icu/text/SimpleDateFormat;

    const-string v1, "YYYY-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v0, "network_is_available_time"

    .line 876
    invoke-direct {p0, v0, p1, p2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyLongValue(Ljava/lang/String;J)V

    return-void
.end method

.method public saveNewUserOptInCase(I)V
    .registers 3

    const-string v0, "new_user_opt_in_case"

    .line 614
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyIntegerValue(Ljava/lang/String;I)V

    return-void
.end method

.method public saveNmsHost(Ljava/lang/String;)V
    .registers 3

    const-string v0, "nms_host"

    .line 550
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveOMACallBackURL(Ljava/lang/String;)V
    .registers 3

    const-string v0, "oma_callback_url"

    .line 736
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveOMAChannelCreateTime(J)V
    .registers 4

    const-string v0, "oma_channel_create_lifetime"

    .line 799
    invoke-direct {p0, v0, p1, p2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyLongValue(Ljava/lang/String;J)V

    return-void
.end method

.method public saveOMAChannelLifeTime(J)V
    .registers 4

    const-string v0, "oma_channel_lifetime"

    .line 789
    invoke-direct {p0, v0, p1, p2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyLongValue(Ljava/lang/String;J)V

    return-void
.end method

.method public saveOMAChannelResURL(Ljava/lang/String;)V
    .registers 3

    const-string v0, "oma_channels_resources_url"

    .line 720
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveOMAChannelURL(Ljava/lang/String;)V
    .registers 3

    const-string v0, "oma_channels_channel_url"

    .line 728
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveOMASubscriptionChannelDuration(I)V
    .registers 3

    const-string v0, "oma_subscription_channel_duration"

    .line 775
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyIntegerValue(Ljava/lang/String;I)V

    return-void
.end method

.method public saveOMASubscriptionIndex(J)V
    .registers 4

    const-string v0, "oma_subscription_index"

    .line 744
    invoke-direct {p0, v0, p1, p2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyLongValue(Ljava/lang/String;J)V

    return-void
.end method

.method public saveOMASubscriptionResUrl(Ljava/lang/String;)V
    .registers 3

    const-string v0, "oma_subscription_resurl"

    .line 808
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveOMASubscriptionRestartToken(Ljava/lang/String;)V
    .registers 3

    const-string v0, "oma_subscription_restart_token"

    .line 752
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveOMASubscriptionTime(J)V
    .registers 4

    const-string v0, "oma_subscription_time"

    .line 761
    invoke-direct {p0, v0, p1, p2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyLongValue(Ljava/lang/String;J)V

    return-void
.end method

.method public saveOasisLargeFileServerRoot(Ljava/lang/String;)V
    .registers 3

    const-string v0, "oasis_large_file_server_root"

    .line 336
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveOasisServerRoot(Ljava/lang/String;)V
    .registers 3

    const-string v0, "oasis_server_root"

    .line 256
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveOasisServerVersion(Ljava/lang/String;)V
    .registers 3

    const-string v0, "oasis_server_version"

    .line 344
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveOasisSmallFileServerRoot(Ljava/lang/String;)V
    .registers 3

    const-string v0, "oasis_small_file_server_root"

    .line 328
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveObjectSearchCursor(Ljava/lang/String;)V
    .registers 3

    const-string v0, "object_search_cursor"

    .line 707
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveOmaRetryCounter(I)V
    .registers 3

    const-string v0, "oma_retry_count"

    .line 820
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyIntegerValue(Ljava/lang/String;I)V

    return-void
.end method

.method public savePATAndTime(Ljava/lang/String;)V
    .registers 4

    const-string v0, "cps_pat"

    .line 574
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "pat_generate_time"

    .line 575
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyLongValue(Ljava/lang/String;J)V

    return-void
.end method

.method public saveRedirectDomain(Ljava/lang/String;)V
    .registers 3

    const-string/jumbo v0, "redirect_domain"

    .line 566
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveRegCode(Ljava/lang/String;)V
    .registers 3

    const-string/jumbo v0, "registration_code"

    .line 239
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveRetryStackData(Ljava/lang/String;)V
    .registers 3

    const-string v0, "Retry_Stack"

    .line 696
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveSimImsi(Ljava/lang/String;)V
    .registers 3

    .line 419
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const-string/jumbo v0, "sim_imsi"

    .line 422
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveSmsRevokeTtlSecs(I)V
    .registers 3

    const-string/jumbo v0, "sms_revoke_ttl_secs"

    .line 360
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyIntegerValue(Ljava/lang/String;I)V

    return-void
.end method

.method public saveTermConditionId(Ljava/lang/String;)V
    .registers 3

    const-string v0, "T&C"

    .line 406
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveTotalRetryCounter(I)V
    .registers 3

    const-string/jumbo v0, "retry_total_counter"

    .line 675
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyIntegerValue(Ljava/lang/String;I)V

    return-void
.end method

.method public saveUserCtn(Ljava/lang/String;Z)V
    .registers 4

    .line 439
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const-string/jumbo v0, "user_ctn_id"

    .line 442
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "is_user_input_ctn"

    .line 443
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyBooleanValue(Ljava/lang/String;Z)V

    return-void
.end method

.method public saveUserDebug()V
    .registers 3

    .line 931
    sget-object v0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mUserDebugPreference:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1d

    .line 932
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

    .line 935
    :cond_1d
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "AMBS_DEBUG"

    .line 936
    sget-boolean v1, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->DEBUG_RETRY_TIMELINE_FLAG:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "app_id"

    .line 937
    sget-object v1, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->APP_ID:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "cps_host_name"

    .line 938
    sget-object v1, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->CPS_HOST_NAME:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "auth_host_name"

    .line 939
    sget-object v1, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->ACMS_HOST_NAME:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v0, "retry_time"

    .line 940
    sget-object v1, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->debugRetryTimeLine:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "nc_host_name"

    .line 941
    sget-object v1, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->DEFAULT_PRODUCT_NC_HOST:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "mcs_url"

    .line 942
    sget-object v1, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->DEBUG_MCS_URL:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "oasis_version"

    .line 943
    sget-object v1, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->DEBUG_OASIS_VERSION:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 944
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public saveUserDeleteAccount(Z)V
    .registers 3

    const-string/jumbo v0, "user_requested_delete_account"

    .line 506
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyBooleanValue(Ljava/lang/String;Z)V

    return-void
.end method

.method public saveUserOptedIn(Z)V
    .registers 3

    const-string/jumbo v0, "user_opt_in_flag"

    .line 597
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyBooleanValue(Ljava/lang/String;Z)V

    return-void
.end method

.method public saveUserTbsRquired(Z)V
    .registers 3

    const-string/jumbo v0, "tbs_required"

    .line 431
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyBooleanValue(Ljava/lang/String;Z)V

    return-void
.end method

.method public saveZCodeLastRequestId(Ljava/lang/String;)V
    .registers 3

    const-string/jumbo v0, "zcode_last_request_id"

    .line 394
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
