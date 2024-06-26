.class public Lcom/sec/internal/ims/config/workflow/WorkflowRjil;
.super Lcom/sec/internal/ims/config/workflow/WorkflowBase;
.source "WorkflowRjil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Initialize;,
        Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Finish;,
        Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Store;,
        Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Parse;,
        Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Authorize;,
        Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchOtp;,
        Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchHttps;,
        Lcom/sec/internal/ims/config/workflow/WorkflowRjil$FetchHttp;
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$OjB0C5bSUDvIkzZJQQZGA0xDd5k(Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Z
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->lambda$getStorage$0(Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 39
    const-class v0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Lcom/sec/internal/constants/Mno;I)V
    .registers 17

    move-object v2, p2

    move-object v3, p3

    move/from16 v10, p5

    .line 42
    new-instance v5, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;

    invoke-direct {v5, p2, p3, v10}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceRjil;-><init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;I)V

    new-instance v6, Lcom/sec/internal/ims/config/adapters/StorageAdapter;

    invoke-direct {v6}, Lcom/sec/internal/ims/config/adapters/StorageAdapter;-><init>()V

    new-instance v7, Lcom/sec/internal/ims/config/adapters/HttpAdapter;

    invoke-direct {v7, v10}, Lcom/sec/internal/ims/config/adapters/HttpAdapter;-><init>(I)V

    new-instance v8, Lcom/sec/internal/ims/config/adapters/XmlParserAdapter;

    invoke-direct {v8}, Lcom/sec/internal/ims/config/adapters/XmlParserAdapter;-><init>()V

    new-instance v9, Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    invoke-direct {v9, p2, p3}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;-><init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;)V

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    invoke-direct/range {v0 .. v10}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Lcom/sec/internal/constants/Mno;Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;Lcom/sec/internal/interfaces/ims/config/IXmlParserAdapter;Lcom/sec/internal/interfaces/ims/config/IDialogAdapter;I)V

    return-void
.end method

.method private static synthetic lambda$getStorage$0(Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Z
    .registers 2

    .line 100
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->getState()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method


# virtual methods
.method protected getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .registers 2

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getStorage()Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;
    .registers 2

    .line 100
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    .line 101
    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    return-object p0
.end method

.method work()V
    .registers 9

    const-string/jumbo v0, "wait 2 sec. and retry"

    .line 48
    new-instance v1, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Initialize;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Initialize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowRjil;)V

    .line 49
    sget v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->AUTO_CONFIG_MAX_FLOWCOUNT:I

    .line 51
    :goto_a
    iget-boolean v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mNeedToStopWork:Z

    if-nez v3, :cond_101

    if-eqz v1, :cond_101

    if-lez v2, :cond_101

    const-wide/16 v3, 0x7d0

    .line 53
    :try_start_14
    invoke-interface {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;->run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v1
    :try_end_18
    .catch Lcom/sec/internal/ims/config/exception/NoInitialDataException; {:try_start_14 .. :try_end_18} :catch_cc
    .catch Lcom/sec/internal/ims/config/exception/UnknownStatusException; {:try_start_14 .. :try_end_18} :catch_a0
    .catch Ljava/net/ConnectException; {:try_start_14 .. :try_end_18} :catch_74
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_14 .. :try_end_18} :catch_4d
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_18} :catch_1a

    goto/16 :goto_fd

    :catch_1a
    move-exception v1

    .line 78
    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unknown exception occur:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "wait 1 sec. and retry"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v3, 0x3e8

    .line 80
    invoke-virtual {p0, v3, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->sleep(J)V

    .line 81
    new-instance v3, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Initialize;

    invoke-direct {v3, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Initialize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowRjil;)V

    .line 82
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_fc

    :catch_4d
    move-exception v0

    .line 73
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SQLiteFullException occur:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteFullException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->LOG_TAG:Ljava/lang/String;

    const-string v2, "finish"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteFullException;->printStackTrace()V

    goto/16 :goto_101

    :catch_74
    move-exception v1

    .line 67
    sget-object v5, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ConnectException occur:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/net/ConnectException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    sget-object v5, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->LOG_TAG:Ljava/lang/String;

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-virtual {p0, v3, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->sleep(J)V

    .line 70
    new-instance v3, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Initialize;

    invoke-direct {v3, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Initialize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowRjil;)V

    .line 71
    invoke-virtual {v1}, Ljava/net/ConnectException;->printStackTrace()V

    goto :goto_fc

    :catch_a0
    move-exception v1

    .line 61
    sget-object v5, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UnknownStatusException occur:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/exception/UnknownStatusException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    sget-object v5, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->LOG_TAG:Ljava/lang/String;

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-virtual {p0, v3, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->sleep(J)V

    .line 64
    new-instance v3, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Initialize;

    invoke-direct {v3, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Initialize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowRjil;)V

    .line 65
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_fc

    :catch_cc
    move-exception v1

    .line 55
    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NoInitialDataException occur:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/exception/NoInitialDataException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "wait 10 sec. and retry"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v3, 0x2710

    .line 57
    invoke-virtual {p0, v3, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->sleep(J)V

    .line 58
    new-instance v3, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Initialize;

    invoke-direct {v3, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowRjil$Initialize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowRjil;)V

    .line 59
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_fc
    move-object v1, v3

    :goto_fd
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_a

    .line 86
    :cond_101
    :goto_101
    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mNeedToStopWork:Z

    if-eqz v0, :cond_110

    .line 87
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "work interrupted"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mNeedToStopWork:Z

    :cond_110
    return-void
.end method
