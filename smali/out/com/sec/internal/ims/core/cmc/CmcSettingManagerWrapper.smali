.class public Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;
.super Ljava/lang/Object;
.source "CmcSettingManagerWrapper.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CmcSettingManagerWrapper"


# instance fields
.field private mCmcAccountMgr:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

.field mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

.field protected mContext:Landroid/content/Context;


# direct methods
.method public static synthetic $r8$lambda$-h3Q1GTGIc7ZfpJXlsOCvCKHBJ8(Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->lambda$init$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$4I1X817czqLRNSu6rFy0R0Wena8(Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->lambda$init$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$9d2f9rrUGtpqFUPHdlTi2XskOyw(Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->lambda$init$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$G-sQ4cP0V9bHsFgni0RpUfk18Jo(Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->lambda$init$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$T8ghaLm7OCazFd_ajSADjzQzG4k(Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->lambda$init$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$j4fdVMzaQcpU7FVFHJeJwylp12s(Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->lambda$init$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$ufKHQa7WUU0Ri1jnWUFXemteYu8(Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->lambda$init$6()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/ims/core/cmc/CmcAccountManager;)V
    .registers 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mContext:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcAccountMgr:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    return-void
.end method

.method private synthetic lambda$init$0()V
    .registers 3

    const-string v0, "CmcSettingManagerWrapper"

    const-string v1, "onChangedCmcActivation"

    .line 39
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcAccountMgr:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->notifyCmcDeviceChanged()V

    return-void
.end method

.method private synthetic lambda$init$1()V
    .registers 3

    const-string v0, "CmcSettingManagerWrapper"

    const-string v1, "onChangedNetworkMode"

    .line 45
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcAccountMgr:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->notifyCmcNwPrefChanged()V

    return-void
.end method

.method private synthetic lambda$init$2()V
    .registers 3

    const-string v0, "CmcSettingManagerWrapper"

    const-string v1, "onChangedLineInfo"

    .line 51
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcAccountMgr:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->notifyCmcDeviceChanged()V

    return-void
.end method

.method private synthetic lambda$init$3()V
    .registers 3

    const-string v0, "CmcSettingManagerWrapper"

    const-string v1, "onChangedDeviceInfo"

    .line 57
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcAccountMgr:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->notifyCmcDeviceChanged()V

    return-void
.end method

.method private synthetic lambda$init$4()V
    .registers 3

    const-string v0, "CmcSettingManagerWrapper"

    const-string v1, "onChangedCmcCallActivation"

    .line 63
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcAccountMgr:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->notifyCmcDeviceChanged()V

    return-void
.end method

.method private synthetic lambda$init$5()V
    .registers 3

    const-string v0, "CmcSettingManagerWrapper"

    const-string v1, "onChangedSamsungAccountInfo:"

    .line 69
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcAccountMgr:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getCmcSaAccessToken()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->onChangedSamsungAccountInfo(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$init$6()V
    .registers 3

    const-string v0, "CmcSettingManagerWrapper"

    const-string v1, "onChangedSameWifiOnly:"

    .line 75
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcAccountMgr:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->notifyCmcDeviceChanged()V

    return-void
.end method


# virtual methods
.method public getCmcCallActivation(Ljava/lang/String;)Z
    .registers 2

    .line 162
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getCmcCallActivation(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getCmcSaAccessToken()Ljava/lang/String;
    .registers 1

    .line 166
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getSamsungAccountInfo()Lcom/samsung/android/cmcsetting/CmcSaInfo;

    move-result-object p0

    if-nez p0, :cond_b

    const-string p0, ""

    return-object p0

    .line 170
    :cond_b
    invoke-virtual {p0}, Lcom/samsung/android/cmcsetting/CmcSaInfo;->getSaAccessToken()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCmcSupported()Z
    .registers 1

    .line 83
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getCmcSupported()Z

    move-result p0

    return p0
.end method

.method public getDeviceId()Ljava/lang/String;
    .registers 1

    .line 99
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getOwnDeviceId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDeviceIdList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 127
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getDeviceIdList()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getDeviceType()Ljava/lang/String;
    .registers 2

    .line 88
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getOwnDeviceType()Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    move-result-object p0

    .line 90
    sget-object v0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;->DEVICE_TYPE_PD:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    if-ne p0, v0, :cond_d

    const-string p0, "pd"

    goto :goto_17

    .line 92
    :cond_d
    sget-object v0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;->DEVICE_TYPE_SD:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    if-ne p0, v0, :cond_15

    const-string/jumbo p0, "sd"

    goto :goto_17

    :cond_15
    const-string p0, ""

    :goto_17
    return-object p0
.end method

.method public getDeviceTypeWithDeviceId(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 136
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getDeviceType(Ljava/lang/String;)Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    move-result-object p0

    .line 137
    sget-object p1, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;->DEVICE_TYPE_PD:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    if-ne p0, p1, :cond_d

    const-string p0, "pd"

    goto :goto_17

    .line 139
    :cond_d
    sget-object p1, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;->DEVICE_TYPE_SD:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    if-ne p0, p1, :cond_15

    const-string/jumbo p0, "sd"

    goto :goto_17

    :cond_15
    const-string p0, ""

    :goto_17
    return-object p0
.end method

.method public getLineId()Ljava/lang/String;
    .registers 1

    .line 123
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getLineId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLineImpu()Ljava/lang/String;
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getLineImpu()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOwnCmcActivation()Z
    .registers 1

    .line 158
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getOwnCmcActivation()Z

    move-result p0

    return p0
.end method

.method public getPcscfAddressList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 146
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getLinePcscfAddrList()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getPreferredNetwork()I
    .registers 2

    .line 104
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getOwnNetworkMode()Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$NetworkMode;

    move-result-object p0

    .line 105
    sget-object v0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$NetworkMode;->NETWORK_MODE_USE_MOBILE_NETWORK:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$NetworkMode;

    if-ne p0, v0, :cond_c

    const/4 p0, 0x0

    goto :goto_f

    .line 107
    :cond_c
    sget-object p0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$NetworkMode;->NETWORK_MODE_USE_MOBILE_NETWORK:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$NetworkMode;

    const/4 p0, 0x1

    :goto_f
    return p0
.end method

.method public getSelectedSimSlotsOnPd()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 197
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getSelectedSimSlotsOnPd()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getServiceVersion()Ljava/lang/String;
    .registers 1

    .line 114
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getOwnServiceVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public init()V
    .registers 4

    const-string v0, "init"

    const-string v1, "CmcSettingManagerWrapper"

    .line 32
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    new-instance v0, Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-direct {v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    .line 34
    iget-object v2, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->init(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_61

    const-string v0, "init listeners"

    .line 37
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;)V

    .line 42
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->registerListener(Lcom/samsung/android/cmcsetting/listeners/CmcActivationInfoChangedListener;)Z

    .line 44
    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper$$ExternalSyntheticLambda1;-><init>(Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;)V

    .line 48
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->registerListener(Lcom/samsung/android/cmcsetting/listeners/CmcNetworkModeInfoChangedListener;)Z

    .line 50
    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper$$ExternalSyntheticLambda2;-><init>(Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;)V

    .line 54
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->registerListener(Lcom/samsung/android/cmcsetting/listeners/CmcLineInfoChangedListener;)Z

    .line 56
    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper$$ExternalSyntheticLambda3;-><init>(Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;)V

    .line 60
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->registerListener(Lcom/samsung/android/cmcsetting/listeners/CmcDeviceInfoChangedListener;)Z

    .line 62
    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper$$ExternalSyntheticLambda4;-><init>(Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;)V

    .line 66
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->registerListener(Lcom/samsung/android/cmcsetting/listeners/CmcCallActivationInfoChangedListener;)Z

    .line 68
    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper$$ExternalSyntheticLambda5;-><init>(Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;)V

    .line 72
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->registerListener(Lcom/samsung/android/cmcsetting/listeners/CmcSamsungAccountInfoChangedListener;)Z

    .line 74
    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper$$ExternalSyntheticLambda6;-><init>(Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;)V

    .line 78
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {p0, v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->registerListener(Lcom/samsung/android/cmcsetting/listeners/CmcSameWifiNetworkStatusListener;)Z

    :cond_61
    return-void
.end method

.method public isCallAllowedSdByPd(Ljava/lang/String;)Z
    .registers 4

    .line 150
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getOwnDeviceType()Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    move-result-object v0

    .line 151
    sget-object v1, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;->DEVICE_TYPE_PD:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    if-ne v0, v1, :cond_c

    const/4 p0, 0x1

    return p0

    .line 154
    :cond_c
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->isCallAllowedSdByPd(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isDualCmc()Z
    .registers 2

    .line 189
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->isDualSimSupportedOnPd()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getSelectedSimSlotsOnPd()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_16

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method public isEmergencyCallSupported()Z
    .registers 1

    .line 178
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->isEmergencyCallSupported()Z

    move-result p0

    return p0
.end method

.method public isSameWifiNetworkOnly()Z
    .registers 1

    .line 174
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->isSameWifiNetworkOnly()Z

    move-result p0

    return p0
.end method
