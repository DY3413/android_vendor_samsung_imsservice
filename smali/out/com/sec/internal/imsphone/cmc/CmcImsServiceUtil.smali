.class public Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;
.super Ljava/lang/Object;
.source "CmcImsServiceUtil.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CmcImsServiceUtil"


# instance fields
.field private final P2P_CALL_SESSION_ID:I

.field private mCmcReady:Z

.field private mCmcRegHandle:I

.field mConnectivityController:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

.field mMmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

.field mServiceProfile:Lcom/sec/internal/imsphone/ServiceProfile;

.field mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

.field private mp2pSecSessionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/ims/volte2/IImsCallSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/imsphone/MmTelFeatureImpl;Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;)V
    .registers 5

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e7

    .line 48
    iput v0, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->P2P_CALL_SESSION_ID:I

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mMmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    .line 51
    iput-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

    .line 52
    iput-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    .line 53
    iput-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mServiceProfile:Lcom/sec/internal/imsphone/ServiceProfile;

    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mCmcReady:Z

    const/4 v0, -0x1

    .line 55
    iput v0, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mCmcRegHandle:I

    .line 56
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mp2pSecSessionMap:Ljava/util/Map;

    .line 60
    iput-object p1, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mMmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    .line 61
    iput-object p2, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

    .line 62
    iput-object p3, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    return-void
.end method

.method private getCmcPhoneId(Lcom/sec/ims/volte2/IImsCallSession;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 441
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->isSupportDualSimCMC()Z

    move-result p0

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eqz p0, :cond_19

    .line 442
    invoke-interface {p1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcEdCallSlot()I

    move-result p0

    if-ne p0, v1, :cond_17

    goto :goto_23

    :cond_17
    move v0, p0

    goto :goto_23

    .line 445
    :cond_19
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getCmcLineSlotIndex()I

    move-result p0

    if-ne p0, v1, :cond_17

    :goto_23
    return v0
.end method

.method private getCmcRegHandle(II)I
    .registers 8

    .line 76
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    .line 77
    array-length v0, p0

    const/4 v1, 0x0

    :goto_a
    const/4 v2, -0x1

    if-ge v1, v0, :cond_5a

    aget-object v3, p0, v1

    if-eqz v3, :cond_57

    .line 78
    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v4

    if-eq v4, p1, :cond_21

    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->isSupportDualSimCMC()Z

    move-result v4

    if-eqz v4, :cond_57

    .line 79
    :cond_21
    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->hasVolteService()Z

    move-result v4

    if-eqz v4, :cond_57

    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    if-eqz v4, :cond_57

    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v4

    if-ne v4, p2, :cond_57

    .line 80
    invoke-static {p2}, Lcom/sec/internal/helper/ImsCallUtil;->isP2pPrimaryType(I)Z

    move-result p0

    if-eqz p0, :cond_52

    .line 81
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p0

    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationGovernor(I)Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p0

    if-eqz p0, :cond_51

    .line 82
    invoke-interface {p0, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->getP2pListSize(I)I

    move-result p0

    if-nez p0, :cond_52

    :cond_51
    return v2

    .line 86
    :cond_52
    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result p0

    return p0

    :cond_57
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_5a
    return v2
.end method

.method private setBoundSessionInfo(ILandroid/telephony/ims/ImsCallProfile;Lcom/sec/ims/volte2/data/CallProfile;)Z
    .registers 6

    .line 93
    sget-object v0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "setBoundSessionInfo()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object p2, p2, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    const-string v1, "android.telephony.ims.extra.OEM_EXTRAS"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    .line 95
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getCmcServiceHelper()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/ICmcServiceHelper;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/ICmcServiceHelper;->isCmcRegExist(I)Z

    move-result p0

    if-eqz p0, :cond_5b

    if-eqz p2, :cond_59

    const-string p0, "com.samsung.telephony.extra.CMC_BOUND_SESSION_ID"

    .line 97
    invoke-virtual {p2, p0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_44

    .line 99
    invoke-virtual {p2, p0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    .line 100
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setBoundSessionInfo(), boundSessionId: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-lez p0, :cond_44

    .line 102
    invoke-virtual {p3, p0}, Lcom/sec/ims/volte2/data/CallProfile;->setCmcBoundSessionId(I)V

    :cond_44
    const-string p0, "com.samsung.telephony.extra.CMC_DIAL_FROM"

    .line 105
    invoke-virtual {p2, p0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_59

    .line 107
    invoke-virtual {p2, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 108
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_59

    .line 109
    invoke-virtual {p3, p0}, Lcom/sec/ims/volte2/data/CallProfile;->setLetteringText(Ljava/lang/String;)V

    :cond_59
    const/4 p0, 0x1

    return p0

    :cond_5b
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public acquireP2pNetwork()V
    .registers 2

    .line 66
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

    invoke-interface {p0}, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;->getDeviceType()Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;

    move-result-object p0

    sget-object v0, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;->PDevice:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;

    if-ne p0, v0, :cond_11

    .line 67
    sget-object p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->LOG_TAG:Ljava/lang/String;

    const-string v0, "MO call by PD. startCmcP2pConnection!"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    return-void
.end method

.method public createCallSession(ILandroid/telephony/ims/ImsCallProfile;Lcom/sec/ims/volte2/data/CallProfile;)Lcom/android/ims/internal/IImsCallSession;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const-string v0, "com.samsung.telephony.extra.CMC_EXTERNAL_CALL_SLOT"

    .line 196
    sget-object v1, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createCallSession(), cmcType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :try_start_18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCmcRegHandle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mCmcRegHandle:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mCmcReady: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mCmcReady:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mp2pSecSessionMap size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mp2pSecSessionMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->isSupportDualSimCMC()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_b6

    .line 205
    invoke-static {p1}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcPrimaryType(I)Z

    move-result v2

    if-eqz v2, :cond_77

    .line 208
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getIncomingSessionPhoneIdForCmc()I

    move-result v0

    if-gez v0, :cond_9f

    .line 210
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getCmcServiceHelper()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/ICmcServiceHelper;

    move-result-object v0

    const/4 v2, 0x5

    invoke-interface {v0, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/ICmcServiceHelper;->getCsCallPhoneIdByState(I)I

    move-result v0

    goto :goto_9f

    .line 214
    :cond_77
    iget-object v2, p2, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    const-string v4, "android.telephony.ims.extra.OEM_EXTRAS"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_8c

    .line 215
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8c

    .line 216
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_8d

    :cond_8c
    move v0, v3

    :goto_8d
    const-string v2, "persist.cmc.pref_callslot"

    const-string v4, ""

    .line 218
    invoke-static {v2, v4}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 219
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9f

    .line 220
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 223
    :cond_9f
    :goto_9f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cmcEdCallSlot: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-virtual {p3, v0}, Lcom/sec/ims/volte2/data/CallProfile;->setCmcEdCallSlot(I)V

    .line 226
    :cond_b6
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mp2pSecSessionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_c4
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_c4} :catch_21c

    const/16 v2, 0x12

    const-string v4, "android.telephony.ims.extra.CALL_NETWORK_TYPE"

    const/4 v5, 0x1

    if-eqz v1, :cond_e3

    :try_start_cb
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 227
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/volte2/IImsCallSession;

    .line 228
    invoke-virtual {p2, v4}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v2, :cond_de

    goto :goto_df

    :cond_de
    move v5, v3

    :goto_df
    invoke-interface {v1, v5}, Lcom/sec/ims/volte2/IImsCallSession;->setEpdgState(Z)V

    goto :goto_c0

    .line 230
    :cond_e3
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mp2pSecSessionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_ed

    move v0, v5

    goto :goto_ee

    :cond_ed
    move v0, v3

    .line 232
    :goto_ee
    iget-boolean v1, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mCmcReady:Z

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-eqz v1, :cond_fd

    .line 233
    iget-object v1, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    iget v8, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mCmcRegHandle:I

    invoke-interface {v1, p3, v8}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->createSession(Lcom/sec/ims/volte2/data/CallProfile;I)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v1

    goto :goto_109

    :cond_fd
    if-ne p1, v6, :cond_108

    if-nez v0, :cond_108

    .line 236
    iget-object v1, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {v1, p3}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->createSession(Lcom/sec/ims/volte2/data/CallProfile;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v1

    goto :goto_109

    :cond_108
    move-object v1, v7

    .line 240
    :goto_109
    iget-object v8, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

    invoke-interface {v8}, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;->isEnabledWifiDirectFeature()Z

    move-result v8

    if-eqz v8, :cond_184

    .line 241
    iget-boolean v8, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mCmcReady:Z

    if-nez v8, :cond_184

    if-nez v0, :cond_184

    if-eq p1, v5, :cond_122

    if-eq p1, v6, :cond_122

    const/4 v6, 0x7

    if-eq p1, v6, :cond_122

    const/16 v6, 0x8

    if-ne p1, v6, :cond_184

    .line 246
    :cond_122
    iget-object p1, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

    invoke-interface {p1}, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;->getDeviceType()Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;

    move-result-object p1

    sget-object v0, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;->PDevice:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;

    if-ne p1, v0, :cond_134

    .line 247
    sget-object p1, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->LOG_TAG:Ljava/lang/String;

    const-string v0, "[P2P] create fake p2pSessionManager in PD"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14b

    .line 248
    :cond_134
    iget-object p1, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

    invoke-interface {p1}, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;->getDeviceType()Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;

    move-result-object p1

    sget-object v0, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;->SDevice:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;

    if-ne p1, v0, :cond_177

    .line 249
    sget-object p1, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->LOG_TAG:Ljava/lang/String;

    const-string v0, "[P2P] create fake sessionManager in SD "

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "there is no cmc, startCmcP2pConnection!"

    .line 250
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :goto_14b
    iget-object p1, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

    const/16 v0, 0x3e7

    invoke-interface {p1, v0}, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;->setP2pCallSessionId(I)V

    .line 258
    sget-object p1, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->LOG_TAG:Ljava/lang/String;

    const-string v1, "createCallSession, create imsCallSessionImpl for [P2P volte call]"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    new-instance v1, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    iget-object v2, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

    iget-object v3, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-direct {v1, v7, v2, v3}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;-><init>(Lcom/sec/ims/volte2/IImsCallSession;Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;)V

    .line 260
    new-instance v2, Lcom/sec/internal/imsphone/cmc/CmcImsCallSessionImpl;

    iget-object v3, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mMmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    invoke-direct {v2, p2, v1, v7, v3}, Lcom/sec/internal/imsphone/cmc/CmcImsCallSessionImpl;-><init>(Landroid/telephony/ims/ImsCallProfile;Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;Landroid/telephony/ims/aidl/IImsCallSessionListener;Lcom/sec/internal/imsphone/MmTelFeatureImpl;)V

    .line 261
    invoke-virtual {v1, p3}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->setReservedCallProfile(Lcom/sec/ims/volte2/data/CallProfile;)V

    .line 263
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mMmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    invoke-virtual {p0, v0, v2}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->setCallSession(ILcom/sec/internal/imsphone/ImsCallSessionImpl;)V

    const-string p0, "createCallSession, need timeout to wait p2p registration between PD and SD."

    .line 265
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 252
    :cond_177
    sget-object p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->LOG_TAG:Ljava/lang/String;

    const-string p1, "[P2P] error: please check your P2pSwitchEnabled"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :cond_184
    if-nez v1, :cond_18f

    if-eqz v0, :cond_189

    goto :goto_18f

    .line 271
    :cond_189
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :cond_18f
    :goto_18f
    if-eqz v1, :cond_1c6

    .line 277
    invoke-virtual {p2, v4}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v2, :cond_198

    move v3, v5

    :cond_198
    invoke-interface {v1, v3}, Lcom/sec/ims/volte2/IImsCallSession;->setEpdgState(Z)V

    .line 278
    new-instance p1, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    iget-object p3, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

    iget-object v2, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-direct {p1, v1, p3, v2}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;-><init>(Lcom/sec/ims/volte2/IImsCallSession;Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;)V

    if-eqz v0, :cond_1fb

    .line 280
    iget-object p3, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mp2pSecSessionMap:Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1b0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1fb

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 281
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/volte2/IImsCallSession;

    invoke-virtual {p1, v0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->addP2pSession(Lcom/sec/ims/volte2/IImsCallSession;)V

    goto :goto_1b0

    .line 286
    :cond_1c6
    iget-object p1, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mp2pSecSessionMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object p3, v7

    :goto_1d1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1fa

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    if-nez v3, :cond_1f0

    .line 288
    new-instance p3, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/volte2/IImsCallSession;

    iget-object v1, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

    iget-object v2, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-direct {p3, v0, v1, v2}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;-><init>(Lcom/sec/ims/volte2/IImsCallSession;Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;)V

    move v3, v5

    goto :goto_1d1

    .line 291
    :cond_1f0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/volte2/IImsCallSession;

    invoke-virtual {p3, v0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->addP2pSession(Lcom/sec/ims/volte2/IImsCallSession;)V

    goto :goto_1d1

    :cond_1fa
    move-object p1, p3

    .line 296
    :cond_1fb
    sget-object p3, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->LOG_TAG:Ljava/lang/String;

    const-string v0, "createCallSession, create imsCallSessionImpl for [CMC+D2D volte call]"

    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    new-instance p3, Lcom/sec/internal/imsphone/cmc/CmcImsCallSessionImpl;

    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mMmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    invoke-direct {p3, p2, p1, v7, v0}, Lcom/sec/internal/imsphone/cmc/CmcImsCallSessionImpl;-><init>(Landroid/telephony/ims/ImsCallProfile;Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;Landroid/telephony/ims/aidl/IImsCallSessionListener;Lcom/sec/internal/imsphone/MmTelFeatureImpl;)V

    .line 299
    iget-object p1, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mMmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    invoke-virtual {p3}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getCallIdInt()I

    move-result p2

    invoke-virtual {p1, p2, p3}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->setCallSession(ILcom/sec/internal/imsphone/ImsCallSessionImpl;)V

    .line 302
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

    invoke-virtual {p3}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getCallIdInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;->setP2pCallSessionId(I)V
    :try_end_21b
    .catch Landroid/os/RemoteException; {:try_start_cb .. :try_end_21b} :catch_21c

    return-object p3

    .line 307
    :catch_21c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public createP2pCallSession()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 312
    sget-object v0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->LOG_TAG:Ljava/lang/String;

    const-string v1, "createP2pCallSession()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v1, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;->needP2pCallSession(Z)V

    .line 316
    iget-object v1, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

    invoke-interface {v1}, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;->getP2pCallSessionId()I

    move-result v1

    .line 317
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "p2pSessionId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_31

    const-string/jumbo p0, "sub(wifi-direct) session is already created, just return"

    .line 319
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 323
    :cond_31
    iget-object v4, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mMmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    invoke-virtual {v4, v1}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->getCallSession(I)Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    move-result-object v1

    .line 324
    iget-object v4, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

    invoke-interface {v4, v3}, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;->setP2pCallSessionId(I)V

    .line 327
    iget-object v4, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-eqz v4, :cond_73

    .line 328
    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getForegroundSession()Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v4

    if-eqz v4, :cond_64

    .line 330
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "foreSession.getCmcType(): "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "pdcall is already connected. don\'t create subcallsession, just return"

    .line 331
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 336
    :cond_64
    iget-object v4, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getExtMoCall()Z

    move-result v4

    if-eqz v4, :cond_73

    const-string/jumbo p0, "the call is MOcall. don\'t create subcallsession, just return"

    .line 337
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 341
    :cond_73
    iget-object v4, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

    invoke-interface {v4}, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;->getP2pDeviceType()Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;->None:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;

    if-ne v4, v5, :cond_83

    const-string p0, "Not support p2p"

    .line 342
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_83
    if-nez v1, :cond_8c

    const-string/jumbo p0, "sessionImpl is null"

    .line 346
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 350
    :cond_8c
    invoke-virtual {v1}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v4

    .line 351
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v5

    invoke-virtual {v1}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v6

    invoke-static {v5, v6, v2}, Lcom/sec/internal/imsphone/DataTypeConvertor;->convertToSecCallProfile(ILandroid/telephony/ims/ImsCallProfile;Z)Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v5

    .line 352
    iget-object v6, v4, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    const-string v7, "android.telephony.ims.extra.OEM_EXTRAS"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    if-eqz v6, :cond_e0

    const-string v7, "com.samsung.telephony.extra.CMC_BOUND_SESSION_ID"

    .line 354
    invoke-virtual {v6, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_cb

    .line 356
    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 357
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "boundSessionId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v7, :cond_cb

    .line 359
    invoke-virtual {v5, v7}, Lcom/sec/ims/volte2/data/CallProfile;->setCmcBoundSessionId(I)V

    :cond_cb
    const-string v7, "com.samsung.telephony.extra.CMC_DIAL_FROM"

    .line 362
    invoke-virtual {v6, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e0

    .line 364
    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 365
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_e0

    .line 366
    invoke-virtual {v5, v6}, Lcom/sec/ims/volte2/data/CallProfile;->setLetteringText(Ljava/lang/String;)V

    .line 373
    :cond_e0
    new-instance v6, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v6}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 374
    iget-object v7, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-eqz v7, :cond_141

    .line 376
    iget-object v7, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

    invoke-interface {v7}, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;->getP2pDeviceType()Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;

    move-result-object v7

    .line 377
    sget-object v8, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;->PDevice:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;

    const-string v9, "create session on P2P-SD"

    const-string v10, "not found P2P-SD"

    if-ne v7, v8, :cond_117

    .line 378
    invoke-virtual {v5}, Lcom/sec/ims/volte2/data/CallProfile;->getPhoneId()I

    move-result v7

    const/4 v8, 0x7

    invoke-direct {p0, v7, v8}, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->getCmcRegHandle(II)I

    move-result v7

    if-eq v7, v3, :cond_113

    .line 379
    invoke-static {v0, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {v9, v5, v7}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->createSession(Lcom/sec/ims/volte2/data/CallProfile;I)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v7

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_141

    .line 382
    :cond_113
    invoke-static {v0, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_141

    .line 384
    :cond_117
    sget-object v8, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;->SDevice:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;

    if-ne v7, v8, :cond_13c

    .line 385
    invoke-virtual {v5}, Lcom/sec/ims/volte2/data/CallProfile;->getPhoneId()I

    move-result v7

    const/16 v8, 0x8

    invoke-direct {p0, v7, v8}, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->getCmcRegHandle(II)I

    move-result v7

    if-eq v7, v3, :cond_138

    .line 386
    invoke-static {v0, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {v9, v5, v7}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->createSession(Lcom/sec/ims/volte2/data/CallProfile;I)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v7

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_141

    .line 389
    :cond_138
    invoke-static {v0, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_141

    :cond_13c
    const-string v7, "not found P2P device, exception case"

    .line 392
    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :cond_141
    :goto_141
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "p2pSecSessionMap size: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_161
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_184

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 398
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/ims/volte2/IImsCallSession;

    const-string v9, "android.telephony.ims.extra.CALL_NETWORK_TYPE"

    .line 399
    invoke-virtual {v4, v9}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;)I

    move-result v9

    const/16 v10, 0x12

    if-ne v9, v10, :cond_17f

    goto :goto_180

    :cond_17f
    move v8, v2

    :goto_180
    invoke-interface {v7, v8}, Lcom/sec/ims/volte2/IImsCallSession;->setEpdgState(Z)V

    goto :goto_161

    .line 402
    :cond_184
    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_218

    move v0, v8

    :goto_18b
    const/4 v4, 0x5

    if-gt v0, v4, :cond_19d

    .line 407
    invoke-virtual {v5}, Lcom/sec/ims/volte2/data/CallProfile;->getPhoneId()I

    move-result v4

    invoke-direct {p0, v4, v0}, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->getCmcRegHandle(II)I

    move-result v4

    if-eq v4, v3, :cond_19a

    move v0, v8

    goto :goto_19e

    :cond_19a
    add-int/lit8 v0, v0, 0x2

    goto :goto_18b

    :cond_19d
    move v0, v2

    .line 412
    :goto_19e
    sget-object v3, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "existMainSession: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    invoke-virtual {v1}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getCmcCallSessionManager()Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    move-result-object v3

    .line 416
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1c0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1ef

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    if-nez v2, :cond_1e5

    if-nez v0, :cond_1db

    .line 419
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/IImsCallSession;

    invoke-virtual {v3, v2}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->setMainSession(Lcom/sec/ims/volte2/IImsCallSession;)V

    move v2, v8

    goto :goto_1c0

    .line 422
    :cond_1db
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/ims/volte2/IImsCallSession;

    invoke-virtual {v3, v5}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->addP2pSession(Lcom/sec/ims/volte2/IImsCallSession;)V

    goto :goto_1c0

    .line 425
    :cond_1e5
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/ims/volte2/IImsCallSession;

    invoke-virtual {v3, v5}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->addP2pSession(Lcom/sec/ims/volte2/IImsCallSession;)V

    goto :goto_1c0

    .line 428
    :cond_1ef
    sget-object v0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSubSessionList size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->getP2pSessionSize()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    invoke-virtual {v1}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->initP2pImpl()V

    .line 431
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mMmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    invoke-virtual {v1}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getCallIdInt()I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->setCallSession(ILcom/sec/internal/imsphone/ImsCallSessionImpl;)V

    .line 434
    invoke-virtual {v3, v2}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->startP2pSessions(Z)V

    :cond_218
    return-void
.end method

.method public getPendingCallSession(ILandroid/telephony/ims/ImsCallProfile;Lcom/sec/ims/volte2/IImsCallSession;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 453
    sget-object v0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getPendingCallSession()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    iget-object v1, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getCmcServiceHelper()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/ICmcServiceHelper;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/ICmcServiceHelper;->isCmcRegExist(I)Z

    move-result p1

    const-string v1, "android.telephony.ims.extra.OEM_EXTRAS"

    const-string v2, "com.samsung.telephony.extra.CMC_TYPE"

    const-string v3, "com.samsung.telephony.extra.CMC_SESSION_ID"

    const-string v4, ")"

    const-string v5, " -> "

    const-string v6, "getPendingCallSession(), SEM_EXTRA_CMC_TYPE: ("

    const/4 v7, 0x1

    if-eqz p1, :cond_b2

    .line 455
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 456
    invoke-interface {p3}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v8

    .line 457
    invoke-interface {p3}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v9

    .line 459
    invoke-static {v8}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcPrimaryType(I)Z

    move-result v10

    if-eqz v10, :cond_34

    goto :goto_3d

    .line 461
    :cond_34
    invoke-static {v8}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcSecondaryType(I)Z

    move-result v7

    if-eqz v7, :cond_3c

    const/4 v7, 0x2

    goto :goto_3d

    :cond_3c
    move v7, v8

    .line 464
    :goto_3d
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    invoke-virtual {p1, v3, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 467
    invoke-virtual {p1, v2, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 468
    invoke-static {v7}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcPrimaryType(I)Z

    move-result v2

    if-eqz v2, :cond_72

    const-string v0, "com.samsung.telephony.extra.CMC_PHONE_ID"

    .line 469
    invoke-direct {p0, p3}, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->getCmcPhoneId(Lcom/sec/ims/volte2/IImsCallSession;)I

    move-result p0

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_ac

    .line 470
    :cond_72
    invoke-static {v7}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcSecondaryType(I)Z

    move-result p0

    if-eqz p0, :cond_ac

    .line 471
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->isSupportDualSimCMC()Z

    move-result p0

    if-eqz p0, :cond_ac

    .line 472
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "put CMC_EXTERNAL_CALL_SLOT: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcEdCallSlot()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    invoke-interface {p3}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcEdCallSlot()I

    move-result p0

    const-string p3, "com.samsung.telephony.extra.CMC_EXTERNAL_CALL_SLOT"

    invoke-virtual {p1, p3, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 476
    :cond_ac
    :goto_ac
    iget-object p0, p2, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    invoke-virtual {p0, v1, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_f7

    .line 478
    :cond_b2
    iget-object p1, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

    invoke-interface {p1}, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;->isEnabledWifiDirectFeature()Z

    move-result p1

    if-eqz p1, :cond_f7

    .line 479
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

    invoke-interface {p0}, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;->getP2pDeviceType()Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;

    move-result-object p0

    sget-object p1, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;->PDevice:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;

    if-ne p0, p1, :cond_f7

    .line 480
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 482
    invoke-interface {p3}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result p1

    .line 483
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result p3

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    invoke-virtual {p0, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 486
    invoke-virtual {p0, v2, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 490
    iget-object p1, p2, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v1, p0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_f7
    :goto_f7
    return-void
.end method

.method public postProcessForCmcIncomingCall(ILandroid/content/Intent;Lcom/sec/ims/volte2/IImsCallSession;)V
    .registers 11

    .line 511
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getCmcServiceHelper()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/ICmcServiceHelper;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/ICmcServiceHelper;->isCmcRegExist(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c9

    .line 512
    invoke-interface {p3}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    .line 513
    invoke-interface {p3}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v2

    .line 514
    invoke-interface {p3}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v3

    .line 516
    invoke-static {v2}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcPrimaryType(I)Z

    move-result v4

    if-eqz v4, :cond_21

    move v2, v1

    goto :goto_28

    .line 518
    :cond_21
    invoke-static {v2}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcSecondaryType(I)Z

    move-result v4

    if-eqz v4, :cond_28

    const/4 v2, 0x2

    .line 521
    :cond_28
    :goto_28
    sget-object v4, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "postProcessForCmcIncomingCall(), SEM_EXTRA_CMC_TYPE: ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "com.samsung.telephony.extra.CMC_TYPE"

    .line 523
    invoke-virtual {p2, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "com.samsung.telephony.extra.CMC_SESSION_ID"

    .line 524
    invoke-virtual {p2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-ne v2, v1, :cond_9e

    const-string v2, "com.samsung.telephony.extra.CMC_DIAL_TO"

    .line 527
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 528
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getReplaceSipCallId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_81

    const-string v2, "com.samsung.telephony.extra.CMC_REPLACE_CALL_ID"

    .line 529
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getReplaceSipCallId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.samsung.telephony.extra.CMC_DEVICE_ID_BY_SD"

    .line 531
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_94

    .line 532
    :cond_81
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_94

    const-string v2, "com.samsung.telephony.extra.CMC_DEVICE_ID"

    .line 533
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_94
    :goto_94
    const-string v0, "com.samsung.telephony.extra.CMC_PHONE_ID"

    .line 535
    invoke-direct {p0, p3}, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->getCmcPhoneId(Lcom/sec/ims/volte2/IImsCallSession;)I

    move-result v2

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_c9

    .line 537
    :cond_9e
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->isSupportDualSimCMC()Z

    move-result v2

    if-eqz v2, :cond_c9

    .line 538
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "postProcessForCmcIncomingCall(), cmcEdCallSlot:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcEdCallSlot()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "com.samsung.telephony.extra.CMC_EXTERNAL_CALL_SLOT"

    .line 539
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcEdCallSlot()I

    move-result v0

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 544
    :cond_c9
    :goto_c9
    iget-object p2, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

    invoke-interface {p2}, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;->isEnabledWifiDirectFeature()Z

    move-result p2

    if-eqz p2, :cond_ff

    .line 545
    invoke-interface {p3}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result p2

    if-nez p2, :cond_ff

    iget-object p2, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

    .line 546
    invoke-interface {p2}, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;->getP2pDeviceType()Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;

    move-result-object p2

    sget-object p3, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;->None:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;

    if-ne p2, p3, :cond_ff

    const/4 p2, 0x7

    .line 547
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->getCmcRegHandle(II)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_ff

    .line 548
    sget-object p1, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->LOG_TAG:Ljava/lang/String;

    const-string p2, "onIncomingCall: need wifi-direct connection, startCmcP2pConnection!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    iget-object p1, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

    invoke-interface {p1}, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;->setP2pPD()V

    .line 554
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

    invoke-interface {p0, v1}, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;->setCmcActivation(Z)V
    :try_end_fa
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_fa} :catch_fb

    goto :goto_ff

    :catch_fb
    move-exception p0

    .line 559
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_ff
    :goto_ff
    return-void
.end method

.method public prepareCallSession(ILandroid/telephony/ims/ImsCallProfile;Lcom/sec/ims/volte2/data/CallProfile;I)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const/4 v0, -0x1

    .line 120
    iput v0, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mCmcRegHandle:I

    const/4 v1, 0x1

    .line 121
    iput-boolean v1, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mCmcReady:Z

    .line 122
    iget-object v2, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mp2pSecSessionMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 126
    :try_start_b
    invoke-direct {p0, p4, p2, p3}, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->setBoundSessionInfo(ILandroid/telephony/ims/ImsCallProfile;Lcom/sec/ims/volte2/data/CallProfile;)Z

    move-result v2

    .line 127
    sget-object v3, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prepareCallSession(), isCmcRegExist: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    if-eqz v2, :cond_11d

    if-ne p1, v1, :cond_a2

    .line 131
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getCmcLineSlotIndex()I

    move-result p2

    .line 132
    invoke-direct {p0, p4, p1}, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->getCmcRegHandle(II)I

    move-result v1

    iput v1, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mCmcRegHandle:I

    if-ne v1, v0, :cond_42

    const-string v1, "CMC PD is not registered."

    .line 134
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iput-boolean v4, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mCmcReady:Z

    goto :goto_5b

    :cond_42
    if-eq p2, p4, :cond_56

    .line 136
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->isSupportDualSimCMC()Z

    move-result v1

    if-nez v1, :cond_56

    const-string v1, "phoneId and cmcLineSlotIndex are not matched"

    .line 138
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iput-boolean v4, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mCmcReady:Z

    goto :goto_5b

    :cond_56
    const-string v1, "prepareCallSession, create session on CMC-PD"

    .line 141
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :goto_5b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cmcLineSlotIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", phoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p2, p4, :cond_11f

    .line 148
    iget-object p2, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

    invoke-interface {p2}, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;->isEnabledWifiDirectFeature()Z

    move-result p2

    if-eqz p2, :cond_83

    const/4 p2, 0x7

    goto :goto_84

    :cond_83
    const/4 p2, 0x5

    :goto_84
    const/4 v1, 0x3

    :goto_85
    if-gt v1, p2, :cond_11f

    .line 152
    invoke-direct {p0, p4, v1}, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->getCmcRegHandle(II)I

    move-result v2

    if-eq v2, v0, :cond_9f

    .line 153
    invoke-virtual {p3, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setCmcType(I)V

    .line 154
    iget-object v3, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mp2pSecSessionMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {v5, p3, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->createSession(Lcom/sec/ims/volte2/data/CallProfile;I)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9f
    add-int/lit8 v1, v1, 0x2

    goto :goto_85

    .line 158
    :cond_a2
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->isSecondaryDevice()Z

    move-result v1

    if-eqz v1, :cond_11f

    const-string v1, "CallPull"

    .line 159
    invoke-virtual {p2, v1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraBoolean(Ljava/lang/String;)Z

    move-result p2

    const/4 v1, 0x2

    if-eqz p2, :cond_b7

    :goto_b5
    move p1, v1

    goto :goto_c6

    .line 161
    :cond_b7
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/internal/helper/os/ITelephonyManager;->isVoiceCapable()Z

    move-result p2

    if-nez p2, :cond_c6

    goto :goto_b5

    .line 164
    :cond_c6
    :goto_c6
    invoke-direct {p0, p4, v1}, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->getCmcRegHandle(II)I

    move-result p2

    iput p2, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mCmcRegHandle:I

    if-eq p2, v0, :cond_d4

    const-string p2, "create session on CMC SD"

    .line 165
    invoke-static {v3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d6

    .line 167
    :cond_d4
    iput-boolean v4, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mCmcReady:Z

    :goto_d6
    const/4 p2, 0x4

    .line 171
    invoke-direct {p0, p4, p2}, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->getCmcRegHandle(II)I

    move-result v1

    if-eq v1, v0, :cond_f5

    const-string p4, "create session on WIFI-AP SD"

    .line 172
    invoke-static {v3, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-virtual {p3, p2}, Lcom/sec/ims/volte2/data/CallProfile;->setCmcType(I)V

    .line 174
    iget-object p2, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mp2pSecSessionMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {p0, p3, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->createSession(Lcom/sec/ims/volte2/data/CallProfile;I)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object p0

    invoke-interface {p2, p4, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11f

    .line 176
    :cond_f5
    iget-object p2, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

    invoke-interface {p2}, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;->isEnabledWifiDirectFeature()Z

    move-result p2

    if-eqz p2, :cond_11f

    const/16 p2, 0x8

    .line 177
    invoke-direct {p0, p4, p2}, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->getCmcRegHandle(II)I

    move-result p4

    if-eq p4, v0, :cond_11f

    const-string v0, "create session on WIFI-DIRECT SD"

    .line 178
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-virtual {p3, p2}, Lcom/sec/ims/volte2/data/CallProfile;->setCmcType(I)V

    .line 180
    iget-object p2, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mp2pSecSessionMap:Ljava/util/Map;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {p0, p3, p4}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->createSession(Lcom/sec/ims/volte2/data/CallProfile;I)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object p0

    invoke-interface {p2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11f

    .line 186
    :cond_11d
    iput-boolean v4, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mCmcReady:Z

    .line 188
    :cond_11f
    :goto_11f
    invoke-virtual {p3, p1}, Lcom/sec/ims/volte2/data/CallProfile;->setCmcType(I)V
    :try_end_122
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_122} :catch_122

    :catch_122
    return p1
.end method

.method public sendPublishDialog(ILcom/android/internal/telephony/PublishDialog;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 498
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

    invoke-interface {v0}, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;->isEnabledWifiDirectFeature()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x7

    goto :goto_b

    :cond_a
    const/4 v0, 0x5

    .line 502
    :goto_b
    sget-object v1, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendPublishDialog() callCnt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/internal/telephony/PublishDialog;->getCallCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :goto_27
    if-gt v1, v0, :cond_35

    .line 504
    iget-object v2, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getCmcServiceHelper()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/ICmcServiceHelper;

    move-result-object v2

    invoke-interface {v2, p1, p2, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/ICmcServiceHelper;->sendPublishDialog(ILcom/android/internal/telephony/PublishDialog;I)V

    add-int/lit8 v1, v1, 0x2

    goto :goto_27

    :cond_35
    return-void
.end method

.method public setServiceProfile(Lcom/sec/internal/imsphone/ServiceProfile;)V
    .registers 2

    .line 72
    iput-object p1, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mServiceProfile:Lcom/sec/internal/imsphone/ServiceProfile;

    return-void
.end method
