.class public Lcom/sec/internal/ims/entitlement/util/SimSwapNSDSConfigHelper;
.super Lcom/sec/internal/ims/entitlement/util/NSDSConfigHelper;
.source "SimSwapNSDSConfigHelper.java"


# static fields
.field public static final KEY_NATIVE_MSISDN:Ljava/lang/String; = "NATIVE_MSISDN"

.field private static final LOG_TAG:Ljava/lang/String; = "SimSwapNSDSConfigHelper"

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
    .registers 1

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/entitlement/util/SimSwapNSDSConfigHelper;->sDataMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/util/NSDSConfigHelper;-><init>()V

    return-void
.end method

.method private static addDerivedConfigToMap()V
    .registers 4

    .line 37
    sget-object v0, Lcom/sec/internal/ims/entitlement/util/SimSwapNSDSConfigHelper;->sDataMap:Ljava/util/Map;

    const-string v1, "entitlement_server_FQDN"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2a

    const-string v2, "generic_devices"

    .line 39
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 40
    sget-object v2, Lcom/sec/internal/ims/entitlement/util/SimSwapNSDSConfigHelper;->sDataMap:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/generic_devices"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2a
    return-void
.end method

.method public static declared-synchronized clear()V
    .registers 2

    const-class v0, Lcom/sec/internal/ims/entitlement/util/SimSwapNSDSConfigHelper;

    monitor-enter v0

    .line 32
    :try_start_3
    sget-object v1, Lcom/sec/internal/ims/entitlement/util/SimSwapNSDSConfigHelper;->sDataMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    .line 33
    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getConfigValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-class v0, Lcom/sec/internal/ims/entitlement/util/SimSwapNSDSConfigHelper;

    monitor-enter v0

    .line 20
    :try_start_3
    sget-object v1, Lcom/sec/internal/ims/entitlement/util/SimSwapNSDSConfigHelper;->sDataMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 21
    invoke-static {p0}, Lcom/sec/internal/ims/entitlement/util/SimSwapNSDSConfigHelper;->loadConfigFromDb(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p0

    .line 22
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 23
    sget-object v1, Lcom/sec/internal/ims/entitlement/util/SimSwapNSDSConfigHelper;->sDataMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 24
    invoke-static {}, Lcom/sec/internal/ims/entitlement/util/SimSwapNSDSConfigHelper;->addDerivedConfigToMap()V

    .line 28
    :cond_1d
    sget-object p0, Lcom/sec/internal/ims/entitlement/util/SimSwapNSDSConfigHelper;->sDataMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_27

    monitor-exit v0

    return-object p0

    :catchall_27
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static loadConfigFromDb(Landroid/content/Context;)Ljava/util/Map;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x2

    :try_start_6
    new-array v4, v1, [Ljava/lang/String;

    const-string v1, "pname"

    const/4 v8, 0x0

    aput-object v1, v4, v8

    const-string/jumbo v1, "pvalue"

    const/4 v9, 0x1

    aput-object v1, v4, v9

    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$SimSwapNsdsConfigs;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_20
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_20} :catch_62

    if-eqz p0, :cond_5c

    .line 53
    :goto_22
    :try_start_22
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 54
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 55
    invoke-interface {p0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 56
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v3, Lcom/sec/internal/ims/entitlement/util/SimSwapNSDSConfigHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Key:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Value:"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_51
    .catchall {:try_start_22 .. :try_end_51} :catchall_52

    goto :goto_22

    :catchall_52
    move-exception v1

    .line 50
    :try_start_53
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_57

    goto :goto_5b

    :catchall_57
    move-exception p0

    :try_start_58
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5b
    throw v1

    :cond_5c
    if-eqz p0, :cond_7d

    .line 60
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_61
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_58 .. :try_end_61} :catch_62

    goto :goto_7d

    :catch_62
    move-exception p0

    .line 62
    sget-object v1, Lcom/sec/internal/ims/entitlement/util/SimSwapNSDSConfigHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!!!Could not load nsds config from db"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7d
    :goto_7d
    return-object v0
.end method
