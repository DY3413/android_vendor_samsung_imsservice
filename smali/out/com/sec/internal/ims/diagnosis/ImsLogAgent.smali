.class public Lcom/sec/internal/ims/diagnosis/ImsLogAgent;
.super Landroid/content/ContentProvider;
.source "ImsLogAgent.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.sec.imsservice.log"

.field private static final DMUI_LOCK:Ljava/lang/Object;

.field private static final DRCS_KEY_RCS_USER_SETTING:Ljava/lang/String; = "RUSS"

.field private static final DRCS_LOCK:Ljava/lang/Object;

.field private static final DRPT_LOCK:Ljava/lang/Object;

.field private static final INTENT_ACTION_BIG_DATA_INFO:Ljava/lang/String; = "com.samsung.intent.action.BIG_DATA_INFO"

.field private static final INTENT_ACTION_DAILY_REPORT_EXPIRED:Ljava/lang/String; = "com.sec.imsservice.ACTION_DAILY_REPORT_EXPIRED"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final PERIOD_OF_DAILY_REPORT:I = 0x5265c00

.field private static final PSCI_LOCK:Ljava/lang/Object;

.field private static final REGI_LOCK:Ljava/lang/Object;

.field private static final SIMI_LOCK:Ljava/lang/Object;

.field private static final UNKNOWN_LOCK:Ljava/lang/Object;

.field private static final URI_TYPE_SEND_LOG:I = 0x1

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDailyReportExpiry:Landroid/app/PendingIntent;

.field private mEventLog:Lcom/sec/internal/helper/SimpleEventLog;


# direct methods
.method static bridge synthetic -$$Nest$monCsCallInfoReceived(Lcom/sec/internal/ims/diagnosis/ImsLogAgent;IILjava/lang/String;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->onCsCallInfoReceived(IILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monDailyReport(Lcom/sec/internal/ims/diagnosis/ImsLogAgent;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->onDailyReport()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .registers 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 56
    const-class v0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->LOG_TAG:Ljava/lang/String;

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->UNKNOWN_LOCK:Ljava/lang/Object;

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->REGI_LOCK:Ljava/lang/Object;

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->PSCI_LOCK:Ljava/lang/Object;

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->SIMI_LOCK:Ljava/lang/Object;

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->DMUI_LOCK:Ljava/lang/Object;

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->DRPT_LOCK:Ljava/lang/Object;

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->DRCS_LOCK:Ljava/lang/Object;

    .line 80
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "send/*"

    const/4 v2, 0x1

    const-string v3, "com.sec.imsservice.log"

    .line 84
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 55
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->mContext:Landroid/content/Context;

    .line 78
    iput-object v0, p0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    return-void
.end method

.method private declared-synchronized getFeatureLock(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    monitor-enter p0

    :try_start_1
    const-string v0, "REGI"

    .line 269
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 270
    sget-object p1, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->REGI_LOCK:Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_4d

    monitor-exit p0

    return-object p1

    :cond_d
    :try_start_d
    const-string v0, "PSCI"

    .line 271
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 272
    sget-object p1, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->PSCI_LOCK:Ljava/lang/Object;
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_4d

    monitor-exit p0

    return-object p1

    :cond_19
    :try_start_19
    const-string v0, "SIMI"

    .line 273
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 274
    sget-object p1, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->SIMI_LOCK:Ljava/lang/Object;
    :try_end_23
    .catchall {:try_start_19 .. :try_end_23} :catchall_4d

    monitor-exit p0

    return-object p1

    :cond_25
    :try_start_25
    const-string v0, "DMUI"

    .line 275
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 276
    sget-object p1, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->DMUI_LOCK:Ljava/lang/Object;
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_4d

    monitor-exit p0

    return-object p1

    :cond_31
    :try_start_31
    const-string v0, "DRPT"

    .line 277
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 278
    sget-object p1, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->DRPT_LOCK:Ljava/lang/Object;
    :try_end_3b
    .catchall {:try_start_31 .. :try_end_3b} :catchall_4d

    monitor-exit p0

    return-object p1

    :cond_3d
    :try_start_3d
    const-string v0, "DRCS"

    .line 279
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_49

    .line 280
    sget-object p1, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->DRCS_LOCK:Ljava/lang/Object;
    :try_end_47
    .catchall {:try_start_3d .. :try_end_47} :catchall_4d

    monitor-exit p0

    return-object p1

    .line 282
    :cond_49
    :try_start_49
    sget-object p1, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->UNKNOWN_LOCK:Ljava/lang/Object;
    :try_end_4b
    .catchall {:try_start_49 .. :try_end_4b} :catchall_4d

    monitor-exit p0

    return-object p1

    :catchall_4d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized getFeatureName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    monitor-enter p0

    :try_start_1
    const-string v0, "REGI"

    .line 251
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string p1, "REGI"
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_4d

    .line 252
    monitor-exit p0

    return-object p1

    :cond_d
    :try_start_d
    const-string v0, "PSCI"

    .line 253
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string p1, "PSCI"
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_4d

    .line 254
    monitor-exit p0

    return-object p1

    :cond_19
    :try_start_19
    const-string v0, "SIMI"

    .line 255
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    const-string p1, "SIMI"
    :try_end_23
    .catchall {:try_start_19 .. :try_end_23} :catchall_4d

    .line 256
    monitor-exit p0

    return-object p1

    :cond_25
    :try_start_25
    const-string v0, "DMUI"

    .line 257
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    const-string p1, "DMUI"
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_4d

    .line 258
    monitor-exit p0

    return-object p1

    :cond_31
    :try_start_31
    const-string v0, "DRPT"

    .line 259
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    const-string p1, "DRPT"
    :try_end_3b
    .catchall {:try_start_31 .. :try_end_3b} :catchall_4d

    .line 260
    monitor-exit p0

    return-object p1

    :cond_3d
    :try_start_3d
    const-string v0, "DRCS"

    .line 261
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_49

    const-string p1, "DRCS"
    :try_end_47
    .catchall {:try_start_3d .. :try_end_47} :catchall_4d

    .line 262
    monitor-exit p0

    return-object p1

    :cond_49
    :try_start_49
    const-string p1, "UNKNOWN"
    :try_end_4b
    .catchall {:try_start_49 .. :try_end_4b} :catchall_4d

    .line 264
    monitor-exit p0

    return-object p1

    :catchall_4d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private getPeriodForDailyReport()I
    .registers 2

    const-string p0, "persist.ims.debug.period.dr"

    const v0, 0x5265c00

    .line 243
    invoke-static {p0, v0}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-gtz p0, :cond_c

    goto :goto_d

    :cond_c
    move v0, p0

    :goto_d
    return v0
.end method

.method private isSmsAppDefault()Z
    .registers 6

    .line 595
    sget-object v0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->LOG_TAG:Ljava/lang/String;

    const-string v1, "get default sms app."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    :try_start_7
    iget-object v0, p0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_d} :catch_e

    goto :goto_26

    :catch_e
    move-exception v0

    .line 600
    sget-object v1, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to getDefaultSmsPackage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_26
    if-nez v0, :cond_31

    .line 604
    sget-object p0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->LOG_TAG:Ljava/lang/String;

    const-string v0, "default sms app is null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 607
    :cond_31
    iget-object p0, p0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/internal/helper/os/PackageUtils;->getMsgAppPkgName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 608
    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 609
    sget-object v2, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "default sms app:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " samsungPackage:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isDefaultMessageAppInUse : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private normalizeLog(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 3

    .line 500
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "\\{"

    const-string v0, ""

    .line 501
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "\\}"

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "\\s+"

    const-string v0, "^"

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private onCsCallInfoReceived(IILjava/lang/String;)V
    .registers 14

    const/4 v0, 0x1

    .line 588
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz p2, :cond_20

    if-eq p2, v0, :cond_20

    .line 511
    sget-object p0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onCsCallInfoReceived : ignore except CEND/DROP! received: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 515
    :cond_20
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_27

    return-void

    :cond_27
    const-string v2, "\""

    const-string v3, ""

    .line 516
    invoke-virtual {p3, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    .line 517
    sget-object v2, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCsCallInfoReceived: remove quotes ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, ","

    .line 519
    invoke-virtual {p3, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 524
    array-length v3, p3

    if-ge v3, v0, :cond_59

    const-string p0, "onCsCallInfoReceived: No data"

    .line 525
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_59
    const/4 v2, 0x0

    const/4 v3, -0x1

    move v6, v2

    move v4, v3

    move v5, v4

    .line 530
    :goto_5e
    :try_start_5e
    array-length v7, p3

    if-ge v6, v7, :cond_af

    .line 531
    aget-object v7, p3, v6

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_ac

    .line 532
    array-length v8, v7

    if-le v8, v0, :cond_ac

    .line 533
    aget-object v8, p3, v6

    const-string v9, "Ctyp"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_83

    .line 534
    aget-object v3, v7, v0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_ac

    .line 535
    :cond_83
    aget-object v8, p3, v6

    const-string v9, "Csta"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_98

    .line 536
    aget-object v4, v7, v0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_ac

    .line 537
    :cond_98
    aget-object v8, p3, v6

    const-string v9, "Etyp"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_ac

    .line 538
    aget-object v5, v7, v0

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_ac
    .catch Ljava/lang/NumberFormatException; {:try_start_5e .. :try_end_ac} :catch_15b

    :cond_ac
    :goto_ac
    add-int/lit8 v6, v6, 0x1

    goto :goto_5e

    :cond_af
    if-lt v3, v0, :cond_15a

    const/4 p3, 0x3

    if-gt v3, p3, :cond_15a

    .line 550
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 551
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    if-ne p2, v0, :cond_13a

    .line 560
    sget-object p2, Lcom/sec/internal/constants/ims/DiagnosisConstants$CALL_BEARER;->CS:Lcom/sec/internal/constants/ims/DiagnosisConstants$CALL_BEARER;

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/DiagnosisConstants$CALL_BEARER;->getValue()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v8, "PSCS"

    invoke-virtual {v7, v8, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "TYPE"

    if-ne v3, p3, :cond_dc

    const/4 v3, 0x7

    .line 562
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, p2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_e3

    .line 564
    :cond_dc
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, p2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_e3
    const-string p2, "STAT"

    if-ne v4, v0, :cond_f4

    .line 568
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v7, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "CSMO"

    .line 569
    invoke-virtual {v6, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_10c

    :cond_f4
    const/4 p3, 0x2

    if-ne v4, p3, :cond_104

    .line 571
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v7, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "CSMT"

    .line 572
    invoke-virtual {v6, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_10c

    :cond_104
    const/4 p3, 0x5

    .line 574
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v7, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_10c
    const-string p2, "FLCD"

    .line 576
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v7, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "PSCI"

    .line 579
    invoke-direct {p0, p1, p2, v7, v2}, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->storeLogs(ILjava/lang/String;Landroid/content/ContentValues;I)Z

    .line 580
    iget-object p3, p0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p2}, Lcom/sec/internal/ims/diagnosis/ImsLogAgentUtil;->requestToSendStoredLog(ILandroid/content/Context;Ljava/lang/String;)V

    .line 581
    sget-object p2, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCsCallInfoReceived: send PSCI: "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "CEFC"

    .line 584
    invoke-virtual {v6, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_13a
    const-string p2, "CETC"

    .line 588
    invoke-virtual {v6, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 589
    sget-object p2, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCsCallInfoReceived: storeLogs: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "DRPT"

    .line 590
    invoke-direct {p0, p1, p2, v6, v0}, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->storeLogs(ILjava/lang/String;Landroid/content/ContentValues;I)Z

    :cond_15a
    return-void

    :catch_15b
    move-exception p0

    .line 543
    sget-object p1, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onCsCallInfoReceived: NumberFormatException! "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onDailyReport()V
    .registers 6

    const-string v0, "DRCS"

    .line 215
    sget-object v1, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->LOG_TAG:Ljava/lang/String;

    const-string v2, "onDailyReport"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v1, p0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->mDailyReportExpiry:Landroid/app/PendingIntent;

    if-eqz v1, :cond_15

    .line 218
    iget-object v2, p0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/sec/internal/helper/AlarmTimer;->stop(Landroid/content/Context;Landroid/app/PendingIntent;)V

    const/4 v1, 0x0

    .line 219
    iput-object v1, p0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->mDailyReportExpiry:Landroid/app/PendingIntent;

    .line 222
    :cond_15
    iget-object v1, p0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->mContext:Landroid/content/Context;

    const-string v2, "next_drpt_schedule"

    const/4 v3, 0x0

    const-string v4, "DRPT"

    invoke-static {v3, v1, v4, v2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->remove(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :try_start_1f
    invoke-direct {p0, v3, v4}, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->sendStoredLog(ILjava/lang/String;)I

    .line 227
    invoke-direct {p0, v3, v0}, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->sendStoredLog(ILjava/lang/String;)I

    .line 229
    iget-object v1, p0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/sec/internal/ims/diagnosis/ImsLogAgentUtil;->getCommonHeader(Landroid/content/Context;I)Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentValues;->size()I

    move-result v1

    if-lez v1, :cond_38

    .line 230
    invoke-direct {p0, v2, v4}, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->sendStoredLog(ILjava/lang/String;)I

    .line 231
    invoke-direct {p0, v2, v0}, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->sendStoredLog(ILjava/lang/String;)I
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_38} :catch_3e
    .catchall {:try_start_1f .. :try_end_38} :catchall_3c

    .line 238
    :cond_38
    :goto_38
    invoke-direct {p0}, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->scheduleDailyReport()V

    goto :goto_5e

    :catchall_3c
    move-exception v0

    goto :goto_5f

    :catch_3e
    move-exception v0

    .line 234
    :try_start_3f
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 235
    iget-object v1, p0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendLogToAgent: Exception - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V
    :try_end_5d
    .catchall {:try_start_3f .. :try_end_5d} :catchall_3c

    goto :goto_38

    :goto_5e
    return-void

    .line 238
    :goto_5f
    invoke-direct {p0}, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->scheduleDailyReport()V

    .line 239
    throw v0
.end method

.method private scheduleDailyReport()V
    .registers 12

    .line 469
    iget-object v0, p0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->mDailyReportExpiry:Landroid/app/PendingIntent;

    if-eqz v0, :cond_5

    return-void

    .line 473
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->mContext:Landroid/content/Context;

    const-string v1, "DRPT"

    const/4 v2, 0x0

    invoke-static {v2, v0, v1, v2, v2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "next_drpt_schedule"

    const-wide/16 v3, 0x0

    .line 476
    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 477
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    cmp-long v9, v5, v3

    if-lez v9, :cond_2b

    cmp-long v10, v5, v7

    if-gtz v10, :cond_2b

    .line 480
    sget-object v0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "scheduleDailyReport: DRPT timer is expired. Sending it now."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41

    :cond_2b
    if-nez v9, :cond_34

    .line 483
    invoke-direct {p0}, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->getPeriodForDailyReport()I

    move-result v3

    int-to-long v3, v3

    add-long v5, v7, v3

    :cond_34
    sub-long v3, v5, v7

    .line 487
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 490
    :goto_41
    sget-object v0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "scheduleDailyReport: delay ["

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "] scheduled time ["

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.imsservice.ACTION_DAILY_REPORT_EXPIRED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 494
    iget-object v1, p0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 495
    iget-object v1, p0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->mContext:Landroid/content/Context;

    const/high16 v5, 0x2000000

    invoke-static {v1, v2, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->mDailyReportExpiry:Landroid/app/PendingIntent;

    .line 496
    iget-object p0, p0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->mContext:Landroid/content/Context;

    invoke-static {p0, v0, v3, v4, v2}, Lcom/sec/internal/helper/AlarmTimer;->start(Landroid/content/Context;Landroid/app/PendingIntent;JZ)V

    return-void
.end method

.method private sendLogs(ILjava/lang/String;Landroid/content/ContentValues;)Z
    .registers 11

    .line 287
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->getFeatureLock(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 288
    :try_start_5
    sget-object v1, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendLogs: feature ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-static {p3}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Landroid/content/ContentValues;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 291
    iget-object p0, p0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "sendLogs: ["

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "] is null or empty!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 292
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_5 .. :try_end_44} :catchall_10d

    const/4 p0, 0x0

    return p0

    :cond_46
    const/4 v1, 0x0

    .line 297
    :try_start_47
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_4c
    .catch Lorg/json/JSONException; {:try_start_47 .. :try_end_4c} :catch_b3
    .catchall {:try_start_47 .. :try_end_4c} :catchall_10d

    .line 300
    :try_start_4c
    iget-object v3, p0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/sec/internal/ims/diagnosis/ImsLogAgentUtil;->getCommonHeader(Landroid/content/Context;I)Landroid/content/ContentValues;

    move-result-object p1

    .line 301
    invoke-virtual {p1}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_72

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 302
    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_5a

    .line 306
    :cond_72
    invoke-virtual {p3}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 307
    invoke-virtual {p3, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_a9

    .line 309
    iget-object v4, p0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendLogs: ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] is null!"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    goto :goto_7a

    .line 313
    :cond_a9
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_b0
    .catch Lorg/json/JSONException; {:try_start_4c .. :try_end_b0} :catch_b1
    .catchall {:try_start_4c .. :try_end_b0} :catchall_10d

    goto :goto_7a

    :catch_b1
    move-exception p1

    goto :goto_b5

    :catch_b3
    move-exception p1

    move-object v2, v1

    .line 316
    :goto_b5
    :try_start_b5
    sget-object p3, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendLogs: JSONException! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_d0
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->normalizeLog(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    .line 320
    sget-object p3, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendLogs: send ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    invoke-virtual {p0, p2, p1}, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->sendLogToHqmManager(Ljava/lang/String;Ljava/lang/String;)Z

    const-string p1, "DRPT"

    .line 323
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_10a

    .line 324
    iget-object p0, p0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "content://com.sec.imsservice.log/log/drpt"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 326
    :cond_10a
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_10d
    move-exception p0

    monitor-exit v0
    :try_end_10f
    .catchall {:try_start_b5 .. :try_end_10f} :catchall_10d

    throw p0
.end method

.method private sendStoredLog(ILjava/lang/String;)I
    .registers 12

    .line 341
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->getFeatureName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "UNKNOWN"

    .line 342
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    .line 343
    iget-object p0, p0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "sendStoredLog: Invalid feature ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    return v1

    .line 347
    :cond_2a
    sget-object v0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendStoredLog: feature ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p1, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 349
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->getFeatureLock(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 350
    :try_start_4b
    iget-object v2, p0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->mContext:Landroid/content/Context;

    invoke-static {p1, v2, p2, v1, v1}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 351
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 353
    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_62
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 354
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 355
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 356
    instance-of v7, v5, Ljava/lang/Integer;

    if-eqz v7, :cond_8a

    .line 357
    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_62

    .line 358
    :cond_8a
    instance-of v7, v5, Ljava/lang/String;

    if-eqz v7, :cond_94

    .line 359
    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_62

    .line 360
    :cond_94
    instance-of v7, v5, Ljava/lang/Long;

    if-eqz v7, :cond_a6

    .line 361
    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_62

    .line 363
    :cond_a6
    iget-object v5, p0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "sendStoredLog: ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "] has wrong data type!"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, p1, v6}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    goto :goto_62

    .line 367
    :cond_c3
    invoke-static {v3}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Landroid/content/ContentValues;)Z

    move-result v4

    if-eqz v4, :cond_e7

    .line 368
    iget-object p0, p0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendStoredLog: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "] is null or empty"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 369
    monitor-exit v0

    return v1

    :cond_e7
    const-string v4, "DRPT"

    .line 373
    invoke-virtual {p2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-eqz v4, :cond_154

    const-string v4, "VLTS"

    .line 375
    iget-object v7, p0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->mContext:Landroid/content/Context;

    invoke-static {v7, v5, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getVoiceCallType(Landroid/content/Context;II)I

    move-result v7

    if-nez v7, :cond_fd

    move v7, v6

    goto :goto_fe

    :cond_fd
    move v7, v1

    :goto_fe
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 374
    invoke-virtual {v3, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "VILS"

    .line 377
    iget-object v7, p0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->mContext:Landroid/content/Context;

    invoke-static {v7, v5, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getVideoCallType(Landroid/content/Context;II)I

    move-result v5

    if-nez v5, :cond_111

    move v5, v6

    goto :goto_112

    :cond_111
    move v5, v1

    :goto_112
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 376
    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "VWES"

    .line 378
    iget-object v5, p0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->mContext:Landroid/content/Context;

    invoke-static {v5, p1}, Lcom/sec/internal/constants/ims/VowifiConfig;->isEnabled(Landroid/content/Context;I)Z

    move-result v5

    if-eqz v5, :cond_125

    move v5, v6

    goto :goto_126

    :cond_125
    move v5, v1

    :goto_126
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "CSES"

    .line 379
    iget-object v5, p0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->mContext:Landroid/content/Context;

    invoke-static {v5, p1}, Lcom/sec/internal/constants/ims/VowifiConfig;->isCrossSimSettingEnabled(Landroid/content/Context;I)Z

    move-result v5

    if-eqz v5, :cond_138

    move v1, v6

    :cond_138
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "VWPS"

    .line 380
    iget-object v4, p0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->mContext:Landroid/content/Context;

    invoke-static {v4, v6, p1}, Lcom/sec/internal/constants/ims/VowifiConfig;->getPrefMode(Landroid/content/Context;II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "next_drpt_schedule"

    .line 383
    invoke-virtual {v3, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_1a2

    :cond_154
    const-string v4, "DRCS"

    .line 384
    invoke-virtual {p2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a2

    .line 385
    invoke-direct {p0}, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->isSmsAppDefault()Z

    move-result v4

    const-string v7, "CMAS"

    if-eqz v4, :cond_165

    goto :goto_166

    :cond_165
    move v1, v6

    .line 386
    :goto_166
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-nez v4, :cond_180

    .line 388
    iget-object v1, p0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 389
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_180

    const-string v4, "CMDA"

    .line 390
    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_180
    const-string v1, "persist.ril.config.defaultmsgapp"

    .line 393
    invoke-static {v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 394
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_18e

    const-string v1, "NA"

    :cond_18e
    const-string v4, "IMDA"

    .line 397
    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "RUSS"

    .line 398
    iget-object v4, p0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->mContext:Landroid/content/Context;

    invoke-static {v4, v5, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getRcsUserSetting(Landroid/content/Context;II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 401
    :cond_1a2
    :goto_1a2
    sget-object v1, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendStoredLog: send logs of ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, p1, v4}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 402
    invoke-direct {p0, p1, p2, v3}, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->sendLogs(ILjava/lang/String;Landroid/content/ContentValues;)Z

    .line 404
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 405
    monitor-exit v0

    return v6

    :catchall_1ce
    move-exception p0

    monitor-exit v0
    :try_end_1d0
    .catchall {:try_start_4b .. :try_end_1d0} :catchall_1ce

    throw p0
.end method

.method private storeLogs(ILjava/lang/String;Landroid/content/ContentValues;I)Z
    .registers 16

    .line 411
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->getFeatureLock(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 412
    :try_start_5
    invoke-static {p3}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Landroid/content/ContentValues;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2a

    .line 413
    iget-object p0, p0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "storeLogs: ["

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "] is null or empty"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 414
    monitor-exit v0

    return v2

    .line 417
    :cond_2a
    iget-object v1, p0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->mContext:Landroid/content/Context;

    invoke-static {p1, v1, p2, v2, v2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 418
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 420
    invoke-virtual {p3}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_ed

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 421
    invoke-virtual {p3, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_6c

    .line 423
    iget-object v5, p0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "storeLogs: ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] is null!"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V
    :try_end_6b
    .catchall {:try_start_5 .. :try_end_6b} :catchall_10e

    goto :goto_3c

    .line 428
    :cond_6c
    :try_start_6c
    instance-of v7, v6, Ljava/lang/Integer;

    const/4 v8, 0x2

    if-eqz v7, :cond_88

    .line 429
    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 430
    invoke-interface {p1, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-ne p4, v5, :cond_7f

    add-int/2addr v6, v7

    goto :goto_84

    :cond_7f
    if-ne p4, v8, :cond_84

    if-gt v6, v7, :cond_84

    move v6, v7

    .line 438
    :cond_84
    :goto_84
    invoke-interface {v1, v4, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_3c

    .line 439
    :cond_88
    instance-of v7, v6, Ljava/lang/Long;

    if-eqz v7, :cond_a7

    .line 440
    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v9, 0x0

    .line 441
    invoke-interface {p1, v4, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    if-ne p4, v5, :cond_9c

    add-long/2addr v6, v9

    goto :goto_a3

    :cond_9c
    if-ne p4, v8, :cond_a3

    cmp-long v5, v6, v9

    if-gtz v5, :cond_a3

    move-wide v6, v9

    .line 449
    :cond_a3
    :goto_a3
    invoke-interface {v1, v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_3c

    .line 450
    :cond_a7
    instance-of v5, v6, Ljava/lang/String;

    if-eqz v5, :cond_b1

    .line 451
    check-cast v6, Ljava/lang/String;

    invoke-interface {v1, v4, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_3c

    .line 453
    :cond_b1
    iget-object v5, p0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "storeLogs: ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "] has wrong data type!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V
    :try_end_cd
    .catch Ljava/lang/ClassCastException; {:try_start_6c .. :try_end_cd} :catch_cf
    .catchall {:try_start_6c .. :try_end_cd} :catchall_10e

    goto/16 :goto_3c

    .line 456
    :catch_cf
    :try_start_cf
    iget-object v5, p0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "storeLogs: ClassCastException! key: ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]!"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    goto/16 :goto_3c

    .line 461
    :cond_ed
    sget-object p0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "storeLogs: feature ["

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 463
    monitor-exit v0

    return v5

    :catchall_10e
    move-exception p0

    monitor-exit v0
    :try_end_110
    .catchall {:try_start_cf .. :try_end_110} :catchall_10e

    throw p0
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 4

    const-string p3, "logAndAdd"

    .line 200
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 201
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_13

    .line 202
    iget-object p0, p0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {p0, p2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 4

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    .line 210
    new-instance p1, Lcom/sec/internal/log/IndentingPrintWriter;

    const-string p3, "  "

    invoke-direct {p1, p2, p3}, Lcom/sec/internal/log/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 211
    iget-object p0, p0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/SimpleEventLog;->dump(Lcom/sec/internal/log/IndentingPrintWriter;)V

    return-void
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 2

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 10

    if-eqz p1, :cond_48

    if-nez p2, :cond_5

    goto :goto_48

    .line 164
    :cond_5
    invoke-static {p1}, Lcom/sec/internal/helper/UriUtil;->getSimSlotFromUri(Landroid/net/Uri;)I

    move-result v0

    const-string v1, "feature"

    .line 165
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "send_mode"

    .line 166
    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "overwrite_mode"

    .line 167
    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    if-nez v6, :cond_23

    const/4 v6, 0x0

    .line 169
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 173
    :cond_23
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    if-eqz v4, :cond_44

    .line 177
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_35

    goto :goto_44

    .line 179
    :cond_35
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_47

    .line 180
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v0, v2, p2, v1}, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->storeLogs(ILjava/lang/String;Landroid/content/ContentValues;I)Z

    goto :goto_47

    .line 178
    :cond_44
    :goto_44
    invoke-direct {p0, v0, v2, p2}, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->sendLogs(ILjava/lang/String;Landroid/content/ContentValues;)Z

    :cond_47
    :goto_47
    return-object p1

    .line 160
    :cond_48
    :goto_48
    sget-object p0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->LOG_TAG:Ljava/lang/String;

    const-string p1, "insert: parameter Uri or ContentValues has unexpected null value"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()Z
    .registers 5

    .line 91
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->mContext:Landroid/content/Context;

    .line 92
    new-instance v1, Lcom/sec/internal/helper/SimpleEventLog;

    sget-object v2, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->LOG_TAG:Ljava/lang/String;

    const/16 v3, 0xc8

    invoke-direct {v1, v0, v2, v3}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 94
    invoke-direct {p0}, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->scheduleDailyReport()V

    .line 96
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.intent.action.BIG_DATA_INFO"

    .line 97
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.imsservice.ACTION_DAILY_REPORT_EXPIRED"

    .line 98
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    iget-object v1, p0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/sec/internal/ims/diagnosis/ImsLogAgent$1;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/diagnosis/ImsLogAgent$1;-><init>(Lcom/sec/internal/ims/diagnosis/ImsLogAgent;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 p0, 0x1

    return p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 6

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected sendLogToHqmManager(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 333
    iget-object p0, p0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->mContext:Landroid/content/Context;

    const-string v0, "HqmManagerService"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/os/SemHqmManager;

    if-nez v0, :cond_f

    const/4 p0, 0x0

    return p0

    :cond_f
    const/4 v1, 0x0

    const-string v2, "Telephony"

    const-string/jumbo v4, "sm"

    const-string v5, "0.0"

    const-string/jumbo v6, "sec"

    const-string v7, ""

    const-string v9, ""

    move-object v3, p1

    move-object v8, p2

    .line 337
    invoke-virtual/range {v0 .. v9}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5

    .line 133
    sget-object p2, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {p2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p2

    const/4 p3, 0x1

    if-eq p2, p3, :cond_27

    .line 149
    iget-object p0, p0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "update: Invalid uri ["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    const/4 p3, 0x0

    goto :goto_48

    .line 135
    :cond_27
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p2

    .line 136
    invoke-static {p1}, Lcom/sec/internal/helper/UriUtil;->getSimSlotFromUri(Landroid/net/Uri;)I

    move-result p1

    const-string p4, "DRPT"

    .line 138
    invoke-virtual {p4, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_45

    const-string p4, "DRCS"

    .line 139
    invoke-virtual {p4, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_40

    goto :goto_45

    .line 143
    :cond_40
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->sendStoredLog(ILjava/lang/String;)I

    move-result p3

    goto :goto_48

    .line 140
    :cond_45
    :goto_45
    invoke-direct {p0}, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->onDailyReport()V

    :goto_48
    return p3
.end method
