.class public Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;
.super Landroid/content/ContentProvider;
.source "EntitlementConfigProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final CREATE_DEVICE_CONFIG_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS entitlement_config(_id INTEGER PRIMARY KEY AUTOINCREMENT,version TEXT, imsi TEXT NOT NULL, device_config TEXT,backup_version TEXT,validity TEXT,next_config_time TEXT,token TEXT,completed TEXT,tc_popup_user_accept TEXT);"

.field private static final DATABASE_NAME:Ljava/lang/String; = "entitlement_config.db"

.field private static final DATABASE_VERSION:I = 0x1

.field private static final DEFAULT_SIM_SLOT_IDX:I = 0x0

.field private static final DEVICE_CONFIG_TABLE:Ljava/lang/String; = "entitlement_config"

.field private static final ENTITLEMENT_FORCE_UPDATE_EXPIRATION_TIME:J = 0x493e0L

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final PROVIDER_NAME:Ljava/lang/String; = "com.samsung.ims.entitlementconfig.provider"

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private configUpdateDate:Ljava/util/Date;

.field protected mContext:Landroid/content/Context;

.field private mDatabaseHelper:Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$DatabaseHelper;

.field protected mService:Landroid/os/Messenger;

.field private mSvcConn:Landroid/content/ServiceConnection;


# direct methods
.method static bridge synthetic -$$Nest$fputmDatabaseHelper(Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$DatabaseHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$DatabaseHelper;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 39
    const-class v0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->LOG_TAG:Ljava/lang/String;

    .line 50
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.samsung.ims.entitlementconfig.provider"

    const-string v2, "config"

    const/4 v3, 0x1

    .line 74
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "config/xpath"

    const/4 v3, 0x3

    .line 75
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "config/jansky_config"

    const/4 v3, 0x2

    .line 76
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "config/rcs_config"

    const/4 v3, 0x4

    .line 77
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "config/force_update"

    const/4 v3, 0x5

    .line 78
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "config/entitlement_url"

    const/4 v3, 0x6

    .line 79
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "reconnect_db"

    const/4 v3, 0x7

    .line 80
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "binding_service"

    const/16 v3, 0x8

    .line 81
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "config/tag"

    const/16 v3, 0x9

    .line 82
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mContext:Landroid/content/Context;

    .line 48
    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$DatabaseHelper;

    .line 58
    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->configUpdateDate:Ljava/util/Date;

    return-void
.end method

.method private NotifyDeleteDb()V
    .locals 3

    .line 241
    :try_start_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0xca

    .line 242
    iput v1, v0, Landroid/os/Message;->what:I

    .line 243
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mService:Landroid/os/Messenger;

    invoke-virtual {p0, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 245
    sget-object v0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NotifyDeleteDb: failed to request"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private declared-synchronized connectToEntitlementConfigService()V
    .locals 5

    monitor-enter p0

    .line 426
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->LOG_TAG:Ljava/lang/String;

    const-string v1, "connectToEntitlementConfigService()"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.imsservice"

    const-string v2, "com.sec.internal.ims.entitlement.config.EntitlementConfigService"

    .line 440
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 441
    new-instance v1, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$1;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$1;-><init>(Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;)V

    iput-object v1, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mSvcConn:Landroid/content/ServiceConnection;

    .line 458
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mSvcConn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    sget-object v4, Lcom/sec/ims/extensions/ContextExt;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-static {v1, v0, v2, v3, v4}, Lcom/sec/ims/extensions/ContextExt;->bindServiceAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 459
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getJanskyConfigXmlBlock()Landroid/database/Cursor;
    .locals 1

    const-string v0, "//janskyConfig"

    .line 382
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->getXmlConfigByTag(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method private getNsdsElementsWithXPath(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 12

    .line 348
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    const-string/jumbo v4, "tag_name"

    .line 350
    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 351
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 352
    sget-object p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Empty tag name. Return null"

    invoke-static {p0, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 366
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v3

    :cond_0
    :try_start_2
    const-string v4, "device_config"

    .line 355
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v7

    .line 356
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/sec/internal/constants/ims/entitilement/EntitlementConfigContract$DeviceConfig;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p0, :cond_1

    .line 357
    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 358
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v3, p0

    move-object p0, p1

    goto/16 :goto_4

    :catch_0
    move-exception v4

    move-object v11, p1

    move-object p1, p0

    move-object p0, v4

    move-object v4, v11

    goto :goto_1

    :cond_1
    :goto_0
    if-eqz p0, :cond_2

    .line 364
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 366
    :cond_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :catch_1
    move-exception p0

    move-object v4, p1

    move-object p1, v3

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_2
    move-exception p0

    move-object p1, v3

    move-object v4, p1

    .line 361
    :goto_1
    :try_start_4
    sget-object v5, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SQL exception while parseDeviceConfig "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz p1, :cond_3

    .line 364
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 366
    :cond_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object p1, v4

    .line 369
    :goto_2
    new-instance p0, Landroid/database/MatrixCursor;

    const-string v0, "element_name"

    const-string v1, "element_value"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v3, :cond_4

    .line 371
    invoke-static {v3, p1}, Lcom/sec/internal/ims/entitlement/util/ConfigElementExtractor;->getAllElements(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 372
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    aput-object v1, v3, v2

    const/4 v4, 0x1

    .line 373
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, v3, v4

    invoke-virtual {p0, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_3

    .line 376
    :cond_4
    sget-object p1, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Device Config is null: "

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-object p0

    :catchall_2
    move-exception p0

    move-object v3, p1

    :goto_4
    if-eqz v3, :cond_6

    .line 364
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 366
    :cond_6
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 367
    throw p0
.end method

.method private getRcsConfigXmlBlock()Landroid/database/Cursor;
    .locals 1

    const-string v0, "//RCSConfig/wap-provisioningdoc|//wap-provisioningdoc"

    .line 386
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->getXmlConfigByTag(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method private getXmlConfigByTag(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "device_config"

    .line 402
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v5

    .line 403
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/ims/entitilement/EntitlementConfigContract$DeviceConfig;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 404
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 405
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz p0, :cond_1

    .line 411
    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_1
    move-exception v2

    move-object p0, v1

    .line 408
    :goto_2
    :try_start_2
    sget-object v3, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SQL exception while parseDeviceConfig "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p0, :cond_1

    goto :goto_1

    .line 415
    :cond_1
    :goto_3
    new-instance p0, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "xml_config"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v1, :cond_2

    .line 417
    invoke-static {v1, p1}, Lcom/sec/internal/ims/entitlement/util/CompleteXMLBlockExtractor;->getXmlBlockForElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v0

    .line 418
    invoke-virtual {p0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_4

    .line 420
    :cond_2
    sget-object p1, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Device Config is null: "

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return-object p0

    :catchall_1
    move-exception p1

    move-object v1, p0

    :goto_5
    if-eqz v1, :cond_3

    .line 411
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 413
    :cond_3
    throw p1
.end method

.method private getXmlConfigbyTagUri(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 1

    const-string/jumbo v0, "tag_name"

    .line 390
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 391
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    sget-object p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Empty tag name. Return null"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 395
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->getXmlConfigByTag(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method private insertDeviceConfig(Landroid/content/ContentValues;)J
    .locals 5

    .line 170
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$DatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 171
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-wide/16 v0, -0x1

    :try_start_0
    const-string v2, "entitlement_config"

    const/4 v3, 0x0

    .line 174
    invoke-virtual {p0, v2, v3, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 175
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    :goto_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 177
    :try_start_1
    sget-object v2, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not insert into device_config table:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-wide v0

    .line 179
    :goto_2
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 180
    throw p1
.end method

.method private updateDeviceConfig(Landroid/content/ContentValues;)I
    .locals 4

    .line 191
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$DatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 192
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "entitlement_config"

    const/4 v2, 0x0

    .line 195
    invoke-virtual {p0, v1, p1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 196
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    :goto_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 198
    :try_start_1
    sget-object v1, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not update connectivity_parameters table:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return v0

    .line 200
    :goto_2
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 201
    throw p1
.end method

.method private updateEntitlementUrl(Landroid/net/Uri;)V
    .locals 3

    const-string v0, "entitlement_url"

    .line 225
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 228
    :try_start_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0xc9

    .line 229
    iput v1, v0, Landroid/os/Message;->what:I

    .line 230
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "URL"

    .line 231
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 233
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mService:Landroid/os/Messenger;

    invoke-virtual {p0, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 235
    sget-object p1, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateEntitlementUrl: failed to request"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    .line 110
    sget-object v0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$DatabaseHelper;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/util/NSDSConfigHelper;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_4

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$DatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 119
    :try_start_0
    sget-object v2, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    goto :goto_0

    .line 122
    :cond_1
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->NotifyDeleteDb()V

    const-string p0, "entitlement_config"

    .line 123
    invoke-virtual {v0, p0, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 128
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :goto_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 130
    :try_start_1
    sget-object p1, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Could not delete:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    return v1

    .line 132
    :goto_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 133
    throw p0

    :cond_2
    :goto_4
    return v1
.end method

.method public forceConfigUpdate()V
    .locals 4

    .line 206
    sget-object v0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->LOG_TAG:Ljava/lang/String;

    const-string v1, "forceConfigUpdate()"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->configUpdateDate:Ljava/util/Date;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 211
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->configUpdateDate:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x493e0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 213
    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->configUpdateDate:Ljava/util/Date;

    .line 214
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x6c

    .line 215
    iput v1, v0, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    .line 216
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 217
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mService:Landroid/os/Messenger;

    invoke-virtual {p0, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 219
    sget-object v0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not force update config"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3

    .line 144
    sget-object v0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insert:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$DatabaseHelper;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/util/NSDSConfigHelper;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 150
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 152
    :cond_1
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->insertDeviceConfig(Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 153
    invoke-static {v0, v1}, Lcom/sec/internal/constants/ims/entitilement/EntitlementConfigContract$DeviceConfig;->buildDeviceConfigUri(J)Landroid/net/Uri;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    .line 159
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->notifyChange(Landroid/net/Uri;)V

    :cond_2
    :goto_1
    return-object v1
.end method

.method public notifyChange(Landroid/net/Uri;)V
    .locals 1

    .line 165
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onCreate()Z
    .locals 1

    .line 251
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 252
    invoke-virtual {v0}, Landroid/content/Context;->createCredentialProtectedStorageContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mContext:Landroid/content/Context;

    const/4 p0, 0x1

    return p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10

    .line 258
    sget-object v0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "query "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$DatabaseHelper;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/util/NSDSConfigHelper;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$DatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 265
    new-instance v2, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v2}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 266
    sget-object v0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v4, 0x1

    if-eq v0, v4, :cond_5

    const/4 p2, 0x2

    if-eq v0, p2, :cond_4

    const/4 p2, 0x3

    if-eq v0, p2, :cond_3

    const/4 p2, 0x4

    if-eq v0, p2, :cond_2

    const/16 p2, 0x9

    if-eq v0, p2, :cond_1

    goto :goto_0

    .line 281
    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->getXmlConfigbyTagUri(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0

    .line 278
    :cond_2
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->getRcsConfigXmlBlock()Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0

    .line 272
    :cond_3
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->getNsdsElementsWithXPath(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0

    .line 275
    :cond_4
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->getJanskyConfigXmlBlock()Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0

    :cond_5
    const-string p0, "entitlement_config"

    .line 268
    invoke-virtual {v2, p0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v9, p5

    .line 269
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :cond_6
    :goto_0
    return-object v1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    .line 291
    sget-object p3, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->LOG_TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "update "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    sget-object p4, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {p4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    const-string p1, "Binding to EntitlementConfigService"

    .line 295
    invoke-static {p3, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->connectToEntitlementConfigService()V

    return v1

    .line 300
    :cond_0
    invoke-virtual {p4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v2, 0x7

    if-ne v0, v2, :cond_2

    const-string p1, "Reconnect DB for DatabaseHelper"

    .line 301
    invoke-static {p3, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$DatabaseHelper;

    if-eqz p1, :cond_1

    const-string p1, "Reconnect DB after closing the previous DB"

    .line 303
    invoke-static {p3, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$DatabaseHelper;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 306
    :cond_1
    new-instance p1, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$DatabaseHelper;

    iget-object p2, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$DatabaseHelper;

    return v1

    .line 310
    :cond_2
    iget-object p3, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$DatabaseHelper;

    if-eqz p3, :cond_8

    iget-object p3, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mContext:Landroid/content/Context;

    invoke-static {p3}, Lcom/sec/internal/ims/entitlement/util/NSDSConfigHelper;->isUserUnlocked(Landroid/content/Context;)Z

    move-result p3

    if-nez p3, :cond_3

    goto :goto_4

    .line 314
    :cond_3
    iget-object p3, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$DatabaseHelper;

    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p3

    .line 315
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 317
    :try_start_0
    invoke-virtual {p4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p4

    const/4 v0, 0x1

    if-eq p4, v0, :cond_6

    const/4 p2, 0x5

    if-eq p4, p2, :cond_5

    const/4 p2, 0x6

    if-eq p4, p2, :cond_4

    goto :goto_0

    .line 325
    :cond_4
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->updateEntitlementUrl(Landroid/net/Uri;)V

    goto :goto_0

    .line 322
    :cond_5
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->forceConfigUpdate()V

    goto :goto_0

    .line 319
    :cond_6
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->updateDeviceConfig(Landroid/content/ContentValues;)I

    move-result v1

    .line 330
    :goto_0
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    :goto_1
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p2

    .line 332
    :try_start_1
    sget-object p4, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not update table:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p4, p2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    if-eqz v1, :cond_7

    .line 338
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->notifyChange(Landroid/net/Uri;)V

    :cond_7
    return v1

    .line 334
    :goto_3
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 335
    throw p0

    :cond_8
    :goto_4
    return v1
.end method
