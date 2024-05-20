.class public Lcom/samsung/android/cmcp2phelper/transport/CphManager;
.super Ljava/lang/Object;
.source "CphManager.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String;

.field private static final executor:Ljava/util/concurrent/ExecutorService;


# instance fields
.field mContext:Landroid/content/Context;

.field mLogHandler:Landroid/os/Handler;

.field mMessageId:I

.field mServiceInfo:Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

.field mUnicastReceiver:Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastReceiver;

.field mUnicastReceiver2:Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cmcp2phelper/1.3.06/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/cmcp2phelper/transport/CphManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->LOG_TAG:Ljava/lang/String;

    const/16 v0, 0x10

    .line 23
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->executor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->mContext:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->mServiceInfo:Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

    return-void
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 47
    :try_start_0
    sget-object v0, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private getNextMessageID()I
    .locals 3

    .line 100
    iget v0, p0, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->mMessageId:I

    const/4 v1, 0x1

    const v2, 0x7fffffff

    if-le v2, v0, :cond_0

    add-int/2addr v0, v1

    .line 101
    iput v0, p0, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->mMessageId:I

    goto :goto_0

    .line 103
    :cond_0
    iput v1, p0, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->mMessageId:I

    .line 105
    :goto_0
    iget p0, p0, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->mMessageId:I

    return p0
.end method


# virtual methods
.method public startDiscoveryUnicast(Landroid/os/Handler;ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 83
    new-instance v10, Lcom/samsung/android/cmcp2phelper/data/CphMessage;

    iget-object v1, v0, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/cmcp2phelper/utils/P2pUtils;->getLocalIpAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->getNextMessageID()I

    move-result v9

    const/4 v2, 0x1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    const v8, 0xc750

    move-object v1, v10

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v9}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;-><init>(IDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 85
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    .line 86
    new-instance v2, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastSender;

    const v5, 0xc750

    invoke-virtual {v10}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->getByte()[B

    move-result-object v6

    invoke-virtual {v10}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->getByte()[B

    move-result-object v3

    array-length v7, v3

    move-object v3, v2

    move-object/from16 v8, p1

    move/from16 v9, p2

    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastSender;-><init>(Ljava/lang/String;I[BILandroid/os/Handler;I)V

    .line 87
    iget-object v3, v0, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->mLogHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Lcom/samsung/android/cmcp2phelper/transport/internal/CphSenderReceiver;->enableApplicationLog(Landroid/os/Handler;)V

    .line 88
    invoke-static {v2}, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 91
    :cond_0
    new-instance v1, Lcom/samsung/android/cmcp2phelper/data/CphMessage;

    const/4 v12, 0x1

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    iget-object v2, v0, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/cmcp2phelper/utils/P2pUtils;->getLocalIpAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v17

    const v18, 0xcb38

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->getNextMessageID()I

    move-result v19

    move-object v11, v1

    move-object/from16 v15, p3

    move-object/from16 v16, p4

    invoke-direct/range {v11 .. v19}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;-><init>(IDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 92
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    .line 93
    new-instance v3, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastSender;

    const v6, 0xcb38

    invoke-virtual {v1}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->getByte()[B

    move-result-object v7

    invoke-virtual {v1}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->getByte()[B

    move-result-object v4

    array-length v8, v4

    move-object v4, v3

    move-object/from16 v9, p1

    move/from16 v10, p2

    invoke-direct/range {v4 .. v10}, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastSender;-><init>(Ljava/lang/String;I[BILandroid/os/Handler;I)V

    .line 94
    iget-object v4, v0, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->mLogHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Lcom/samsung/android/cmcp2phelper/transport/internal/CphSenderReceiver;->enableApplicationLog(Landroid/os/Handler;)V

    .line 95
    invoke-static {v3}, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public startReceive()V
    .locals 5

    .line 53
    sget-object v0, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "start NSD"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->mUnicastReceiver:Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastReceiver;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastReceiver;

    iget-object v1, p0, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->mLogHandler:Landroid/os/Handler;

    const v3, 0xc750

    iget-object v4, p0, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->mServiceInfo:Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;ILcom/samsung/android/cmcp2phelper/MdmnServiceInfo;)V

    iput-object v0, p0, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->mUnicastReceiver:Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastReceiver;

    .line 57
    iget-object v1, p0, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->mLogHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/cmcp2phelper/transport/internal/CphSenderReceiver;->enableApplicationLog(Landroid/os/Handler;)V

    .line 58
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->mUnicastReceiver:Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastReceiver;

    invoke-static {v0}, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->execute(Ljava/lang/Runnable;)V

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->mUnicastReceiver2:Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastReceiver;

    if-nez v0, :cond_1

    .line 62
    new-instance v0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastReceiver;

    iget-object v1, p0, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->mLogHandler:Landroid/os/Handler;

    const v3, 0xcb38

    iget-object v4, p0, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->mServiceInfo:Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;ILcom/samsung/android/cmcp2phelper/MdmnServiceInfo;)V

    iput-object v0, p0, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->mUnicastReceiver2:Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastReceiver;

    .line 63
    iget-object v1, p0, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->mLogHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/cmcp2phelper/transport/internal/CphSenderReceiver;->enableApplicationLog(Landroid/os/Handler;)V

    .line 64
    iget-object p0, p0, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->mUnicastReceiver2:Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastReceiver;

    invoke-static {p0}, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public stopReceive()V
    .locals 2

    .line 69
    sget-object v0, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "stop NSD"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->mUnicastReceiver:Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v0}, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastReceiver;->stop()V

    .line 73
    iput-object v1, p0, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->mUnicastReceiver:Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastReceiver;

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->mUnicastReceiver2:Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastReceiver;

    if-eqz v0, :cond_1

    .line 77
    invoke-virtual {v0}, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastReceiver;->stop()V

    .line 78
    iput-object v1, p0, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->mUnicastReceiver2:Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastReceiver;

    :cond_1
    return-void
.end method
