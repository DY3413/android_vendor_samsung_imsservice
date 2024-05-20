.class public Lcom/sec/internal/ims/core/SlotBasedConfig;
.super Ljava/lang/Object;
.source "SlotBasedConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;
    }
.end annotation


# static fields
.field private static final sInstances:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/ims/core/SlotBasedConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBlockedServicesForCrossSim:Ljava/lang/String;

.field private mCdmaAvailableForVoice:Z

.field private mCmcRegistrationListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/sec/ims/IImsRegistrationListener;",
            ">;"
        }
    .end annotation
.end field

.field private mDataUsageExceeded:Z

.field private mEmcAttachAuth:I

.field private mHoEnable:I

.field private mIconManager:Lcom/sec/internal/ims/core/ImsIconManager;

.field private mInviteRejected:Z

.field private mNetworkEvent:Lcom/sec/internal/constants/ims/os/NetworkEvent;

.field private mNotifiedImsNotAvailable:Z

.field private mNrPreferredMode:I

.field private mNrSaMode:I

.field private mOmadmState:Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

.field private mOnlyEpsFallback:I

.field private mProfileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/ims/settings/ImsProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mProfileListExt:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/ims/settings/ImsProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mRTTMode:Z

.field private mRcsVolteSingleRegistration:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;

.field private mRegistrationList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/ims/ImsRegistration;",
            ">;"
        }
    .end annotation
.end field

.field private mRegistrationListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/sec/ims/IImsRegistrationListener;",
            ">;"
        }
    .end annotation
.end field

.field private mRegistrationTasks:Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

.field private mSSACPolicy:Z

.field private mSimMobilityActivation:Z

.field private mSimMobilityActivationForRcs:Z

.field private mSimMobilityStatusListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/sec/ims/ISimMobilityStatusListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSuspendRegiWhileIrat:Z

.field private mTTYMode:Z

.field private mUnprocessedOmadmConfig:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/core/SlotBasedConfig;->sInstances:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mProfileList:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mProfileListExt:Ljava/util/Map;

    .line 42
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mRegistrationList:Ljava/util/Map;

    .line 43
    new-instance v0, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mRegistrationTasks:Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    .line 44
    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;->IMS_PROFILE_BASED_REG:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;

    iput-object v0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mRcsVolteSingleRegistration:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;

    .line 47
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mSimMobilityStatusListeners:Landroid/os/RemoteCallbackList;

    .line 81
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->clear()V

    return-void
.end method

.method public static getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;
    .locals 2

    .line 85
    sget-object v0, Lcom/sec/internal/ims/core/SlotBasedConfig;->sInstances:Ljava/util/HashMap;

    monitor-enter v0

    .line 86
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/core/SlotBasedConfig;

    monitor-exit v0

    return-object p0

    .line 89
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    new-instance v1, Lcom/sec/internal/ims/core/SlotBasedConfig;

    invoke-direct {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;-><init>()V

    .line 91
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :catchall_0
    move-exception p0

    .line 89
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public activeSimMobility(Z)V
    .locals 0

    .line 257
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mSimMobilityActivation:Z

    return-void
.end method

.method public activeSimMobilityForRcs(Z)V
    .locals 0

    .line 265
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mSimMobilityActivationForRcs:Z

    return-void
.end method

.method addExtendedProfile(ILcom/sec/ims/settings/ImsProfile;)V
    .locals 0

    .line 160
    iget-object p0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mProfileListExt:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addImsRegistration(ILcom/sec/ims/ImsRegistration;)V
    .locals 0

    .line 185
    iget-object p0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mRegistrationList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method addProfile(Lcom/sec/ims/settings/ImsProfile;)V
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mProfileList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clear()V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mIconManager:Lcom/sec/internal/ims/core/ImsIconManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/ImsIconManager;->updateRegistrationIcon(Z)V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mProfileList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 102
    iget-object v0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mProfileListExt:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 103
    iget-object v0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mRegistrationList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 104
    iget-object v0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mRegistrationTasks:Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->clear()V

    .line 105
    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;->IMS_PROFILE_BASED_REG:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;

    iput-object v0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mRcsVolteSingleRegistration:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;

    .line 107
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mTTYMode:Z

    .line 108
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mRTTMode:Z

    .line 109
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mInviteRejected:Z

    .line 110
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mCdmaAvailableForVoice:Z

    .line 112
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mSimMobilityActivation:Z

    .line 113
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mSimMobilityActivationForRcs:Z

    const/4 v0, 0x1

    .line 114
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mSSACPolicy:Z

    .line 115
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mSuspendRegiWhileIrat:Z

    .line 116
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mDataUsageExceeded:Z

    .line 117
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mNotifiedImsNotAvailable:Z

    .line 118
    sget-object v0, Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;->IDLE:Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    iput-object v0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mOmadmState:Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    .line 119
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mUnprocessedOmadmConfig:Z

    const/4 v0, -0x1

    .line 120
    iput v0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mHoEnable:I

    .line 121
    iput v0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mOnlyEpsFallback:I

    .line 122
    iput v0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mNrPreferredMode:I

    .line 123
    iput v0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mNrSaMode:I

    .line 124
    iput v1, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mEmcAttachAuth:I

    .line 126
    new-instance v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/os/NetworkEvent;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mNetworkEvent:Lcom/sec/internal/constants/ims/os/NetworkEvent;

    const-string v0, ""

    .line 127
    iput-object v0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mBlockedServicesForCrossSim:Ljava/lang/String;

    return-void
.end method

.method clearProfiles()V
    .locals 0

    .line 144
    iget-object p0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mProfileList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method createIconManager(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/constants/Mno;I)V
    .locals 7

    .line 140
    new-instance v6, Lcom/sec/internal/ims/core/ImsIconManager;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/core/ImsIconManager;-><init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/constants/Mno;I)V

    iput-object v6, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mIconManager:Lcom/sec/internal/ims/core/ImsIconManager;

    return-void
.end method

.method enableSsac(Z)V
    .locals 0

    .line 277
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mSSACPolicy:Z

    return-void
.end method

.method public getBlockedServicesForCrossSim()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 172
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 173
    iget-object v1, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mBlockedServicesForCrossSim:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 174
    iget-object p0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mBlockedServicesForCrossSim:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ","

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 175
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v0
.end method

.method getCmcRegistrationListeners()Landroid/os/RemoteCallbackList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/RemoteCallbackList<",
            "Lcom/sec/ims/IImsRegistrationListener;",
            ">;"
        }
    .end annotation

    .line 197
    iget-object p0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mCmcRegistrationListeners:Landroid/os/RemoteCallbackList;

    return-object p0
.end method

.method getEmcAttachAuth()I
    .locals 0

    .line 341
    iget p0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mEmcAttachAuth:I

    return p0
.end method

.method getExtendedProfiles()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/ims/settings/ImsProfile;",
            ">;"
        }
    .end annotation

    .line 156
    iget-object p0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mProfileListExt:Ljava/util/Map;

    return-object p0
.end method

.method getHoEnable()I
    .locals 0

    .line 332
    iget p0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mHoEnable:I

    return p0
.end method

.method getIconManager()Lcom/sec/internal/ims/core/ImsIconManager;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mIconManager:Lcom/sec/internal/ims/core/ImsIconManager;

    return-object p0
.end method

.method getImsRegistrationListeners()Landroid/os/RemoteCallbackList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/RemoteCallbackList<",
            "Lcom/sec/ims/IImsRegistrationListener;",
            ">;"
        }
    .end annotation

    .line 189
    iget-object p0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mRegistrationListeners:Landroid/os/RemoteCallbackList;

    return-object p0
.end method

.method public getImsRegistrations()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/ims/ImsRegistration;",
            ">;"
        }
    .end annotation

    .line 181
    iget-object p0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mRegistrationList:Ljava/util/Map;

    return-object p0
.end method

.method public getNetworkEvent()Lcom/sec/internal/constants/ims/os/NetworkEvent;
    .locals 0

    .line 209
    iget-object p0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mNetworkEvent:Lcom/sec/internal/constants/ims/os/NetworkEvent;

    return-object p0
.end method

.method getNrPreferredMode()I
    .locals 0

    .line 358
    iget p0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mNrPreferredMode:I

    return p0
.end method

.method getNrSaMode()I
    .locals 0

    .line 367
    iget p0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mNrSaMode:I

    return p0
.end method

.method public getOmadmState()Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;
    .locals 0

    .line 309
    iget-object p0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mOmadmState:Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    return-object p0
.end method

.method getOnlyEpsFallback()I
    .locals 0

    .line 349
    iget p0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mOnlyEpsFallback:I

    return p0
.end method

.method public getProfiles()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/ims/settings/ImsProfile;",
            ">;"
        }
    .end annotation

    .line 148
    iget-object p0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mProfileList:Ljava/util/List;

    return-object p0
.end method

.method public getRTTMode()Z
    .locals 0

    .line 225
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mRTTMode:Z

    return p0
.end method

.method getRcsVolteSingleRegistration()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;
    .locals 0

    .line 324
    iget-object p0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mRcsVolteSingleRegistration:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;

    return-object p0
.end method

.method public getRegistrationTasks()Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;
    .locals 0

    .line 249
    iget-object p0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mRegistrationTasks:Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    return-object p0
.end method

.method getSimMobilityStatusListeners()Landroid/os/RemoteCallbackList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/RemoteCallbackList<",
            "Lcom/sec/ims/ISimMobilityStatusListener;",
            ">;"
        }
    .end annotation

    .line 205
    iget-object p0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mSimMobilityStatusListeners:Landroid/os/RemoteCallbackList;

    return-object p0
.end method

.method getTTYMode()Z
    .locals 0

    .line 217
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mTTYMode:Z

    return p0
.end method

.method public getUnprocessedOmadmConfig()Z
    .locals 0

    .line 321
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mUnprocessedOmadmConfig:Z

    return p0
.end method

.method public hasOmaDmFinished()Z
    .locals 1

    .line 305
    iget-object p0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mOmadmState:Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    sget-object v0, Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;->FINISHED:Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isCdmaAvailableForVoice()Z
    .locals 0

    .line 241
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mCdmaAvailableForVoice:Z

    return p0
.end method

.method isDataUsageExceeded()Z
    .locals 0

    .line 289
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mDataUsageExceeded:Z

    return p0
.end method

.method isInviteRejected()Z
    .locals 0

    .line 233
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mInviteRejected:Z

    return p0
.end method

.method public isNotifiedImsNotAvailable()Z
    .locals 0

    .line 297
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mNotifiedImsNotAvailable:Z

    return p0
.end method

.method public isSimMobilityActivated()Z
    .locals 0

    .line 261
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mSimMobilityActivation:Z

    return p0
.end method

.method public isSimMobilityActivatedForRcs()Z
    .locals 0

    .line 269
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mSimMobilityActivationForRcs:Z

    return p0
.end method

.method isSsacEnabled()Z
    .locals 0

    .line 273
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mSSACPolicy:Z

    return p0
.end method

.method isSuspendedWhileIrat()Z
    .locals 0

    .line 281
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mSuspendRegiWhileIrat:Z

    return p0
.end method

.method removeExtendedProfile(I)V
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mProfileListExt:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method setBlockedServicesForCrossSim(Ljava/lang/String;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mBlockedServicesForCrossSim:Ljava/lang/String;

    return-void
.end method

.method setCdmaAvailableForVoice(Z)V
    .locals 0

    .line 245
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mCdmaAvailableForVoice:Z

    return-void
.end method

.method setCmcRegistrationListeners(Landroid/os/RemoteCallbackList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/RemoteCallbackList<",
            "Lcom/sec/ims/IImsRegistrationListener;",
            ">;)V"
        }
    .end annotation

    .line 201
    iput-object p1, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mCmcRegistrationListeners:Landroid/os/RemoteCallbackList;

    return-void
.end method

.method setDataUsageExceed(Z)V
    .locals 0

    .line 293
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mDataUsageExceeded:Z

    return-void
.end method

.method setEmcAttachAuth(I)V
    .locals 0

    .line 345
    iput p1, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mEmcAttachAuth:I

    return-void
.end method

.method setHoEnable(Z)V
    .locals 0

    .line 337
    iput p1, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mHoEnable:I

    return-void
.end method

.method setIconManager(Lcom/sec/internal/ims/core/ImsIconManager;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mIconManager:Lcom/sec/internal/ims/core/ImsIconManager;

    return-void
.end method

.method setImsRegistrationListeners(Landroid/os/RemoteCallbackList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/RemoteCallbackList<",
            "Lcom/sec/ims/IImsRegistrationListener;",
            ">;)V"
        }
    .end annotation

    .line 193
    iput-object p1, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mRegistrationListeners:Landroid/os/RemoteCallbackList;

    return-void
.end method

.method setInviteReject(Z)V
    .locals 0

    .line 237
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mInviteRejected:Z

    return-void
.end method

.method setNetworkEvent(Lcom/sec/internal/constants/ims/os/NetworkEvent;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mNetworkEvent:Lcom/sec/internal/constants/ims/os/NetworkEvent;

    return-void
.end method

.method public setNotifiedImsNotAvailable(Z)V
    .locals 0

    .line 301
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mNotifiedImsNotAvailable:Z

    return-void
.end method

.method setNrPreferredMode(Z)V
    .locals 0

    .line 363
    iput p1, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mNrPreferredMode:I

    return-void
.end method

.method setNrSaMode(Z)V
    .locals 0

    .line 372
    iput p1, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mNrSaMode:I

    return-void
.end method

.method public setOmadmState(Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;)V
    .locals 0

    .line 313
    iput-object p1, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mOmadmState:Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    return-void
.end method

.method setOnlyEpsFallback(Z)V
    .locals 0

    .line 354
    iput p1, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mOnlyEpsFallback:I

    return-void
.end method

.method public setRTTMode(Ljava/lang/Boolean;)V
    .locals 0

    .line 229
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mRTTMode:Z

    return-void
.end method

.method setRcsVolteSingleRegistration(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;)V
    .locals 0

    .line 328
    iput-object p1, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mRcsVolteSingleRegistration:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;

    return-void
.end method

.method setRegistrationTasks(Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mRegistrationTasks:Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    return-void
.end method

.method setSuspendWhileIrat(Z)V
    .locals 0

    .line 285
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mSuspendRegiWhileIrat:Z

    return-void
.end method

.method setTTYMode(Ljava/lang/Boolean;)V
    .locals 0

    .line 221
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mTTYMode:Z

    return-void
.end method

.method public setUnprocessedOmadmConfig(Z)V
    .locals 0

    .line 317
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mUnprocessedOmadmConfig:Z

    return-void
.end method
