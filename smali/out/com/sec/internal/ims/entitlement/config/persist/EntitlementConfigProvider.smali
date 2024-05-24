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
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$DatabaseHelper;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .registers 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

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

    const-string v1, "config"

    const/4 v2, 0x1

    const-string v3, "com.samsung.ims.entitlementconfig.provider"

    .line 74
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "config/xpath"

    const/4 v2, 0x3

    .line 75
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "config/jansky_config"

    const/4 v2, 0x2

    .line 76
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "config/rcs_config"

    const/4 v2, 0x4

    .line 77
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "config/force_update"

    const/4 v2, 0x5

    .line 78
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "config/entitlement_url"

    const/4 v2, 0x6

    .line 79
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v1, "reconnect_db"

    const/4 v2, 0x7

    .line 80
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "binding_service"

    const/16 v2, 0x8

    .line 81
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "config/tag"

    const/16 v2, 0x9

    .line 82
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

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
    .registers 4

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
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    goto :goto_2a

    :catch_f
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

    :goto_2a
    return-void
.end method

.method private declared-synchronized connectToEntitlementConfigService()V
    .registers 6

    monitor-enter p0

    .line 426
    :try_start_1
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

    sget-object v3, Lcom/sec/ims/extensions/ContextExt;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    const/4 v4, 0x1

    invoke-static {v1, v0, v2, v4, v3}, Lcom/sec/ims/extensions/ContextExt;->bindServiceAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_29

    .line 459
    monitor-exit p0

    return-void

    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getJanskyConfigXmlBlock()Landroid/database/Cursor;
    .registers 2

    const-string v0, "//janskyConfig"

    .line 382
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->getXmlConfigByTag(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method private getNsdsElementsWithXPath(Landroid/net/Uri;)Landroid/database/Cursor;
    .registers 14

    .line 348
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    :try_start_5
    const-string/jumbo v3, "tag_name"

    .line 350
    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_c} :catch_5d
    .catchall {:try_start_5 .. :try_end_c} :catchall_5b

    .line 351
    :try_start_c
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 352
    sget-object p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Empty tag name. Return null"

    invoke-static {p0, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_19} :catch_57
    .catchall {:try_start_c .. :try_end_19} :catchall_5b

    .line 366
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :cond_1d
    const/4 v3, 0x1

    :try_start_1e
    new-array v6, v3, [Ljava/lang/String;

    const-string v3, "device_config"

    const/4 v10, 0x0

    aput-object v3, v6, v10

    .line 356
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/ims/entitilement/EntitlementConfigContract$DeviceConfig;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_36} :catch_57
    .catchall {:try_start_1e .. :try_end_36} :catchall_5b

    if-eqz p0, :cond_4e

    .line 357
    :try_start_38
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 358
    invoke-interface {p0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_42} :catch_48
    .catchall {:try_start_38 .. :try_end_42} :catchall_43

    goto :goto_4e

    :catchall_43
    move-exception p1

    move-object v2, p0

    move-object p0, p1

    goto/16 :goto_c2

    :catch_48
    move-exception v3

    move-object v11, p1

    move-object p1, p0

    move-object p0, v3

    move-object v3, v11

    goto :goto_60

    :cond_4e
    :goto_4e
    if-eqz p0, :cond_53

    .line 364
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 366
    :cond_53
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_83

    :catch_57
    move-exception p0

    move-object v3, p1

    move-object p1, v2

    goto :goto_60

    :catchall_5b
    move-exception p0

    goto :goto_c2

    :catch_5d
    move-exception p0

    move-object p1, v2

    move-object v3, p1

    .line 361
    :goto_60
    :try_start_60
    sget-object v4, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SQL exception while parseDeviceConfig "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7a
    .catchall {:try_start_60 .. :try_end_7a} :catchall_c0

    if-eqz p1, :cond_7f

    .line 364
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 366
    :cond_7f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object p1, v3

    .line 369
    :goto_83
    new-instance p0, Landroid/database/MatrixCursor;

    const-string v0, "element_name"

    const-string v1, "element_value"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v2, :cond_b8

    .line 371
    invoke-static {v2, p1}, Lcom/sec/internal/ims/entitlement/util/ConfigElementExtractor;->getAllElements(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 372
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_bf

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 373
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_9e

    .line 376
    :cond_b8
    sget-object p1, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Device Config is null: "

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_bf
    return-object p0

    :catchall_c0
    move-exception p0

    move-object v2, p1

    :goto_c2
    if-eqz v2, :cond_c7

    .line 364
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 366
    :cond_c7
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 367
    throw p0
.end method

.method private getRcsConfigXmlBlock()Landroid/database/Cursor;
    .registers 2

    const-string v0, "//RCSConfig/wap-provisioningdoc|//wap-provisioningdoc"

    .line 386
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->getXmlConfigByTag(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method private getXmlConfigByTag(Ljava/lang/String;)Landroid/database/Cursor;
    .registers 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_2
    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "device_config"

    const/4 v8, 0x0

    aput-object v0, v4, v8

    .line 403
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/entitilement/EntitlementConfigContract$DeviceConfig;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1a} :catch_31
    .catchall {:try_start_2 .. :try_end_1a} :catchall_2f

    if-eqz p0, :cond_29

    .line 404
    :try_start_1c
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 405
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_26} :catch_27
    .catchall {:try_start_1c .. :try_end_26} :catchall_72

    goto :goto_29

    :catch_27
    move-exception v0

    goto :goto_33

    :cond_29
    :goto_29
    if-eqz p0, :cond_50

    .line 411
    :goto_2b
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_50

    :catchall_2f
    move-exception p1

    goto :goto_74

    :catch_31
    move-exception v0

    move-object p0, v1

    .line 408
    :goto_33
    :try_start_33
    sget-object v2, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SQL exception while parseDeviceConfig "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4d
    .catchall {:try_start_33 .. :try_end_4d} :catchall_72

    if-eqz p0, :cond_50

    goto :goto_2b

    .line 415
    :cond_50
    :goto_50
    new-instance p0, Landroid/database/MatrixCursor;

    const-string/jumbo v0, "xml_config"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v1, :cond_6a

    .line 417
    invoke-static {v1, p1}, Lcom/sec/internal/ims/entitlement/util/CompleteXMLBlockExtractor;->getXmlBlockForElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 418
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_71

    .line 420
    :cond_6a
    sget-object p1, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Device Config is null: "

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_71
    return-object p0

    :catchall_72
    move-exception p1

    move-object v1, p0

    :goto_74
    if-eqz v1, :cond_79

    .line 411
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 413
    :cond_79
    throw p1
.end method

.method private getXmlConfigbyTagUri(Landroid/net/Uri;)Landroid/database/Cursor;
    .registers 3

    const-string/jumbo v0, "tag_name"

    .line 390
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 391
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 392
    sget-object p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Empty tag name. Return null"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 395
    :cond_16
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->getXmlConfigByTag(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method private insertDeviceConfig(Landroid/content/ContentValues;)J
    .registers 7

    .line 170
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$DatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 171
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-wide/16 v0, -0x1

    :try_start_b
    const-string v2, "entitlement_config"

    const/4 v3, 0x0

    .line 174
    invoke-virtual {p0, v2, v3, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 175
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_15
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_15} :catch_1b
    .catchall {:try_start_b .. :try_end_15} :catchall_19

    .line 179
    :goto_15
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_37

    :catchall_19
    move-exception p1

    goto :goto_38

    :catch_1b
    move-exception p1

    .line 177
    :try_start_1c
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
    :try_end_36
    .catchall {:try_start_1c .. :try_end_36} :catchall_19

    goto :goto_15

    :goto_37
    return-wide v0

    .line 179
    :goto_38
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 180
    throw p1
.end method

.method private updateDeviceConfig(Landroid/content/ContentValues;)I
    .registers 6

    .line 191
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$DatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 192
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v0, 0x0

    :try_start_a
    const-string v1, "entitlement_config"

    const/4 v2, 0x0

    .line 195
    invoke-virtual {p0, v1, p1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 196
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_14
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_14} :catch_1a
    .catchall {:try_start_a .. :try_end_14} :catchall_18

    .line 200
    :goto_14
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_36

    :catchall_18
    move-exception p1

    goto :goto_37

    :catch_1a
    move-exception p1

    .line 198
    :try_start_1b
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
    :try_end_35
    .catchall {:try_start_1b .. :try_end_35} :catchall_18

    goto :goto_14

    :goto_36
    return v0

    .line 200
    :goto_37
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 201
    throw p1
.end method

.method private updateEntitlementUrl(Landroid/net/Uri;)V
    .registers 5

    const-string v0, "entitlement_url"

    .line 225
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 228
    :try_start_6
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
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_21} :catch_22

    goto :goto_3e

    :catch_22
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

    :goto_3e
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 7

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

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/util/NSDSConfigHelper;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_24

    goto :goto_6a

    .line 116
    :cond_24
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$DatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 119
    :try_start_2d
    sget-object v2, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_37

    goto :goto_40

    .line 122
    :cond_37
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->NotifyDeleteDb()V

    const-string p0, "entitlement_config"

    .line 123
    invoke-virtual {v0, p0, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 128
    :goto_40
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_43
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2d .. :try_end_43} :catch_49
    .catchall {:try_start_2d .. :try_end_43} :catchall_47

    .line 132
    :goto_43
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_65

    :catchall_47
    move-exception p0

    goto :goto_66

    :catch_49
    move-exception p0

    .line 130
    :try_start_4a
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
    :try_end_64
    .catchall {:try_start_4a .. :try_end_64} :catchall_47

    goto :goto_43

    :goto_65
    return v1

    .line 132
    :goto_66
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 133
    throw p0

    :cond_6a
    :goto_6a
    return v1
.end method

.method public forceConfigUpdate()V
    .registers 5

    .line 206
    sget-object v0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->LOG_TAG:Ljava/lang/String;

    const-string v1, "forceConfigUpdate()"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->configUpdateDate:Ljava/util/Date;

    if-eqz v0, :cond_22

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

    if-lez v0, :cond_5e

    .line 213
    :cond_22
    :try_start_22
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
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_42} :catch_43

    goto :goto_5e

    :catch_43
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

    :cond_5e
    :goto_5e
    return-void
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 2

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 6

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

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/util/NSDSConfigHelper;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_24

    goto :goto_3b

    .line 150
    :cond_24
    sget-object v0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2e

    goto :goto_36

    .line 152
    :cond_2e
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->insertDeviceConfig(Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 153
    invoke-static {v0, v1}, Lcom/sec/internal/constants/ims/entitilement/EntitlementConfigContract$DeviceConfig;->buildDeviceConfigUri(J)Landroid/net/Uri;

    move-result-object v1

    :goto_36
    if-eqz v1, :cond_3b

    .line 159
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->notifyChange(Landroid/net/Uri;)V

    :cond_3b
    :goto_3b
    return-object v1
.end method

.method public notifyChange(Landroid/net/Uri;)V
    .registers 3

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
    .registers 2

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
    .registers 16

    .line 258
    sget-object v0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "query "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$DatabaseHelper;

    const/4 v1, 0x0

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/util/NSDSConfigHelper;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_25

    goto :goto_6a

    .line 264
    :cond_25
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

    if-eq v0, v4, :cond_5b

    const/4 p2, 0x2

    if-eq v0, p2, :cond_56

    const/4 p2, 0x3

    if-eq v0, p2, :cond_51

    const/4 p2, 0x4

    if-eq v0, p2, :cond_4c

    const/16 p2, 0x9

    if-eq v0, p2, :cond_47

    goto :goto_6a

    .line 281
    :cond_47
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->getXmlConfigbyTagUri(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_6a

    .line 278
    :cond_4c
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->getRcsConfigXmlBlock()Landroid/database/Cursor;

    move-result-object v1

    goto :goto_6a

    .line 272
    :cond_51
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->getNsdsElementsWithXPath(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_6a

    .line 275
    :cond_56
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->getJanskyConfigXmlBlock()Landroid/database/Cursor;

    move-result-object v1

    goto :goto_6a

    :cond_5b
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

    :cond_6a
    :goto_6a
    return-object v1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 8

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

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2b

    const-string p1, "Binding to EntitlementConfigService"

    .line 295
    invoke-static {p3, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->connectToEntitlementConfigService()V

    return v2

    .line 300
    :cond_2b
    invoke-virtual {p4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_4f

    const-string p1, "Reconnect DB for DatabaseHelper"

    .line 301
    invoke-static {p3, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$DatabaseHelper;

    if-eqz p1, :cond_45

    const-string p1, "Reconnect DB after closing the previous DB"

    .line 303
    invoke-static {p3, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$DatabaseHelper;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 306
    :cond_45
    new-instance p1, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$DatabaseHelper;

    iget-object p2, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$DatabaseHelper;

    return v2

    .line 310
    :cond_4f
    iget-object p3, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$DatabaseHelper;

    if-eqz p3, :cond_ae

    iget-object p3, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mContext:Landroid/content/Context;

    invoke-static {p3}, Lcom/sec/internal/ims/entitlement/util/NSDSConfigHelper;->isUserUnlocked(Landroid/content/Context;)Z

    move-result p3

    if-nez p3, :cond_5c

    goto :goto_ae

    .line 314
    :cond_5c
    iget-object p3, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$DatabaseHelper;

    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p3

    .line 315
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 317
    :try_start_65
    invoke-virtual {p4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p4

    const/4 v0, 0x1

    if-eq p4, v0, :cond_7b

    const/4 p2, 0x5

    if-eq p4, p2, :cond_77

    const/4 p2, 0x6

    if-eq p4, p2, :cond_73

    goto :goto_7f

    .line 325
    :cond_73
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->updateEntitlementUrl(Landroid/net/Uri;)V

    goto :goto_7f

    .line 322
    :cond_77
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->forceConfigUpdate()V

    goto :goto_7f

    .line 319
    :cond_7b
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->updateDeviceConfig(Landroid/content/ContentValues;)I

    move-result v2

    .line 330
    :goto_7f
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_82
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_65 .. :try_end_82} :catch_88
    .catchall {:try_start_65 .. :try_end_82} :catchall_86

    .line 334
    :goto_82
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_a4

    :catchall_86
    move-exception p0

    goto :goto_aa

    :catch_88
    move-exception p2

    .line 332
    :try_start_89
    sget-object p4, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not update table:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p4, p2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a3
    .catchall {:try_start_89 .. :try_end_a3} :catchall_86

    goto :goto_82

    :goto_a4
    if-eqz v2, :cond_a9

    .line 338
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->notifyChange(Landroid/net/Uri;)V

    :cond_a9
    return v2

    .line 334
    :goto_aa
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 335
    throw p0

    :cond_ae
    :goto_ae
    return v2
.end method
