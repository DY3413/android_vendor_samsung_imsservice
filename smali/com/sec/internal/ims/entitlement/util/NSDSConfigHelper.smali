.class public Lcom/sec/internal/ims/entitlement/util/NSDSConfigHelper;
.super Ljava/lang/Object;
.source "NSDSConfigHelper.java"


# static fields
.field public static final KEY_CONFIG_REFRESH_ON_POWERUP:Ljava/lang/String; = "configRefreshOnPowerUp"

.field public static final KEY_GCM_EVT_LST_MSG_SENDER_ID:Ljava/lang/String; = "GCM_Sender_ID_Event_List"

.field public static final KEY_GCM_PUSH_MSG_SENDER_ID:Ljava/lang/String; = "GCM_Sender_ID"

.field public static final KEY_URL_ENTITLEMENT_SERVER:Ljava/lang/String; = "entitlement_server_FQDN"

.field private static final LOG_TAG:Ljava/lang/String; = "NSDSConfigHelper"

.field private static sDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/entitlement/util/NSDSConfigHelper;->sDataMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addDerivedConfigToMap()V
    .locals 4

    .line 57
    sget-object v0, Lcom/sec/internal/ims/entitlement/util/NSDSConfigHelper;->sDataMap:Ljava/util/Map;

    const-string v1, "entitlement_server_FQDN"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v2, "generic_devices"

    .line 59
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 60
    sget-object v2, Lcom/sec/internal/ims/entitlement/util/NSDSConfigHelper;->sDataMap:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/generic_devices"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static declared-synchronized clear()V
    .locals 2

    const-class v0, Lcom/sec/internal/ims/entitlement/util/NSDSConfigHelper;

    monitor-enter v0

    .line 32
    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/entitlement/util/NSDSConfigHelper;->sDataMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getAllowedGid(I)Ljava/lang/String;
    .locals 2

    const-string v0, "allowed_gid_for_devoceconfig"

    const-string v1, ""

    .line 129
    invoke-static {p0, v0, v1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getBooleanValue(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    .line 95
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "1"

    .line 96
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, p0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 99
    sget-object v2, Lcom/sec/internal/ims/entitlement/util/NSDSConfigHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid confifg value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0
.end method

.method public static getConfigRefreshOnPowerUp(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "configRefreshOnPowerUp"

    const-string v1, "0"

    .line 89
    invoke-static {p0, p1, v0, v1}, Lcom/sec/internal/ims/entitlement/util/NSDSConfigHelper;->getConfigValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/internal/ims/entitlement/util/NSDSConfigHelper;->getBooleanValue(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static getConfigServer(I)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "support_configserver"

    const-string v1, ""

    .line 119
    invoke-static {p0, v0, v1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized getConfigValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/sec/internal/ims/entitlement/util/NSDSConfigHelper;

    monitor-enter v0

    .line 36
    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/entitlement/util/NSDSConfigHelper;->sDataMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    invoke-static {p0, p1}, Lcom/sec/internal/ims/entitlement/util/NSDSConfigHelper;->loadConfigFromDb(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    .line 38
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 39
    sget-object p1, Lcom/sec/internal/ims/entitlement/util/NSDSConfigHelper;->sDataMap:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 40
    invoke-static {}, Lcom/sec/internal/ims/entitlement/util/NSDSConfigHelper;->addDerivedConfigToMap()V

    .line 44
    :cond_0
    sget-object p0, Lcom/sec/internal/ims/entitlement/util/NSDSConfigHelper;->sDataMap:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getConfigValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-class v0, Lcom/sec/internal/ims/entitlement/util/NSDSConfigHelper;

    monitor-enter v0

    .line 48
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/entitlement/util/NSDSConfigHelper;->getConfigValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p3, p0

    .line 52
    :goto_0
    monitor-exit v0

    return-object p3

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static isUserUnlocked(Landroid/content/Context;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 106
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    .line 107
    invoke-virtual {p0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 111
    :cond_0
    sget-object p0, Lcom/sec/internal/ims/entitlement/util/NSDSConfigHelper;->LOG_TAG:Ljava/lang/String;

    const-string v0, "context is null"

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :cond_1
    sget-object p0, Lcom/sec/internal/ims/entitlement/util/NSDSConfigHelper;->LOG_TAG:Ljava/lang/String;

    const-string v0, "User is lock"

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static isWFCAutoOnEnabled(I)Z
    .locals 2

    const-string/jumbo v0, "wfc_auto_on"

    const/4 v1, 0x0

    .line 124
    invoke-static {p0, v0, v1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method protected static loadConfigFromDb(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    const-string v1, "pname"

    const-string v2, "pvalue"

    .line 68
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "imsi = ?"

    const/4 v1, 0x1

    new-array v7, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v7, v2

    .line 71
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$NsdsConfigs;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    .line 74
    :goto_0
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 75
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 76
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 77
    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v4, Lcom/sec/internal/ims/entitlement/util/NSDSConfigHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Key:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Value:"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 71
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_3
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1

    :cond_0
    if-eqz p0, :cond_1

    .line 81
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 83
    sget-object p1, Lcom/sec/internal/ims/entitlement/util/NSDSConfigHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!!!Could not load nsds config from db"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_2
    return-object v0
.end method
