.class public Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;
.super Ljava/lang/Object;
.source "CentralMsgStoreInterface.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CentralMsgStoreInterface"


# instance fields
.field private mBinder:Lcom/sec/ims/ICentralMsgStoreService$Stub;

.field private mCloudMessageScheduler:Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

.field private mJanskyIntentTranslation:Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;

.field private mNetAPIWorkingController:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

.field private mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->mCloudMessageScheduler:Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->mNetAPIWorkingController:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStoreClient(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misValidAppType(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->isValidAppType(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mlogInvalidAppType(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->logInvalidAppType()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p4, 0x0

    .line 24
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->mBinder:Lcom/sec/ims/ICentralMsgStoreService$Stub;

    .line 35
    iput-object p5, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 36
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->mCloudMessageScheduler:Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    .line 37
    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->mNetAPIWorkingController:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    .line 38
    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->mJanskyIntentTranslation:Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;

    .line 39
    new-instance p1, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;-><init>(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)V

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->mBinder:Lcom/sec/ims/ICentralMsgStoreService$Stub;

    return-void
.end method

.method private isValidAppType(Ljava/lang/String;)Z
    .locals 2

    const-string p0, "MessageApp"

    .line 436
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "VVMDATA"

    .line 437
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "RCSDATA"

    .line 438
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 441
    :cond_0
    sget-object p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid App Type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private logInvalidAppType()V
    .locals 1

    .line 29
    sget-object p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->LOG_TAG:Ljava/lang/String;

    const-string v0, "invalid apptype "

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getBinder()Lcom/sec/ims/ICentralMsgStoreService$Stub;
    .locals 0

    .line 447
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->mBinder:Lcom/sec/ims/ICentralMsgStoreService$Stub;

    return-object p0
.end method

.method public notifyAppCloudDeleteFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 426
    sget-object v0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyAppCloudDeleteFail, type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " msgtype: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " bufferId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MessageApp"

    .line 428
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->mJanskyIntentTranslation:Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;

    invoke-virtual {p0, p2, p3}, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->onNotifyMessageAppCloudDeleteFailure(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "VVMDATA"

    .line 430
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 431
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->mJanskyIntentTranslation:Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;

    invoke-virtual {p0, p2, p3}, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->onNotifyVVMAppCloudDeleteFailure(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public notifyAppInitialSyncStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;)V
    .locals 3

    .line 404
    sget-object v0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyAppInitialSyncStatus, apptype: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " msgType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " SyncStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MessageApp"

    .line 407
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->mJanskyIntentTranslation:Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;

    invoke-virtual {p0, p3, p2, p4}, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->onNotifyMessageAppInitialSyncStatus(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;)V

    goto :goto_0

    :cond_0
    const-string v0, "VVMDATA"

    .line 410
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 411
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->mJanskyIntentTranslation:Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;

    invoke-virtual {p0, p3, p2, p4}, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->onNotifyVVMAppInitialSyncStatus(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public notifyCloudMessageUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 416
    sget-object v0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyCloudMessageUpdate, apptype: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " msgType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " rowIDs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MessageApp"

    .line 418
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->mJanskyIntentTranslation:Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;

    invoke-virtual {p0, p2, p3}, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->onNotifyMessageApp(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "VVMDATA"

    .line 420
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 421
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->mJanskyIntentTranslation:Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;

    invoke-virtual {p0, p2, p3}, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->onNotifyVVMApp(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public notifyUIScreen(ILjava/lang/String;I)V
    .locals 3

    .line 396
    sget-object v0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyUIScreen, screenName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyUIScreen, message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " param: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->mJanskyIntentTranslation:Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->onNotifyMessageAppUI(ILjava/lang/String;I)V

    return-void
.end method
