.class public Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;
.super Ljava/lang/Object;
.source "CloudMessageStrategyManager.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mCloudMessageStrategy:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

.field private mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-class v0, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->TAG:Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->mLock:Ljava/lang/Object;

    .line 26
    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->mContext:Landroid/content/Context;

    .line 27
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public createStrategy()V
    .locals 5

    .line 32
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 33
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v1

    invoke-static {v1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 35
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Carrier: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :cond_0
    sget-object v2, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 38
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getEnableATTCloudService()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 39
    new-instance v1, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->mCloudMessageStrategy:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    .line 40
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->initVersionName()V

    .line 41
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getATTDualSimCapability()Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x1

    .line 42
    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->setAmbsDualSimSupport(Z)V

    goto :goto_0

    .line 46
    :cond_1
    new-instance v1, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->mCloudMessageStrategy:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    goto :goto_0

    .line 48
    :cond_2
    sget-object v2, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 49
    new-instance v1, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->mCloudMessageStrategy:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    goto :goto_0

    .line 51
    :cond_3
    new-instance v1, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->mCloudMessageStrategy:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    .line 55
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->TAG:Ljava/lang/String;

    const-string v1, "Unsupported Carrier"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_4
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getATTDualSimCapability()Z
    .locals 1

    .line 83
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p0

    const-string v0, "CscFeature_Message_Mstore_Dual_SIM"

    .line 84
    invoke-virtual {p0, v0}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "true"

    .line 85
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getEnableATTCloudService()Z
    .locals 2

    .line 72
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Message_ConfigOpBackupSync"

    .line 73
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    sget-object v1, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->PHASE_AMBS_SERVICE:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 78
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->TAG:Ljava/lang/String;

    const-string v0, "Temp sim swap or CSC not enable"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 63
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->mCloudMessageStrategy:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    if-nez v1, :cond_0

    .line 64
    new-instance v1, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->mCloudMessageStrategy:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    .line 66
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->mCloudMessageStrategy:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 67
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
