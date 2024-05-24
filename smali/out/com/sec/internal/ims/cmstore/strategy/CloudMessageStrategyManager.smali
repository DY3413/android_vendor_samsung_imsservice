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
    .registers 4

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-class v0, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->TAG:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->mLock:Ljava/lang/Object;

    .line 30
    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->mContext:Landroid/content/Context;

    .line 31
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 32
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
    .registers 6

    .line 36
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 37
    :try_start_3
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v1

    invoke-static {v1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    if-eqz v1, :cond_29

    .line 39
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

    .line 41
    :cond_29
    sget-object v2, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 42
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getEnableATTCloudService()Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 43
    new-instance v1, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->mCloudMessageStrategy:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    .line 44
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->initVersionName()V

    .line 45
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getATTDualSimCapability()Z

    move-result p0

    if-eqz p0, :cond_92

    const/4 p0, 0x1

    .line 46
    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->setAmbsDualSimSupport(Z)V

    goto :goto_92

    .line 50
    :cond_4e
    new-instance v1, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->mCloudMessageStrategy:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    goto :goto_92

    .line 52
    :cond_58
    sget-object v2, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 53
    new-instance v1, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->mCloudMessageStrategy:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    goto :goto_92

    .line 54
    :cond_6a
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/internal/ims/cmstore/utils/CmsUtil;->isMcsSupported(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_82

    .line 55
    new-instance v1, Lcom/sec/internal/ims/cmstore/strategy/KorCmStrategy;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/cmstore/strategy/KorCmStrategy;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->mCloudMessageStrategy:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    goto :goto_92

    .line 57
    :cond_82
    new-instance v1, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->mCloudMessageStrategy:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    .line 61
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->TAG:Ljava/lang/String;

    const-string v1, "Unsupported Carrier"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_92
    :goto_92
    monitor-exit v0

    return-void

    :catchall_94
    move-exception p0

    monitor-exit v0
    :try_end_96
    .catchall {:try_start_3 .. :try_end_96} :catchall_94

    throw p0
.end method

.method public getATTDualSimCapability()Z
    .registers 2

    .line 89
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p0

    const-string v0, "CscFeature_Message_Mstore_Dual_SIM"

    .line 90
    invoke-virtual {p0, v0}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "true"

    .line 91
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_15

    const/4 p0, 0x1

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method public getEnableATTCloudService()Z
    .registers 3

    .line 78
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Message_ConfigOpBackupSync"

    .line 79
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    sget-object v1, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->PHASE_AMBS_SERVICE:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 p0, 0x1

    return p0

    .line 84
    :cond_14
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->TAG:Ljava/lang/String;

    const-string v0, "Temp sim swap or CSC not enable"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;
    .registers 4

    .line 68
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 69
    :try_start_3
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->mCloudMessageStrategy:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    if-nez v1, :cond_10

    .line 70
    new-instance v1, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->mCloudMessageStrategy:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    .line 72
    :cond_10
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->mCloudMessageStrategy:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    monitor-exit v0

    return-object p0

    :catchall_14
    move-exception p0

    .line 73
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p0
.end method
