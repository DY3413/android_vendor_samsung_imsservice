.class Lcom/sec/internal/ims/config/workflow/WorkflowTmo$ConfigurationParamObserver;
.super Landroid/database/ContentObserver;
.source "WorkflowTmo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/workflow/WorkflowTmo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConfigurationParamObserver"
.end annotation


# static fields
.field private static final AUTOCONFIG_START_DELAY:I = 0x7d0


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowTmo;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowTmo;Landroid/content/Context;)V
    .locals 0

    .line 347
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$ConfigurationParamObserver;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowTmo;

    .line 348
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 349
    iput-object p2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$ConfigurationParamObserver;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    .line 354
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 355
    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$ConfigurationParamObserver;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowTmo;

    iget p2, p2, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v0, "device config is changed so start autoconfiguration."

    invoke-static {p1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 356
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$ConfigurationParamObserver;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowTmo;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": Device config is changed, start autoconfig"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->addEventLog(Ljava/lang/String;)V

    .line 357
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$ConfigurationParamObserver;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowTmo;

    iget p2, p2, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",CHDC"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const p2, 0x13020201

    invoke-static {p2, p1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 358
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$ConfigurationParamObserver;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowTmo;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->mIsNoInitialData:Z

    const-wide/16 v0, 0x7d0

    .line 359
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method registerObserver()V
    .locals 4

    .line 363
    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$ConfigurationParamObserver;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowTmo;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v2, "registerObserver"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 365
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$ConfigurationParamObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->CONFIG_PARAMS_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 367
    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$ConfigurationParamObserver;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowTmo;

    iget p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerObserver is failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method retrieveConfiguration()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 382
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$ConfigurationParamObserver;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowTmo;

    iget v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 383
    :cond_0
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object v0

    .line 384
    :goto_0
    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$ConfigurationParamObserver;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowTmo;

    iget v3, v3, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "imsi: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 385
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$ConfigurationParamObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->CONFIG_PARAMS_URI:Landroid/net/Uri;

    const-string v2, "device_config"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v0, v7, v9

    const/4 v8, 0x0

    const-string v6, "imsi=?"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 387
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 388
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 385
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0

    :cond_1
    :goto_2
    if-eqz v0, :cond_2

    .line 390
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    if-nez v1, :cond_3

    .line 393
    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$ConfigurationParamObserver;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowTmo;

    iget p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v1, "Not the correct imsi"

    invoke-static {v0, p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v9

    :cond_3
    const-string v0, "<RCSConfig>"

    .line 397
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0xb

    const-string v3, "</RCSConfig>"

    .line 398
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 400
    :try_start_2
    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$ConfigurationParamObserver;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowTmo;

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->mConfigurationParams:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    .line 406
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$ConfigurationParamObserver;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowTmo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<?xml version=\"1.0\"?>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$ConfigurationParamObserver;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowTmo;

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->mConfigurationParams:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->mConfigurationParams:Ljava/lang/String;

    return v2

    .line 402
    :catch_0
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$ConfigurationParamObserver;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowTmo;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->mConfigurationParams:Ljava/lang/String;

    .line 403
    new-instance p0, Lcom/sec/internal/ims/config/exception/NoInitialDataException;

    const-string v0, "Configuration Params in ContentProvider is not valid"

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/config/exception/NoInitialDataException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method unregisterObserver()V
    .locals 4

    .line 372
    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$ConfigurationParamObserver;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowTmo;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string/jumbo v2, "unregisterObserver"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 374
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$ConfigurationParamObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 376
    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$ConfigurationParamObserver;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowTmo;

    iget p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterObserver is failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    return-void
.end method
