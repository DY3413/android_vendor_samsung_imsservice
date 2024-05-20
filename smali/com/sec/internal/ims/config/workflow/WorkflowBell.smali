.class public Lcom/sec/internal/ims/config/workflow/WorkflowBell;
.super Lcom/sec/internal/ims/config/workflow/WorkflowBase;
.source "WorkflowBell.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/config/workflow/WorkflowBell$Finish;,
        Lcom/sec/internal/ims/config/workflow/WorkflowBell$Store;,
        Lcom/sec/internal/ims/config/workflow/WorkflowBell$Parse;,
        Lcom/sec/internal/ims/config/workflow/WorkflowBell$Authorize;,
        Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchOtp;,
        Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttps;,
        Lcom/sec/internal/ims/config/workflow/WorkflowBell$FetchHttp;,
        Lcom/sec/internal/ims/config/workflow/WorkflowBell$Initialize;
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-class v0, Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBell;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Lcom/sec/internal/constants/Mno;I)V
    .locals 0

    .line 35
    invoke-direct/range {p0 .. p5}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Lcom/sec/internal/constants/Mno;I)V

    return-void
.end method


# virtual methods
.method protected getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method work()V
    .locals 5

    .line 40
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Initialize;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Initialize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowBell;)V

    .line 41
    sget v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->AUTO_CONFIG_MAX_FLOWCOUNT:I

    :goto_0
    if-eqz v0, :cond_1

    if-lez v1, :cond_1

    .line 45
    :try_start_0
    invoke-interface {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;->run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v0
    :try_end_0
    .catch Lcom/sec/internal/ims/config/exception/NoInitialDataException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/sec/internal/ims/config/exception/UnknownStatusException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    .line 64
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 65
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowBell;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unknown exception occur:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_0
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowBell;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "wait 1 sec. and retry"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x3e8

    .line 68
    invoke-virtual {p0, v2, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->sleep(J)V

    .line 69
    new-instance v2, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Initialize;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Initialize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowBell;)V

    .line 70
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    :catch_1
    move-exception v0

    .line 59
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowBell;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SQLiteFullException occur:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteFullException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowBell;->LOG_TAG:Ljava/lang/String;

    const-string v3, "finish workflow"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    new-instance v2, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Finish;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowBell;)V

    .line 62
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteFullException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0

    .line 53
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowBell;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UnknownStatusException occur:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/exception/UnknownStatusException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowBell;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "wait 2 sec. and retry"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x7d0

    .line 55
    invoke-virtual {p0, v2, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->sleep(J)V

    .line 56
    new-instance v2, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Initialize;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Initialize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowBell;)V

    .line 57
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception v0

    .line 47
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowBell;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NoInitialDataException occur:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/exception/NoInitialDataException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowBell;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "wait 10 sec. and retry"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x2710

    .line 49
    invoke-virtual {p0, v2, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->sleep(J)V

    .line 50
    new-instance v2, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Initialize;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBell$Initialize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowBell;)V

    .line 51
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    move-object v0, v2

    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    :cond_1
    return-void
.end method
