.class public Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;
.super Ljava/lang/Object;
.source "NSDSDatabaseHelper.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "NSDSDatabaseHelper"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->createCredentialProtectedStorageContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mContext:Landroid/content/Context;

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method private broadcastE911AID(Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;I)V
    .locals 3

    .line 420
    iget-object v0, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;->addressId:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;->aidExpiration:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 425
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.nsds.action.E911_AID_INFO_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 426
    iget-object v1, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;->addressId:Ljava/lang/String;

    const-string v2, "e911_aid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 427
    iget-object p1, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;->aidExpiration:Ljava/lang/String;

    const-string v1, "e911_aid_expiration"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.sec.vsim.ericssonnsds.SIM_SLOT_IDX"

    .line 428
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 429
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mContext:Landroid/content/Context;

    sget-object p1, Lcom/sec/ims/extensions/ContextExt;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-static {p0, v0, p1}, Lcom/sec/internal/helper/os/IntentUtil;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    .line 421
    :cond_1
    :goto_0
    sget-object p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    const-string p1, "broadcastE911AID: invalid e911 AID info, vail"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private doesServiceExists(JJ)Z
    .locals 6

    .line 794
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mResolver:Landroid/content/ContentResolver;

    invoke-static {p1, p2, p3, p4}, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$Lines;->buildServicesUri(JJ)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-nez p0, :cond_1

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    .line 800
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_0
    return p1

    .line 799
    :cond_1
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 800
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return p1

    :catchall_0
    move-exception p1

    .line 794
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method

.method public static getConfigVersion(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string/jumbo v0, "version"

    .line 133
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v5, v0

    .line 139
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/entitilement/EntitlementConfigContract$DeviceConfig;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "imsi = ?"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 141
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 142
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 143
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 139
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1

    :cond_0
    if-eqz p0, :cond_1

    .line 145
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    const-string p0, "0"

    return-object p0
.end method

.method private getLineDetail(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;
    .locals 13

    .line 755
    new-instance v0, Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;-><init>()V

    const-string v1, "_id"

    const-string v2, "msisdn"

    const-string v3, "location_status"

    const-string/jumbo v4, "tc_status"

    const-string v5, "e911_address_id"

    const-string v6, "e911_aid_expiration"

    .line 756
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v9

    move-object v1, p0

    .line 759
    iget-object v7, v1, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mResolver:Landroid/content/ContentResolver;

    invoke-static/range {p3 .. p3}, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$Lines;->buildLinesUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    const/4 v12, 0x0

    move-object v10, p1

    move-object v11, p2

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 761
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 762
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v0, Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;->lineId:J

    const/4 v2, 0x1

    .line 763
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;->msisdn:Ljava/lang/String;

    const/4 v2, 0x2

    .line 764
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;->locationStatus:I

    const/4 v2, 0x3

    .line 765
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;->tcStatus:I

    const/4 v2, 0x4

    .line 766
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;->e911AddressId:Ljava/lang/String;

    const/4 v2, 0x5

    .line 767
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;->e911AidExpiration:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 759
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v1, v0

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2

    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    .line 769
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0
.end method

.method private getLineIdFromAllLinesIf(Ljava/lang/String;)J
    .locals 7

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v5, v0

    const-string p1, "_id"

    .line 599
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v3

    .line 602
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mResolver:Landroid/content/ContentResolver;

    invoke-static {}, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$Lines;->buildAllLinesInternalUri()Landroid/net/Uri;

    move-result-object v2

    const-string v4, "msisdn = ? AND account_id = 0"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 604
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 605
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 602
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1

    :cond_0
    const-wide/16 v0, -0x1

    :goto_1
    if-eqz p0, :cond_1

    .line 607
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-wide v0
.end method

.method private insertDevice(JLjava/lang/String;Ljava/lang/String;ZIZ)J
    .locals 1

    .line 624
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 625
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "device_account_id"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "device_uid"

    .line 626
    invoke-virtual {v0, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "device_name"

    .line 627
    invoke-virtual {v0, p1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "is_primary"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 629
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "device_type"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 630
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "is_local"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 631
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object p1, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$Devices;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    .line 632
    sget-object p1, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "inserted deviceUri:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    .line 634
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    goto :goto_0

    :cond_0
    const-wide/16 p0, -0x1

    :goto_0
    return-wide p0
.end method

.method private insertDeviceIfNotExists(JLjava/lang/String;ZZ)J
    .locals 10

    .line 577
    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->getDeviceId(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 579
    sget-object v0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "device does not exist with :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " creating one"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/util/DeviceNameHelper;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 581
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v6, p3

    goto :goto_0

    :cond_0
    move-object v6, v0

    :goto_0
    const/4 v8, 0x0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move v7, p4

    move v9, p5

    .line 585
    invoke-direct/range {v2 .. v9}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->insertDevice(JLjava/lang/String;Ljava/lang/String;ZIZ)J

    move-result-wide v0

    :cond_1
    return-wide v0
.end method

.method private insertGcmPushToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 69
    sget-object v0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "insertGcmPushToken()"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "gcm_token"

    .line 73
    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "sender_id"

    .line 74
    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "protocol_to_server"

    .line 76
    invoke-virtual {v1, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "device_uid"

    .line 77
    invoke-virtual {v1, p1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object p1, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$GcmTokens;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p0, "inserted GCM token successfully"

    .line 80
    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private insertLineWithServiceDetail(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)J
    .locals 12

    move-object/from16 v8, p5

    .line 478
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 479
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "account_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "msisdn"

    .line 480
    invoke-virtual {v0, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "friendly_name"

    move-object/from16 v2, p6

    .line 481
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "is_owner"

    move-object/from16 v2, p7

    .line 482
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const/4 v1, 0x0

    .line 483
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object v1, p0

    .line 484
    iget-object v2, v1, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$Lines;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 485
    sget-object v9, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inserted lineUri:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 487
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 488
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, v10

    move-wide v3, p3

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    move-object/from16 v8, p5

    .line 489
    invoke-direct/range {v0 .. v8}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->insertServiceNameAndFingerPrint(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 491
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertLineWithServiceDetail: inserted line service Uri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 493
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insertLineWithServiceDetail: failed for msisdn:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v10, -0x1

    :goto_0
    return-wide v10
.end method

.method private insertServiceNameAndFingerPrint(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .line 516
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "service_name"

    .line 517
    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p5, "service_msisdn"

    .line 518
    invoke-virtual {v0, p5, p8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p5, "service_fingerprint"

    .line 519
    invoke-virtual {v0, p5, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p5, "service_instance_id"

    .line 521
    invoke-virtual {v0, p5, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mResolver:Landroid/content/ContentResolver;

    invoke-static {p3, p4, p1, p2}, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$Lines;->buildServicesUri(JJ)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static migrationToCe(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .line 931
    invoke-virtual {p0}, Landroid/content/Context;->createCredentialProtectedStorageContext()Landroid/content/Context;

    move-result-object v0

    .line 932
    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->moveDatabaseFrom(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 933
    sget-object p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Failed to maigrate DB."

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 936
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 937
    sget-object p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Failed delete DB on DE."

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 940
    :cond_1
    sget-object p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    const-string p1, "migration is done"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method private updateGcmPushToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 85
    sget-object v0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateGcmPushToken()"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "gcm_token"

    .line 88
    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, p1, v2

    const/4 v2, 0x1

    aput-object p3, p1, v2

    .line 92
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$GcmTokens;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "sender_id = ? AND device_uid = ?"

    invoke-virtual {p0, v2, v1, v3, p1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_0

    .line 95
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "update GCM token for sender ID: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for deviceId:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public copyConfigEntriesForSimSwap(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8

    const-string v0, "device_state"

    const-string v1, "device_id"

    const-string v2, "imsi_eap"

    const-string v3, "push_token"

    const-string v4, "imsi"

    .line 245
    :try_start_0
    sget-object v5, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    const-string v6, "Copying config entries for sim swap"

    invoke-static {v5, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v6, "NATIVE_MSISDN"

    .line 247
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->getNativeMsisdn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "aka_token"

    .line 248
    iget-object v7, p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v7, p2}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->getAkaToken(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    iget-object v6, p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v6, p1, v3}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mContext:Landroid/content/Context;

    const-string v6, "prev_imsi"

    invoke-static {v3, p3, v6}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->getPrefForSlot(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v3, p3, v2}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->getPrefForSlot(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v2, p3, v1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->getPrefForSlot(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/ContentValues;

    const/4 v1, 0x0

    .line 259
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 260
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    aput-object v6, v0, v1

    const-string v7, "pname"

    .line 261
    invoke-virtual {v6, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    aget-object v6, v0, v1

    const-string v7, "pvalue"

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    aget-object v3, v0, v1

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 267
    :cond_0
    sget-object v1, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$SimSwapNsdsConfigs;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 268
    invoke-virtual {v1, v4, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 269
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0

    .line 270
    sget-object v1, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "copied shared pref and nsds config entries for sim swap:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->deleteConfigAndResetDeviceAndAccountStatus(Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->deleteConfigAndResetDeviceAndAccountStatus(Ljava/lang/String;Ljava/lang/String;I)V

    .line 273
    throw v0
.end method

.method public deleteConfigAndResetDeviceAndAccountStatus(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .line 277
    sget-object v0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteConfigAndResetDeviceAndAccountStatus: imsi "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->resetAccountStatus(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->resetDeviceStatus(Ljava/lang/String;Ljava/lang/String;I)V

    .line 282
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->deleteNsdsConfigs(Ljava/lang/String;)V

    .line 283
    invoke-static {}, Lcom/sec/internal/ims/entitlement/util/NSDSConfigHelper;->clear()V

    return-void
.end method

.method public deleteNsdsConfigs(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 236
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object p1, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$NsdsConfigs;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "imsi = ?"

    invoke-virtual {p0, p1, v1, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_0

    .line 239
    sget-object p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Deleted NSDS configs: successfully"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getActiveMsisdns(Ljava/lang/String;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 891
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    const-string v1, "msisdn"

    const-string v2, "_id"

    .line 894
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "service_instance_id IS NOT NULL"

    .line 896
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mResolver:Landroid/content/ContentResolver;

    invoke-static {p1}, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$Lines;->buildActiveLinesWithServicveUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    .line 898
    :goto_0
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 899
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    .line 900
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 899
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 896
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

    .line 903
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 905
    sget-object p1, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getActiveLines failed with:"

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

.method public getDeviceConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, "device_config"

    .line 150
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    .line 154
    sget-object v2, Lcom/sec/internal/constants/ims/entitilement/EntitlementConfigContract$DeviceConfig;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v5, v0

    .line 157
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "imsi = ?"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 158
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 159
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 157
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1

    :cond_0
    if-eqz p0, :cond_1

    .line 161
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDeviceId(Ljava/lang/String;)I
    .locals 8

    .line 868
    sget-object v0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDeviceId: for deviceId :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v5, "device_uid = ?"

    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v6, v1

    const-string v2, "_id"

    .line 874
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v4

    .line 875
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$Devices;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    .line 876
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 877
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 878
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDeviceId: returned :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 883
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 881
    :cond_0
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDeviceId: Could not find deviceUID :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p0, :cond_2

    .line 883
    :try_start_4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :goto_0
    if-eqz p0, :cond_1

    .line 875
    :try_start_5
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_6
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw p1
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception p0

    .line 885
    sget-object p1, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SQL exception while getDeviceId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    const/4 p0, -0x1

    return p0
.end method

.method public getGcmToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, "gcm_token"

    .line 108
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v5, v0

    const/4 p1, 0x1

    aput-object p2, v5, p1

    .line 114
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$GcmTokens;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "sender_id = ? AND device_uid = ?"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 116
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 117
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 118
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 114
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1

    :cond_0
    if-eqz p0, :cond_1

    .line 120
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLineDetail(JLjava/lang/String;Z)Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 721
    sget-object p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    const-string p1, "getLineDetail: lineId is zero/negative"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 725
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "lines._id = ?"

    .line 726
    invoke-direct {p0, v1, v0, p3}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->getLineDetail(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;

    move-result-object v0

    if-eqz p4, :cond_1

    .line 728
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->getServiceInstanceForLocalDevice(JLjava/lang/String;)Lcom/sec/internal/constants/ims/entitilement/data/ServiceInstanceDetail;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 730
    iget-object p1, p0, Lcom/sec/internal/constants/ims/entitilement/data/ServiceInstanceDetail;->serviceFingerPrint:Ljava/lang/String;

    iput-object p1, v0, Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;->serviceFingerPrint:Ljava/lang/String;

    .line 731
    iget-object p1, p0, Lcom/sec/internal/constants/ims/entitilement/data/ServiceInstanceDetail;->serviceInstanceId:Ljava/lang/String;

    iput-object p1, v0, Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;->serviceInstanceId:Ljava/lang/String;

    .line 732
    iget-object p0, p0, Lcom/sec/internal/constants/ims/entitilement/data/ServiceInstanceDetail;->serviceTokenExpiryTime:Ljava/lang/String;

    iput-object p0, v0, Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;->serviceTokenExpiryTime:Ljava/lang/String;

    :cond_1
    return-object v0
.end method

.method public getLineIdOnDevice(Ljava/lang/String;Ljava/lang/String;I)J
    .locals 8

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 436
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const/4 v2, -0x1

    if-ne p3, v2, :cond_0

    new-array v0, v3, [Ljava/lang/String;

    aput-object p1, v0, v1

    const-string p1, "msisdn = ?"

    goto :goto_0

    :cond_0
    const-string p1, "msisdn = ? AND status = ?"

    :goto_0
    move-object v5, p1

    move-object v6, v0

    const-string p1, "_id"

    .line 442
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v4

    .line 444
    sget-object p1, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$Lines;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    const-string p3, "device_uid"

    .line 445
    invoke-virtual {p1, p3, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-wide/16 p2, -0x1

    .line 448
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 450
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 451
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 448
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1

    :cond_1
    :goto_2
    if-eqz p0, :cond_2

    .line 453
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 454
    :cond_2
    sget-object p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getLineIdOnDevice(): lineId: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-wide p2
.end method

.method public getNativeLineDetail(Ljava/lang/String;Z)Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;
    .locals 4

    .line 702
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->getNativeLineId(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 704
    sget-object p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    const-string p1, "getNativeLineDetail: native line id not found"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 708
    :cond_0
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->getLineDetail(JLjava/lang/String;Z)Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;

    move-result-object p0

    return-object p0
.end method

.method public getNativeLineE911AidExp(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 740
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->getNativeLineDetail(Ljava/lang/String;Z)Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 742
    iget-object p0, p0, Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;->e911AidExpiration:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getNativeLineId(Ljava/lang/String;)I
    .locals 8

    const/4 v0, -0x1

    :try_start_0
    const-string v1, "_id"

    .line 676
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "is_native = ?"

    const-string v1, "1"

    .line 678
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v6

    .line 680
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mResolver:Landroid/content/ContentResolver;

    invoke-static {p1}, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$Lines;->buildLinesUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    .line 683
    :goto_0
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 684
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 680
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

    .line 687
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 689
    sget-object p1, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNativeLineId failed with:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_2
    return v0
.end method

.method public getNativeMsisdn(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "msisdn"

    .line 649
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "is_native = ?"

    const-string v1, "1"

    .line 651
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v6

    .line 653
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mResolver:Landroid/content/ContentResolver;

    invoke-static {p1}, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$Lines;->buildLinesUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    .line 656
    :goto_0
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 657
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 653
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

    .line 660
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 662
    sget-object p1, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNativeMsisdn failed with:"

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

.method public getReadyForUseMsisdns(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 911
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    const-string v4, "reg_status = ?"

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x2

    .line 915
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x0

    aput-object v1, v5, v7

    const-string v1, "msisdn"

    .line 916
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    .line 917
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mResolver:Landroid/content/ContentResolver;

    invoke-static {p1}, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$Lines;->buildLinesUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    .line 919
    :goto_0
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 920
    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 917
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

    .line 923
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 925
    sget-object p1, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getActiveLines failed with:"

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

.method public getServiceInstanceForLocalDevice(JLjava/lang/String;)Lcom/sec/internal/constants/ims/entitilement/data/ServiceInstanceDetail;
    .locals 11

    const-string v0, "service_name"

    const-string v1, "service_fingerprint"

    const-string v2, "service_instance_id"

    const-string v3, "service_instance_token"

    const-string v4, "service_token_expire_time"

    .line 774
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v7

    .line 776
    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->getDeviceId(Ljava/lang/String;)I

    move-result p0

    int-to-long v0, p0

    invoke-static {v0, v1, p1, p2}, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$Lines;->buildServicesUri(JJ)Landroid/net/Uri;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 779
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 780
    new-instance p1, Lcom/sec/internal/constants/ims/entitilement/data/ServiceInstanceDetail;

    invoke-direct {p1}, Lcom/sec/internal/constants/ims/entitilement/data/ServiceInstanceDetail;-><init>()V

    const/4 p2, 0x0

    .line 781
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/sec/internal/constants/ims/entitilement/data/ServiceInstanceDetail;->serviceName:Ljava/lang/String;

    const/4 p2, 0x1

    .line 782
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/sec/internal/constants/ims/entitilement/data/ServiceInstanceDetail;->serviceFingerPrint:Ljava/lang/String;

    const/4 p2, 0x2

    .line 783
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/sec/internal/constants/ims/entitilement/data/ServiceInstanceDetail;->serviceInstanceId:Ljava/lang/String;

    const/4 p2, 0x3

    .line 784
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/sec/internal/constants/ims/entitilement/data/ServiceInstanceDetail;->serviceInstanceToken:Ljava/lang/String;

    const/4 p2, 0x4

    .line 785
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/sec/internal/constants/ims/entitilement/data/ServiceInstanceDetail;->serviceTokenExpiryTime:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 789
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 776
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1

    :cond_0
    if-eqz p0, :cond_1

    .line 789
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public insertDeviceConfig(Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 174
    iget-object v0, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity;->deviceConfig:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 175
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "device_id"

    .line 176
    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string/jumbo p3, "version"

    .line 178
    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :cond_0
    iget-object p1, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity;->deviceConfig:Ljava/lang/String;

    if-eqz p1, :cond_2

    const-string p2, "device_config"

    .line 181
    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 184
    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result p1

    if-eqz p1, :cond_3

    .line 185
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object p1, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$DeviceConfig;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 187
    sget-object p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    const-string p1, "inserted device config in device config successfully"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public insertOrUpdateGcmPushToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 56
    sget-object v0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertOrUpdateForGcmToken: token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", senderId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 61
    :cond_0
    invoke-virtual {p0, p1, p4}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->isGcmTokenAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    invoke-direct {p0, p2, p1, p4}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->updateGcmPushToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 64
    :cond_1
    invoke-direct {p0, p2, p1, p3, p4}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->insertGcmPushToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    :goto_1
    const-string p0, "insertFcmToken: empty or null input"

    .line 58
    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public insertOrUpdateNativeLine(JLjava/lang/String;Lcom/sec/internal/constants/ims/entitilement/data/ResponseGetMSISDN;)J
    .locals 22

    move-object/from16 v10, p0

    move-object/from16 v6, p4

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    .line 529
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->insertDeviceIfNotExists(JLjava/lang/String;ZZ)J

    move-result-wide v11

    .line 530
    iget-object v0, v6, Lcom/sec/internal/constants/ims/entitilement/data/ResponseGetMSISDN;->msisdn:Ljava/lang/String;

    invoke-direct {v10, v0}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->getLineIdFromAllLinesIf(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    const-string v13, "insertOrUpdateNativeLine: Updated service.is_native successfully for device:"

    const/4 v3, 0x1

    .line 546
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "is_native"

    const-string v9, " and lineId:"

    const/4 v8, 0x0

    if-nez v2, :cond_0

    .line 532
    sget-object v7, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    const-string v0, "native msisdn does not exist in db, creating one"

    invoke-static {v7, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    iget-object v5, v6, Lcom/sec/internal/constants/ims/entitilement/data/ResponseGetMSISDN;->msisdn:Ljava/lang/String;

    .line 534
    sget-object v16, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v6, v6, Lcom/sec/internal/constants/ims/entitilement/data/ResponseGetMSISDN;->serviceFingerprint:Ljava/lang/String;

    const-string/jumbo v17, "vowifi"

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide v3, v11

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move-object/from16 v6, v18

    move-object/from16 v20, v7

    move-object/from16 v7, v16

    move-object/from16 p3, v13

    move-object v13, v8

    move-object/from16 v8, v17

    move-object/from16 v21, v9

    move-object/from16 v9, v19

    .line 533
    invoke-direct/range {v0 .. v9}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->insertLineWithServiceDetail(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .line 536
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 537
    invoke-virtual {v2, v15, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 538
    iget-object v3, v10, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v11, v12, v0, v1}, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$Lines;->buildServicesUri(JJ)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v2, v13, v13}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_2

    .line 540
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v4, v21

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v20

    invoke-static {v3, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    move-object v4, v9

    move-object v3, v13

    move-object v13, v8

    .line 544
    sget-object v2, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    const-string v5, "native msisdn does exist in db, add service fingerprint and is_native attribute"

    invoke-static {v2, v5}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 546
    invoke-virtual {v5, v15, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "service_name"

    const-string/jumbo v8, "vowifi"

    .line 547
    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    iget-object v7, v6, Lcom/sec/internal/constants/ims/entitilement/data/ResponseGetMSISDN;->msisdn:Ljava/lang/String;

    const-string v8, "service_msisdn"

    invoke-virtual {v5, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    iget-object v6, v6, Lcom/sec/internal/constants/ims/entitilement/data/ResponseGetMSISDN;->serviceFingerprint:Ljava/lang/String;

    const-string v7, "service_fingerprint"

    invoke-virtual {v5, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    invoke-direct {v10, v11, v12, v0, v1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->doesServiceExists(JJ)Z

    move-result v6

    if-nez v6, :cond_1

    .line 552
    iget-object v3, v10, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v11, v12, v0, v1}, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$Lines;->buildServicesUri(JJ)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v3, v6, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 554
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insertOrUpdateNativeLine: created service entry for:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 558
    :cond_1
    iget-object v6, v10, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v11, v12, v0, v1}, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$Lines;->buildServicesUri(JJ)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7, v5, v13, v13}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_2

    .line 561
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-wide v0
.end method

.method public isDeviceConfigAvailable(Ljava/lang/String;)Z
    .locals 0

    .line 125
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->getDeviceConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    .line 126
    sget-object p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    const-string p1, "isDeviceConfigAvailable: no config"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isE911InfoAvailForNativeLine(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 307
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->getNativeLineDetail(Ljava/lang/String;Z)Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;

    move-result-object p0

    if-nez p0, :cond_0

    .line 309
    sget-object p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    const-string p1, "isE911InfoAvailForNativeLine: line info missing"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 312
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;->e911AddressId:Ljava/lang/String;

    if-nez p1, :cond_1

    .line 313
    sget-object p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    const-string p1, "isE911InfoAvailForNativeLine: e911 aid missing"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 316
    :cond_1
    iget p0, p0, Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;->locationStatus:I

    const/4 p1, 0x1

    if-eq p0, p1, :cond_2

    .line 317
    sget-object p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    const-string p1, "isE911InfoAvailForNativeLine: loc status false"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_2
    return p1
.end method

.method public isGcmTokenAvailable(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_1

    .line 100
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->getGcmToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    .line 101
    :cond_1
    :goto_0
    sget-object p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    const-string p1, "isGcmTokenAvailable: no GCM token"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public resetAccountStatus(Ljava/lang/String;)V
    .locals 2

    .line 287
    sget-object v0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "resetAccountStatus()"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 289
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->setLocalDevicePrimary(Ljava/lang/String;Z)V

    return-void
.end method

.method public resetDeviceStatus(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .line 293
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mContext:Landroid/content/Context;

    const-string v1, "device_state"

    const-string v2, "deactivated"

    invoke-static {v0, p1, v1, v2}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->save(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mContext:Landroid/content/Context;

    const-string v1, "entitlement_state"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->remove(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mContext:Landroid/content/Context;

    const-string v1, "imsi_eap"

    invoke-static {v0, p3, v1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->removePrefForSlot(Landroid/content/Context;ILjava/lang/String;)V

    .line 299
    iget-object p3, p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {p3, p2}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->removeAkaToken(Landroid/content/Context;Ljava/lang/String;)V

    .line 300
    iget-object p2, p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mContext:Landroid/content/Context;

    const-string p3, "push_token"

    invoke-static {p2, p1, p3}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->remove(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    iget-object p2, p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mContext:Landroid/content/Context;

    const-string p3, "sent_token_to_server"

    invoke-static {p2, p1, p3}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->remove(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-object p2, p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->clearEntitlementServerUrl(Landroid/content/Context;Ljava/lang/String;)V

    .line 303
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->resetE911AidInfoForNativeLine(Ljava/lang/String;)V

    return-void
.end method

.method public resetE911AidInfoForNativeLine(Ljava/lang/String;)V
    .locals 3

    .line 324
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "e911_address_id"

    .line 325
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    const-string v1, "e911_aid_expiration"

    .line 326
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    const-string v1, "e911_server_data"

    .line 327
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    const-string v1, "e911_server_url"

    .line 328
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 330
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->getNativeLineId(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 331
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object p1, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$Lines;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "_id = ?"

    invoke-virtual {p0, p1, v0, v2, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_0

    .line 333
    sget-object p1, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetE911AidInfoForNativeLine: success "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setLocalDevicePrimary(Ljava/lang/String;Z)V
    .locals 4

    .line 809
    sget-object v0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLocalDevicePrimary: isPrimary "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 812
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v2, "is_primary"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "1"

    aput-object v3, p2, v2

    const/4 v2, 0x1

    aput-object p1, p2, v2

    .line 816
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object p1, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$Devices;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "is_local = ? AND device_uid = ?"

    invoke-virtual {p0, p1, v1, v2, p2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_0

    const-string/jumbo p0, "setLocalDevicePrimary: update success"

    .line 819
    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateDeviceConfig(Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 205
    sget-object v0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateDeviceConfig: version:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v1, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity;->deviceConfig:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 208
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    if-eqz p2, :cond_0

    const-string/jumbo v3, "version"

    .line 210
    invoke-virtual {v1, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    :cond_0
    iget-object p1, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity;->deviceConfig:Ljava/lang/String;

    if-eqz p1, :cond_2

    const-string v3, "device_config"

    .line 213
    invoke-virtual {v1, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v2

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 216
    invoke-virtual {v1}, Landroid/content/ContentValues;->size()I

    move-result p1

    if-eqz p1, :cond_3

    .line 218
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$NsdsConfigs;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v3, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 219
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No of entries deleted from nsds_config :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p3, p1, v2

    .line 223
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$DeviceConfig;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "device_id = ?"

    invoke-virtual {p0, v2, v1, v3, p1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_4

    .line 225
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "updated device config in device config successfully with version:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for deviceId:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string p0, "No update on the config"

    .line 229
    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public updateDeviceName(JLjava/lang/String;)V
    .locals 2

    .line 841
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "device_name"

    .line 842
    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 844
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    .line 845
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object p1, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$Devices;->CONTENT_URI:Landroid/net/Uri;

    const-string p2, "_id = ?"

    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_0

    .line 848
    sget-object p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Updated device name successsfully to: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateDeviceName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 830
    sget-object v0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating device name for deviceUID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->getDeviceId(Ljava/lang/String;)I

    move-result p1

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1, p2}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->updateDeviceName(JLjava/lang/String;)V

    return-void
.end method

.method public updateLineName(JLjava/lang/String;)V
    .locals 2

    .line 853
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "friendly_name"

    .line 854
    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 856
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    .line 857
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object p1, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$Lines;->CONTENT_URI:Landroid/net/Uri;

    const-string p2, "_id = ?"

    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_0

    .line 860
    sget-object p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "UpdateLineName Successful. Line name: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateLocationAndTcStatus(JLcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;Ljava/lang/String;I)V
    .locals 7

    .line 376
    sget-object v0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateLocationAndTcStatus: lineId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    if-eqz p3, :cond_6

    .line 380
    iget-object v2, p3, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;->locationStatus:Ljava/lang/Boolean;

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    .line 382
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v5

    .line 387
    :goto_0
    iget-object v6, p3, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;->tcStatus:Ljava/lang/Boolean;

    if-nez v6, :cond_2

    goto :goto_1

    .line 389
    :cond_2
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v4

    goto :goto_1

    :cond_3
    move v3, v5

    .line 393
    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v6, "location_status"

    invoke-virtual {v1, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 394
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "tc_status"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 395
    iget-object v2, p3, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;->addressId:Ljava/lang/String;

    const-string v3, "e911_address_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    iget-object v2, p3, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;->aidExpiration:Ljava/lang/String;

    const-string v3, "e911_aid_expiration"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    iget-object v2, p3, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;->serverData:Ljava/lang/String;

    const-string v3, "e911_server_data"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    iget-object v2, p3, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;->serverUrl:Ljava/lang/String;

    const-string v3, "e911_server_url"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-array v2, v4, [Ljava/lang/String;

    .line 400
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 401
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$Lines;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "_id = ?"

    invoke-virtual {v3, v4, v1, v6, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_4

    const-string/jumbo v1, "updateLocationAndTcStatus: success"

    .line 404
    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    :cond_4
    invoke-virtual {p0, p1, p2, p4, v5}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->getLineDetail(JLjava/lang/String;Z)Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;

    move-result-object p1

    if-nez p1, :cond_5

    const-string/jumbo p0, "updateLocationAndTcStatus Line detail is NULL"

    .line 408
    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 410
    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "updateLocationAndTcStatus location status: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p1, Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;->locationStatus:I

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ", tc status: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p1, Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;->tcStatus:I

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ", e911 AID Expirsation: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p1, Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;->e911AidExpiration:Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, ", e911 AID: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;->e911AddressId:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    invoke-direct {p0, p3, p5}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->broadcastE911AID(Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;I)V

    :cond_6
    :goto_2
    return-void
.end method

.method public updateRegistationStatusForLines(II)V
    .locals 4

    .line 354
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 355
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "reg_status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 358
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 359
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$Lines;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "reg_status = ?"

    invoke-virtual {p0, v2, v0, v3, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_0

    .line 362
    sget-object p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateStatusForLines fromStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " toStatus:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 364
    :cond_0
    sget-object p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Updating lines failed"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public updateRegistationStatusForLines(Ljava/util/List;III)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;III)V"
        }
    .end annotation

    .line 341
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 342
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const-string v1, "reg_status"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 343
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p4, v1, v2

    const/4 p4, 0x1

    .line 345
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p4

    const/4 p4, 0x2

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p4

    .line 346
    iget-object p4, p0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$Lines;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "msisdn = ? AND status = ? AND reg_status = ?"

    invoke-virtual {p4, v2, v0, v3, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method
