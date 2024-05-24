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
    .registers 1

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/core/SlotBasedConfig;->sInstances:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mProfileList:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mProfileListExt:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mRegistrationList:Ljava/util/Map;

    .line 44
    new-instance v0, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mRegistrationTasks:Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    .line 45
    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;->IMS_PROFILE_BASED_REG:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;

    iput-object v0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mRcsVolteSingleRegistration:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;

    .line 48
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mSimMobilityStatusListeners:Landroid/os/RemoteCallbackList;

    .line 82
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->clear()V

    return-void
.end method

.method public static getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;
    .registers 3

    .line 86
    sget-object v0, Lcom/sec/internal/ims/core/SlotBasedConfig;->sInstances:Ljava/util/HashMap;

    monitor-enter v0

    .line 87
    :try_start_3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 88
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/core/SlotBasedConfig;

    monitor-exit v0

    return-object p0

    .line 90
    :cond_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_27

    .line 91
    new-instance v1, Lcom/sec/internal/ims/core/SlotBasedConfig;

    invoke-direct {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;-><init>()V

    .line 92
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :catchall_27
    move-exception p0

    .line 90
    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw p0
.end method


# virtual methods
.method public activeSimMobility(Z)V
    .registers 2

    .line 263
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mSimMobilityActivation:Z

    return-void
.end method

.method public activeSimMobilityForRcs(Z)V
    .registers 2

    .line 271
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mSimMobilityActivationForRcs:Z

    return-void
.end method

.method addExtendedProfile(ILcom/sec/ims/settings/ImsProfile;)V
    .registers 3

    .line 166
    iget-object p0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mProfileListExt:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addImsRegistration(ILcom/sec/ims/ImsRegistration;)V
    .registers 3

    .line 191
    iget-object p0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mRegistrationList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method addProfile(Lcom/sec/ims/settings/ImsProfile;)V
    .registers 2

    .line 158
    iget-object p0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mProfileList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clear()V
    .registers 3

    .line 98
    iget-object v0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mIconManager:Lcom/sec/internal/ims/core/ImsIconManager;

    if-eqz v0, :cond_7

    .line 99
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/ImsIconManager;->updateRegistrationIcon()V

    .line 102
    :cond_7
    iget-object v0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mProfileList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 103
    iget-object v0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mProfileListExt:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 104
    iget-object v0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mRegistrationList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 105
    iget-object v0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mRegistrationTasks:Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->clear()V

    .line 106
    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;->IMS_PROFILE_BASED_REG:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;

    iput-object v0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mRcsVolteSingleRegistration:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;

    const/4 v0, 0x0

    .line 108
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mTTYMode:Z

    .line 109
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mRTTMode:Z

    .line 110
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mInviteRejected:Z

    .line 111
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mCdmaAvailableForVoice:Z

    .line 113
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mSimMobilityActivation:Z

    .line 114
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mSimMobilityActivationForRcs:Z

    const/4 v1, 0x1

    .line 115
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mSSACPolicy:Z

    .line 116
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mSuspendRegiWhileIrat:Z

    .line 117
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mDataUsageExceeded:Z

    .line 118
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mNotifiedImsNotAvailable:Z

    .line 119
    sget-object v1, Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;->IDLE:Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    iput-object v1, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mOmadmState:Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    .line 120
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mUnprocessedOmadmConfig:Z

    const/4 v1, -0x1

    .line 121
    iput v1, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mHoEnable:I

    .line 122
    iput v1, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mOnlyEpsFallback:I

    .line 123
    iput v1, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mNrPreferredMode:I

    .line 124
    iput v1, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mNrSaMode:I

    .line 125
    iput v0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mEmcAttachAuth:I

    .line 127
    new-instance v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/os/NetworkEvent;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mNetworkEvent:Lcom/sec/internal/constants/ims/os/NetworkEvent;

    const-string v0, ""

    .line 128
    iput-object v0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mBlockedServicesForCrossSim:Ljava/lang/String;

    return-void
.end method

.method clearProfiles()V
    .registers 1

    .line 150
    iget-object p0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mProfileList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method createIconManager(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/constants/Mno;I)V
    .registers 13

    .line 142
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

.method createIconManager(Lcom/sec/internal/ims/core/ImsIconManager;)V
    .registers 2

    .line 146
    iput-object p1, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mIconManager:Lcom/sec/internal/ims/core/ImsIconManager;

    return-void
.end method

.method enableSsac(Z)V
    .registers 2

    .line 283
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mSSACPolicy:Z

    return-void
.end method

.method public getBlockedServicesForCrossSim()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 178
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 179
    iget-object v1, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mBlockedServicesForCrossSim:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 180
    iget-object p0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mBlockedServicesForCrossSim:Ljava/lang/String;

    const-string v1, ","

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 181
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_1d
    return-object v0
.end method

.method getCmcRegistrationListeners()Landroid/os/RemoteCallbackList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/RemoteCallbackList<",
            "Lcom/sec/ims/IImsRegistrationListener;",
            ">;"
        }
    .end annotation

    .line 203
    iget-object p0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mCmcRegistrationListeners:Landroid/os/RemoteCallbackList;

    return-object p0
.end method

.method getEmcAttachAuth()I
    .registers 1

    .line 347
    iget p0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mEmcAttachAuth:I

    return p0
.end method

.method getExtendedProfiles()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/ims/settings/ImsProfile;",
            ">;"
        }
    .end annotation

    .line 162
    iget-object p0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mProfileListExt:Ljava/util/Map;

    return-object p0
.end method

.method getHoEnable()I
    .registers 1

    .line 338
    iget p0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mHoEnable:I

    return p0
.end method

.method public getIconManager()Lcom/sec/internal/ims/core/ImsIconManager;
    .registers 1

    .line 136
    iget-object p0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mIconManager:Lcom/sec/internal/ims/core/ImsIconManager;

    return-object p0
.end method

.method getImsRegistrationListeners()Landroid/os/RemoteCallbackList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/RemoteCallbackList<",
            "Lcom/sec/ims/IImsRegistrationListener;",
            ">;"
        }
    .end annotation

    .line 195
    iget-object p0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mRegistrationListeners:Landroid/os/RemoteCallbackList;

    return-object p0
.end method

.method public getImsRegistrations()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/ims/ImsRegistration;",
            ">;"
        }
    .end annotation

    .line 187
    iget-object p0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mRegistrationList:Ljava/util/Map;

    return-object p0
.end method

.method public getNetworkEvent()Lcom/sec/internal/constants/ims/os/NetworkEvent;
    .registers 1

    .line 215
    iget-object p0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mNetworkEvent:Lcom/sec/internal/constants/ims/os/NetworkEvent;

    return-object p0
.end method

.method getNrPreferredMode()I
    .registers 1

    .line 364
    iget p0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mNrPreferredMode:I

    return p0
.end method

.method getNrSaMode()I
    .registers 1

    .line 373
    iget p0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mNrSaMode:I

    return p0
.end method

.method public getOmadmState()Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;
    .registers 1

    .line 315
    iget-object p0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mOmadmState:Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    return-object p0
.end method

.method getOnlyEpsFallback()I
    .registers 1

    .line 355
    iget p0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mOnlyEpsFallback:I

    return p0
.end method

.method public getProfiles()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/ims/settings/ImsProfile;",
            ">;"
        }
    .end annotation

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mProfileList:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getRTTMode()Z
    .registers 1

    .line 231
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mRTTMode:Z

    return p0
.end method

.method getRcsVolteSingleRegistration()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;
    .registers 1

    .line 330
    iget-object p0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mRcsVolteSingleRegistration:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;

    return-object p0
.end method

.method public getRegistrationTasks()Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;
    .registers 1

    .line 255
    iget-object p0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mRegistrationTasks:Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    return-object p0
.end method

.method getSimMobilityStatusListeners()Landroid/os/RemoteCallbackList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/RemoteCallbackList<",
            "Lcom/sec/ims/ISimMobilityStatusListener;",
            ">;"
        }
    .end annotation

    .line 211
    iget-object p0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mSimMobilityStatusListeners:Landroid/os/RemoteCallbackList;

    return-object p0
.end method

.method getTTYMode()Z
    .registers 1

    .line 223
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mTTYMode:Z

    return p0
.end method

.method public getUnprocessedOmadmConfig()Z
    .registers 1

    .line 327
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mUnprocessedOmadmConfig:Z

    return p0
.end method

.method public hasOmaDmFinished()Z
    .registers 2

    .line 311
    iget-object p0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mOmadmState:Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    sget-object v0, Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;->FINISHED:Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method isCdmaAvailableForVoice()Z
    .registers 1

    .line 247
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mCdmaAvailableForVoice:Z

    return p0
.end method

.method isDataUsageExceeded()Z
    .registers 1

    .line 295
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mDataUsageExceeded:Z

    return p0
.end method

.method isInviteRejected()Z
    .registers 1

    .line 239
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mInviteRejected:Z

    return p0
.end method

.method public isNotifiedImsNotAvailable()Z
    .registers 1

    .line 303
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mNotifiedImsNotAvailable:Z

    return p0
.end method

.method public isSimMobilityActivated()Z
    .registers 1

    .line 267
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mSimMobilityActivation:Z

    return p0
.end method

.method public isSimMobilityActivatedForRcs()Z
    .registers 1

    .line 275
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mSimMobilityActivationForRcs:Z

    return p0
.end method

.method isSsacEnabled()Z
    .registers 1

    .line 279
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mSSACPolicy:Z

    return p0
.end method

.method isSuspendedWhileIrat()Z
    .registers 1

    .line 287
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mSuspendRegiWhileIrat:Z

    return p0
.end method

.method removeExtendedProfile(I)V
    .registers 2

    .line 170
    iget-object p0, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mProfileListExt:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method setBlockedServicesForCrossSim(Ljava/lang/String;)V
    .registers 2

    .line 174
    iput-object p1, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mBlockedServicesForCrossSim:Ljava/lang/String;

    return-void
.end method

.method setCdmaAvailableForVoice(Z)V
    .registers 2

    .line 251
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mCdmaAvailableForVoice:Z

    return-void
.end method

.method setCmcRegistrationListeners(Landroid/os/RemoteCallbackList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/RemoteCallbackList<",
            "Lcom/sec/ims/IImsRegistrationListener;",
            ">;)V"
        }
    .end annotation

    .line 207
    iput-object p1, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mCmcRegistrationListeners:Landroid/os/RemoteCallbackList;

    return-void
.end method

.method setDataUsageExceed(Z)V
    .registers 2

    .line 299
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mDataUsageExceeded:Z

    return-void
.end method

.method setEmcAttachAuth(I)V
    .registers 2

    .line 351
    iput p1, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mEmcAttachAuth:I

    return-void
.end method

.method setHoEnable(Z)V
    .registers 2

    .line 343
    iput p1, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mHoEnable:I

    return-void
.end method

.method setIconManager(Lcom/sec/internal/ims/core/ImsIconManager;)V
    .registers 2

    .line 132
    iput-object p1, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mIconManager:Lcom/sec/internal/ims/core/ImsIconManager;

    return-void
.end method

.method setImsRegistrationListeners(Landroid/os/RemoteCallbackList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/RemoteCallbackList<",
            "Lcom/sec/ims/IImsRegistrationListener;",
            ">;)V"
        }
    .end annotation

    .line 199
    iput-object p1, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mRegistrationListeners:Landroid/os/RemoteCallbackList;

    return-void
.end method

.method setInviteReject(Z)V
    .registers 2

    .line 243
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mInviteRejected:Z

    return-void
.end method

.method setNetworkEvent(Lcom/sec/internal/constants/ims/os/NetworkEvent;)V
    .registers 2

    .line 219
    iput-object p1, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mNetworkEvent:Lcom/sec/internal/constants/ims/os/NetworkEvent;

    return-void
.end method

.method public setNotifiedImsNotAvailable(Z)V
    .registers 2

    .line 307
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mNotifiedImsNotAvailable:Z

    return-void
.end method

.method setNrPreferredMode(Z)V
    .registers 2

    .line 369
    iput p1, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mNrPreferredMode:I

    return-void
.end method

.method setNrSaMode(Z)V
    .registers 2

    .line 378
    iput p1, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mNrSaMode:I

    return-void
.end method

.method public setOmadmState(Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;)V
    .registers 2

    .line 319
    iput-object p1, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mOmadmState:Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    return-void
.end method

.method setOnlyEpsFallback(Z)V
    .registers 2

    .line 360
    iput p1, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mOnlyEpsFallback:I

    return-void
.end method

.method public setRTTMode(Ljava/lang/Boolean;)V
    .registers 2

    .line 235
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mRTTMode:Z

    return-void
.end method

.method setRcsVolteSingleRegistration(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;)V
    .registers 2

    .line 334
    iput-object p1, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mRcsVolteSingleRegistration:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;

    return-void
.end method

.method setRegistrationTasks(Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;)V
    .registers 2

    .line 259
    iput-object p1, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mRegistrationTasks:Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    return-void
.end method

.method setSuspendWhileIrat(Z)V
    .registers 2

    .line 291
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mSuspendRegiWhileIrat:Z

    return-void
.end method

.method setTTYMode(Ljava/lang/Boolean;)V
    .registers 2

    .line 227
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mTTYMode:Z

    return-void
.end method

.method public setUnprocessedOmadmConfig(Z)V
    .registers 2

    .line 323
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/SlotBasedConfig;->mUnprocessedOmadmConfig:Z

    return-void
.end method
