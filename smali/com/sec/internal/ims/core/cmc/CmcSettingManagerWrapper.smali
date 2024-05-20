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
.method public static synthetic $r8$lambda$Qg0s-p2rLGK52OwaHCqs3HX65E4(Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->lambda$init$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$QkJNVqFrbZbgX-GIRSDtmynnRPE(Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->lambda$init$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$RZcqWz7NqfQANHhtF3Q5rylhau8(Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->lambda$init$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$TMBPAeDNK-XWxWtC6UqVcIkfxmM(Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->lambda$init$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$aKD8n7J41iGEsgyQJ-nKe13OfFE(Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->lambda$init$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$mly1zXUwh3fPIB-3SouGUApO190(Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->lambda$init$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$vaJzGXXn7dhcxhAkDOeIz5L8hjg(Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->lambda$init$2()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/ims/core/cmc/CmcAccountManager;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mContext:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcAccountMgr:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    return-void
.end method

.method private synthetic lambda$init$0()V
    .locals 2

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
    .locals 2

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
    .locals 2

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
    .locals 2

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
    .locals 2

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
    .locals 2

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
    .locals 2

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
.method public getActiveSimSlot()I
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getLineActiveSimSlot()I

    move-result p0

    return p0
.end method

.method public getCmcCallActivation(Ljava/lang/String;)Z
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getCmcCallActivation(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getCmcSaAccessToken()Ljava/lang/String;
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getSamsungAccountInfo()Lcom/samsung/android/cmcsetting/CmcSaInfo;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 174
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/cmcsetting/CmcSaInfo;->getSaAccessToken()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCmcSupported()Z
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getCmcSupported()Z

    move-result p0

    return p0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getOwnDeviceId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDeviceIdList()Ljava/util/List;
    .locals 0
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
    .locals 1

    .line 88
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getOwnDeviceType()Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    move-result-object p0

    .line 90
    sget-object v0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;->DEVICE_TYPE_PD:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    if-ne p0, v0, :cond_0

    const-string p0, "pd"

    goto :goto_0

    .line 92
    :cond_0
    sget-object v0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;->DEVICE_TYPE_SD:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    if-ne p0, v0, :cond_1

    const-string p0, "sd"

    goto :goto_0

    :cond_1
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public getDeviceTypeWithDeviceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getDeviceType(Ljava/lang/String;)Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    move-result-object p0

    .line 137
    sget-object p1, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;->DEVICE_TYPE_PD:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    if-ne p0, p1, :cond_0

    const-string p0, "pd"

    goto :goto_0

    .line 139
    :cond_0
    sget-object p1, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;->DEVICE_TYPE_SD:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    if-ne p0, p1, :cond_1

    const-string p0, "sd"

    goto :goto_0

    :cond_1
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public getLineId()Ljava/lang/String;
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getLineId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLineImpu()Ljava/lang/String;
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getLineImpu()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOwnCmcActivation()Z
    .locals 0

    .line 162
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getOwnCmcActivation()Z

    move-result p0

    return p0
.end method

.method public getPcscfAddressList()Ljava/util/List;
    .locals 0
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
    .locals 1

    .line 104
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getOwnNetworkMode()Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$NetworkMode;

    move-result-object p0

    .line 105
    sget-object v0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$NetworkMode;->NETWORK_MODE_USE_MOBILE_NETWORK:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$NetworkMode;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 107
    :cond_0
    sget-object p0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$NetworkMode;->NETWORK_MODE_USE_MOBILE_NETWORK:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$NetworkMode;

    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public getServiceVersion()Ljava/lang/String;
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getOwnServiceVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public init()V
    .locals 3

    const-string v0, "CmcSettingManagerWrapper"

    const-string v1, "init"

    .line 32
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    new-instance v1, Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-direct {v1}, Lcom/samsung/android/cmcsetting/CmcSettingManager;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    .line 34
    iget-object v2, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->init(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "init listeners"

    .line 37
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

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

    :cond_0
    return-void
.end method

.method public isCallAllowedSdByPd(Ljava/lang/String;)Z
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getOwnDeviceType()Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    move-result-object v0

    .line 155
    sget-object v1, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;->DEVICE_TYPE_PD:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    if-ne v0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 158
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->isCallAllowedSdByPd(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isDualCmc()Z
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->isDualSimSupportedOnPd()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getSelectedSimSlotsOnPd()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-le p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isEmergencyCallSupported()Z
    .locals 0

    .line 182
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->isEmergencyCallSupported()Z

    move-result p0

    return p0
.end method

.method public isSameWifiNetworkOnly()Z
    .locals 0

    .line 178
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->isSameWifiNetworkOnly()Z

    move-result p0

    return p0
.end method
