.class public Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;
.super Ljava/lang/Object;
.source "RcsConfigurationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/helper/RcsConfigurationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfigData"
.end annotation


# instance fields
.field mDataMap:Ljava/util/Map;
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
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->mDataMap:Ljava/util/Map;

    .line 346
    sget-object v0, Lcom/sec/internal/constants/ims/config/ConfigConstants;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p2}, Lcom/sec/internal/helper/RcsConfigurationHelper;->getUriParamWithPhoneId(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    .line 351
    :cond_0
    new-instance p2, Ljava/util/TreeMap;

    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {p2, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 352
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 355
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 356
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const-string v0, "NODATA"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 365
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-void

    .line 360
    :cond_1
    :goto_0
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 361
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 352
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0

    :cond_2
    if-eqz p1, :cond_3

    .line 365
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 366
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->mDataMap:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1

    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 342
    iput-object p1, p0, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->mDataMap:Ljava/util/Map;

    return-void
.end method

.method private getLboPcscfAddresses(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string p0, "root/application/0/lbo_p-cscf_address/"

    .line 524
    invoke-static {p0, p1, p2}, Lcom/sec/internal/helper/RcsConfigurationHelper;->getLboPcscfAddresses(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object p0

    .line 527
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "root/application/0/lbo_p-cscf_address/lbo_p-cscf_addresses/"

    .line 528
    invoke-static {p0, p1, p2}, Lcom/sec/internal/helper/RcsConfigurationHelper;->getLboPcscfAddresses(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object p0

    .line 531
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const-string p0, "root/application/0/3gpp_ims/lbo_p-cscf_address/"

    .line 532
    invoke-static {p0, p1, p2}, Lcom/sec/internal/helper/RcsConfigurationHelper;->getLboPcscfAddresses(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object p0

    .line 535
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    const-string p0, "root/application/0/3gpp_ims/lbo_p-cscf_addresses/"

    .line 536
    invoke-static {p0, p1, p2}, Lcom/sec/internal/helper/RcsConfigurationHelper;->getLboPcscfAddresses(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method private getLboPcscfAddressesBackwardCompatibility(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string p0, "root/application/0/lbo_p-cscf_address/"

    .line 545
    invoke-static {p0, p1, p2}, Lcom/sec/internal/helper/RcsConfigurationHelper;->getPublicUserIdAndLboPcscfAddr(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object p0

    .line 548
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "root/application/0/lbo_p-cscf_address/0/lbo_p-cscf_addresses/"

    .line 549
    invoke-static {p0, p1, p2}, Lcom/sec/internal/helper/RcsConfigurationHelper;->getPublicUserIdAndLboPcscfAddr(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object p0

    .line 552
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const-string p0, "root/application/0/3gpp_ims/lbo_p-cscf_address/"

    .line 553
    invoke-static {p0, p1, p2}, Lcom/sec/internal/helper/RcsConfigurationHelper;->getPublicUserIdAndLboPcscfAddr(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object p0

    .line 556
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    const-string p0, "root/application/0/3gpp_ims/lbo_p-cscf_addresses/"

    .line 557
    invoke-static {p0, p1, p2}, Lcom/sec/internal/helper/RcsConfigurationHelper;->getPublicUserIdAndLboPcscfAddr(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method private getPublicUserIdentities(Ljava/util/Map;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string p0, "root/application/0/public_user_identity_list/"

    .line 492
    invoke-static {p0, p1}, Lcom/sec/internal/helper/RcsConfigurationHelper;->getPublicUserIdentities(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object p0

    .line 495
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "root/application/0/public_user_identity_list/public_user_identities/"

    .line 496
    invoke-static {p0, p1}, Lcom/sec/internal/helper/RcsConfigurationHelper;->getPublicUserIdentities(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object p0

    .line 499
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const-string p0, "root/application/0/3gpp_ims/public_user_identity_list/"

    .line 500
    invoke-static {p0, p1}, Lcom/sec/internal/helper/RcsConfigurationHelper;->getPublicUserIdentities(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method private getPublicUserIdentitiesBackwardCompatibility(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string p0, "root/application/0/public_user_identity_list/"

    .line 508
    invoke-static {p0, p1, p2}, Lcom/sec/internal/helper/RcsConfigurationHelper;->getPublicUserIdAndLboPcscfAddr(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object p0

    .line 511
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "root/application/0/public_user_identity_list/0/public_user_identities/"

    .line 512
    invoke-static {p0, p1, p2}, Lcom/sec/internal/helper/RcsConfigurationHelper;->getPublicUserIdAndLboPcscfAddr(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object p0

    .line 515
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const-string p0, "root/application/0/3gpp_ims/public_user_identity_list/"

    .line 516
    invoke-static {p0, p1, p2}, Lcom/sec/internal/helper/RcsConfigurationHelper;->getPublicUserIdAndLboPcscfAddr(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method private readFromMap(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "readFromMap: param: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "RcsConfigurationHelper"

    invoke-static {v2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    iget-object v0, p0, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->mDataMap:Ljava/util/Map;

    const-string v3, ""

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 448
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 449
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readFromMap: path: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_1

    const-string p0, "readFromMap: path is null"

    .line 451
    invoke-static {v2, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 455
    :cond_1
    iget-object v3, p0, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->mDataMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, " value: "

    if-eqz v3, :cond_2

    .line 456
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 457
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 460
    :cond_2
    invoke-virtual {p1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->mDataMap:Ljava/util/Map;

    invoke-static {v0, v3, v6}, Lcom/sec/internal/helper/RcsConfigurationHelper;->readFromSecondMap(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    .line 461
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "root/application/0/ext/uuid_Value"

    .line 463
    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    const-string v8, "readFromMap: "

    if-eqz v7, :cond_3

    .line 465
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\'s value is null, trying to get from old path"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    iget-object v3, p0, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->mDataMap:Ljava/util/Map;

    const-string v7, "root/application/1/other/uuid_Value"

    invoke-virtual {v7, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :cond_3
    if-eqz v3, :cond_4

    .line 472
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    .line 473
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 477
    :cond_4
    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'s value is null, trying to get from UP20 path"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    iget-object p0, p0, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->mDataMap:Ljava/util/Map;

    const-string p1, "root/application/0/3gpp_ims/ext/gsma/uuid_Value"

    invoke-virtual {p1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Ljava/lang/String;

    :cond_5
    return-object v3

    :cond_6
    :goto_0
    const-string p0, "readFromMap: cannot read the param"

    .line 445
    invoke-static {v2, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method private readListFromMap(Ljava/lang/String;)Ljava/util/List;
    .locals 4
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

    .line 563
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 564
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readListFromMap: param: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "RcsConfigurationHelper"

    invoke-static {v3, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    iget-object v1, p0, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->mDataMap:Ljava/util/Map;

    if-eqz v1, :cond_7

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    if-nez p1, :cond_0

    goto :goto_3

    :cond_0
    const-string v1, "capdiscoveryallowedprefixes"

    .line 569
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 571
    iget-object p0, p0, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->mDataMap:Ljava/util/Map;

    const-string p1, "root/application/1/capdiscovery/capdiscoverywhitelist/capdiscoveryallowedprefixes/prefix"

    invoke-static {p1, p0}, Lcom/sec/internal/helper/RcsConfigurationHelper;->getCapAllowedPrefixes(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v1, "public_user_identity"

    .line 574
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 575
    iget-object v0, p0, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->mDataMap:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->getPublicUserIdentities(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    .line 576
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 577
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->mDataMap:Ljava/util/Map;

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->getPublicUserIdentitiesBackwardCompatibility(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_3
    const-string v1, "address"

    .line 580
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "addresstype"

    .line 581
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    .line 587
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " value: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 582
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->mDataMap:Ljava/util/Map;

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->getLboPcscfAddresses(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    .line 583
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_2

    .line 584
    :cond_6
    iget-object v0, p0, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->mDataMap:Ljava/util/Map;

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->getLboPcscfAddressesBackwardCompatibility(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_7
    :goto_3
    const-string p0, "readListFromMap: cannot read the param"

    .line 566
    invoke-static {v3, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public readBool(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 371
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readFromMap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 372
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "1"

    .line 373
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method public readImsUri(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;
    .locals 0

    .line 434
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readFromMap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 435
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "null"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 436
    invoke-static {p0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p2
.end method

.method public readInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 380
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readFromMap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 381
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 383
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 385
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_0
    :goto_0
    return-object p2
.end method

.method public readIntWithinRange(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 392
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    .line 393
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-lt p1, p3, :cond_1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-le p1, p3, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    return-object p2
.end method

.method public readListString(Ljava/lang/String;)Ljava/util/List;
    .locals 0
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

    .line 421
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readListFromMap(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public readLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    .line 401
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readFromMap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 402
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 404
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 406
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_0
    :goto_0
    return-object p2
.end method

.method public readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 413
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readFromMap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 414
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "null"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    return-object p2
.end method

.method public readUri(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    .line 426
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readFromMap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 427
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "null"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 428
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p2
.end method
