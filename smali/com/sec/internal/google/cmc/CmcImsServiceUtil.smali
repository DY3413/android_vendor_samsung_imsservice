.class public Lcom/sec/internal/google/cmc/CmcImsServiceUtil;
.super Ljava/lang/Object;
.source "CmcImsServiceUtil.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CmcImsServiceUtil"


# instance fields
.field private final P2P_CALL_SESSION_ID:I

.field private mCmcReady:Z

.field private mCmcRegHandle:I

.field mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

.field private mContext:Landroid/content/Context;

.field mGoogleImsAdaptor:Lcom/sec/internal/google/GoogleImsService;

.field mServiceProfile:Lcom/sec/internal/google/ServiceProfile;

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
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/google/GoogleImsService;Lcom/sec/internal/google/cmc/CmcConnectivityController;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;)V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e7

    .line 52
    iput v0, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->P2P_CALL_SESSION_ID:I

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mGoogleImsAdaptor:Lcom/sec/internal/google/GoogleImsService;

    .line 55
    iput-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    .line 56
    iput-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    .line 57
    iput-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mServiceProfile:Lcom/sec/internal/google/ServiceProfile;

    const/4 v0, 0x1

    .line 58
    iput-boolean v0, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mCmcReady:Z

    const/4 v0, -0x1

    .line 59
    iput v0, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mCmcRegHandle:I

    .line 60
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mp2pSecSessionMap:Ljava/util/Map;

    .line 64
    iput-object p1, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mContext:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mGoogleImsAdaptor:Lcom/sec/internal/google/GoogleImsService;

    .line 66
    iput-object p3, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    .line 67
    iput-object p4, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    return-void
.end method

.method private getCmcPhoneId(Lcom/sec/ims/volte2/IImsCallSession;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 451
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->isSupportDualSimCMC()Z

    move-result p0

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eqz p0, :cond_1

    .line 452
    invoke-interface {p1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcEdCallSlot()I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, p0

    goto :goto_0

    .line 455
    :cond_1
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getCmcLineSlotIndex()I

    move-result p0

    if-ne p0, v1, :cond_0

    :goto_0
    return v0
.end method

.method private getCmcRegHandle(Lcom/sec/internal/google/ServiceProfile;I)I
    .locals 6

    .line 81
    invoke-virtual {p1}, Lcom/sec/internal/google/ServiceProfile;->getServiceClass()I

    move-result p0

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ne p0, v1, :cond_4

    .line 82
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    .line 83
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, p0, v2

    if-eqz v3, :cond_3

    .line 84
    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v4

    invoke-virtual {p1}, Lcom/sec/internal/google/ServiceProfile;->getPhoneId()I

    move-result v5

    if-eq v4, v5, :cond_0

    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->isSupportDualSimCMC()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 85
    :cond_0
    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->hasVolteService()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v4

    if-ne v4, p2, :cond_3

    .line 86
    invoke-static {p2}, Lcom/sec/internal/helper/ImsCallUtil;->isP2pPrimaryType(I)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 87
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p0

    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationGovernor(I)Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 88
    invoke-interface {p0, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->getP2pListSize(I)I

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    return v0

    .line 92
    :cond_2
    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result p0

    return p0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method private setBoundSessionInfo(ILandroid/telephony/ims/ImsCallProfile;Lcom/sec/ims/volte2/data/CallProfile;)Z
    .locals 2

    .line 100
    sget-object v0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->LOG_TAG:Ljava/lang/String;

    const-string v1, "setBoundSessionInfo()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object p2, p2, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    const-string v1, "android.telephony.ims.extra.OEM_EXTRAS"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    .line 102
    iget-object p0, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getCmcServiceHelper()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/ICmcServiceHelper;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/ICmcServiceHelper;->isCmcRegExist(I)Z

    move-result p0

    if-eqz p0, :cond_2

    if-eqz p2, :cond_1

    const-string p0, "com.samsung.telephony.extra.CMC_BOUND_SESSION_ID"

    .line 104
    invoke-virtual {p2, p0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 106
    invoke-virtual {p2, p0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    .line 107
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBoundSessionInfo(), boundSessionId: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-lez p0, :cond_0

    .line 109
    invoke-virtual {p3, p0}, Lcom/sec/ims/volte2/data/CallProfile;->setCmcBoundSessionId(I)V

    :cond_0
    const-string p0, "com.samsung.telephony.extra.CMC_DIAL_FROM"

    .line 112
    invoke-virtual {p2, p0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 114
    invoke-virtual {p2, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 115
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 116
    invoke-virtual {p3, p0}, Lcom/sec/ims/volte2/data/CallProfile;->setLetteringText(Ljava/lang/String;)V

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public acquireP2pNetwork()V
    .locals 1

    .line 71
    iget-object p0, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-virtual {p0}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->getDeviceType()Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    move-result-object p0

    sget-object v0, Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;->PDevice:Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    if-ne p0, v0, :cond_0

    .line 72
    sget-object p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->LOG_TAG:Ljava/lang/String;

    const-string v0, "MO call by PD. startCmcP2pConnection!"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public createCallSession(IILandroid/telephony/ims/ImsCallProfile;Lcom/sec/ims/volte2/data/CallProfile;Lcom/sec/internal/google/ServiceProfile;)Lcom/android/ims/internal/IImsCallSession;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const-string p2, "com.samsung.telephony.extra.CMC_EXTERNAL_CALL_SLOT"

    .line 206
    sget-object p5, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createCallSession(), cmcType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCmcRegHandle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mCmcRegHandle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCmcReady: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mCmcReady:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mp2pSecSessionMap size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mp2pSecSessionMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->isSupportDualSimCMC()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 215
    invoke-static {p1}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcPrimaryType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    iget-object p2, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getIncomingSessionPhoneIdForCmc()I

    move-result p2

    if-gez p2, :cond_2

    .line 220
    iget-object p2, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getCmcServiceHelper()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/ICmcServiceHelper;

    move-result-object p2

    const/4 v0, 0x5

    invoke-interface {p2, v0}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/ICmcServiceHelper;->getCsCallPhoneIdByState(I)I

    move-result p2

    goto :goto_1

    .line 224
    :cond_0
    iget-object v0, p3, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    const-string v2, "android.telephony.ims.extra.OEM_EXTRAS"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 225
    invoke-virtual {v0, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 226
    invoke-virtual {v0, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    goto :goto_0

    :cond_1
    move p2, v1

    :goto_0
    const-string v0, "persist.cmc.pref_callslot"

    const-string v2, ""

    .line 228
    invoke-static {v0, v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 229
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 230
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 233
    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cmcEdCallSlot: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-virtual {p4, p2}, Lcom/sec/ims/volte2/data/CallProfile;->setCmcEdCallSlot(I)V

    .line 236
    :cond_3
    iget-object p2, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mp2pSecSessionMap:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0x12

    const-string v2, "CallRadioTech"

    if-eqz p5, :cond_4

    :try_start_1
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/util/Map$Entry;

    .line 237
    invoke-interface {p5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/sec/ims/volte2/IImsCallSession;

    .line 238
    invoke-virtual {p3, v2}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-interface {p5, v0}, Lcom/sec/ims/volte2/IImsCallSession;->setEpdgState(Z)V

    goto :goto_2

    .line 240
    :cond_4
    iget-object p2, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mp2pSecSessionMap:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    const/4 p5, 0x1

    if-lez p2, :cond_5

    move p2, p5

    goto :goto_3

    :cond_5
    move p2, v1

    .line 242
    :goto_3
    iget-boolean v3, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mCmcReady:Z

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v3, :cond_6

    .line 243
    iget-object v3, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    iget v6, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mCmcRegHandle:I

    invoke-interface {v3, p4, v6}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->createSession(Lcom/sec/ims/volte2/data/CallProfile;I)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v3

    goto :goto_4

    :cond_6
    if-ne p1, v4, :cond_7

    if-nez p2, :cond_7

    .line 246
    iget-object v3, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {v3, p4}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->createSession(Lcom/sec/ims/volte2/data/CallProfile;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v3

    goto :goto_4

    :cond_7
    move-object v3, v5

    .line 250
    :goto_4
    iget-object v6, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-virtual {v6}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->isEnabledWifiDirectFeature()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 251
    iget-boolean v6, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mCmcReady:Z

    if-nez v6, :cond_b

    if-nez p2, :cond_b

    if-eq p1, p5, :cond_8

    if-eq p1, v4, :cond_8

    const/4 v4, 0x7

    if-eq p1, v4, :cond_8

    const/16 v4, 0x8

    if-ne p1, v4, :cond_b

    .line 256
    :cond_8
    iget-object p1, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-virtual {p1}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->getDeviceType()Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    move-result-object p1

    sget-object p2, Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;->PDevice:Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    if-ne p1, p2, :cond_9

    .line 257
    sget-object p1, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->LOG_TAG:Ljava/lang/String;

    const-string p2, "[P2P] create fake p2pSessionManager in PD"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 258
    :cond_9
    iget-object p1, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-virtual {p1}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->getDeviceType()Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    move-result-object p1

    sget-object p2, Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;->SDevice:Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    if-ne p1, p2, :cond_a

    .line 259
    sget-object p1, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->LOG_TAG:Ljava/lang/String;

    const-string p2, "[P2P] create fake sessionManager in SD "

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p2, "there is no cmc, startCmcP2pConnection!"

    .line 260
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :goto_5
    iget-object p1, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    const/16 p2, 0x3e7

    invoke-virtual {p1, p2}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->setP2pCallSessionId(I)V

    .line 268
    sget-object p1, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->LOG_TAG:Ljava/lang/String;

    const-string p5, "createCallSession, create imsCallSessionImpl for [P2P volte call]"

    invoke-static {p1, p5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    new-instance p5, Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-direct {p5, v5, v0, v1}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;-><init>(Lcom/sec/ims/volte2/IImsCallSession;Lcom/sec/internal/google/cmc/CmcConnectivityController;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;)V

    .line 270
    new-instance v0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;

    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mGoogleImsAdaptor:Lcom/sec/internal/google/GoogleImsService;

    invoke-direct {v0, p3, p5, v5, v1}, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;-><init>(Landroid/telephony/ims/ImsCallProfile;Lcom/sec/internal/google/cmc/CmcCallSessionManager;Landroid/telephony/ims/aidl/IImsCallSessionListener;Lcom/sec/internal/google/GoogleImsService;)V

    .line 271
    invoke-virtual {p5, p4}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->setReservedCallProfile(Lcom/sec/ims/volte2/data/CallProfile;)V

    .line 273
    iget-object p0, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mGoogleImsAdaptor:Lcom/sec/internal/google/GoogleImsService;

    invoke-virtual {p0, p2, v0}, Lcom/sec/internal/google/GoogleImsService;->setCallSession(ILcom/sec/internal/google/ImsCallSessionImpl;)V

    const-string p0, "createCallSession, need timeout to wait p2p registration between PD and SD."

    .line 275
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 262
    :cond_a
    sget-object p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->LOG_TAG:Ljava/lang/String;

    const-string p1, "[P2P] error: please check your P2pSwitchEnabled"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :cond_b
    if-nez v3, :cond_d

    if-eqz p2, :cond_c

    goto :goto_6

    .line 281
    :cond_c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :cond_d
    :goto_6
    if-eqz v3, :cond_e

    .line 287
    invoke-virtual {p3, v2}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    invoke-interface {v3, p1}, Lcom/sec/ims/volte2/IImsCallSession;->setEpdgState(Z)V

    .line 288
    new-instance p1, Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    iget-object p4, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    iget-object p5, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-direct {p1, v3, p4, p5}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;-><init>(Lcom/sec/ims/volte2/IImsCallSession;Lcom/sec/internal/google/cmc/CmcConnectivityController;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;)V

    if-eqz p2, :cond_11

    .line 290
    iget-object p2, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mp2pSecSessionMap:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_11

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map$Entry;

    .line 291
    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/sec/ims/volte2/IImsCallSession;

    invoke-virtual {p1, p4}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->addP2pSession(Lcom/sec/ims/volte2/IImsCallSession;)V

    goto :goto_7

    .line 296
    :cond_e
    iget-object p1, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mp2pSecSessionMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object p2, v5

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_10

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map$Entry;

    if-nez v1, :cond_f

    .line 298
    new-instance p2, Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/sec/ims/volte2/IImsCallSession;

    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-direct {p2, p4, v0, v1}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;-><init>(Lcom/sec/ims/volte2/IImsCallSession;Lcom/sec/internal/google/cmc/CmcConnectivityController;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;)V

    move v1, p5

    goto :goto_8

    .line 301
    :cond_f
    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/sec/ims/volte2/IImsCallSession;

    invoke-virtual {p2, p4}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->addP2pSession(Lcom/sec/ims/volte2/IImsCallSession;)V

    goto :goto_8

    :cond_10
    move-object p1, p2

    .line 306
    :cond_11
    sget-object p2, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->LOG_TAG:Ljava/lang/String;

    const-string p4, "createCallSession, create imsCallSessionImpl for [CMC+D2D volte call]"

    invoke-static {p2, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    new-instance p2, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;

    iget-object p4, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mGoogleImsAdaptor:Lcom/sec/internal/google/GoogleImsService;

    invoke-direct {p2, p3, p1, v5, p4}, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;-><init>(Landroid/telephony/ims/ImsCallProfile;Lcom/sec/internal/google/cmc/CmcCallSessionManager;Landroid/telephony/ims/aidl/IImsCallSessionListener;Lcom/sec/internal/google/GoogleImsService;)V

    .line 309
    iget-object p1, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mGoogleImsAdaptor:Lcom/sec/internal/google/GoogleImsService;

    invoke-virtual {p2}, Lcom/sec/internal/google/ImsCallSessionImpl;->getCallIdInt()I

    move-result p3

    invoke-virtual {p1, p3, p2}, Lcom/sec/internal/google/GoogleImsService;->setCallSession(ILcom/sec/internal/google/ImsCallSessionImpl;)V

    .line 312
    iget-object p0, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-virtual {p2}, Lcom/sec/internal/google/ImsCallSessionImpl;->getCallIdInt()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->setP2pCallSessionId(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p2

    .line 317
    :catch_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public createP2pCallSession()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 322
    sget-object v0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->LOG_TAG:Ljava/lang/String;

    const-string v1, "createP2pCallSession()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->needP2pCallSession(Z)V

    .line 326
    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-virtual {v1}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->getP2pCallSessionId()I

    move-result v1

    .line 327
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "p2pSessionId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    const-string/jumbo p0, "sub(wifi-direct) session is already created, just return"

    .line 329
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 333
    :cond_0
    iget-object v4, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mGoogleImsAdaptor:Lcom/sec/internal/google/GoogleImsService;

    invoke-virtual {v4, v1}, Lcom/sec/internal/google/GoogleImsService;->getCallSession(I)Lcom/sec/internal/google/ImsCallSessionImpl;

    move-result-object v1

    .line 334
    iget-object v4, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-virtual {v4, v3}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->setP2pCallSessionId(I)V

    .line 337
    iget-object v4, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-eqz v4, :cond_2

    .line 338
    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getForegroundSession()Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 340
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

    .line 341
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 346
    :cond_1
    iget-object v4, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getExtMoCall()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo p0, "the call is MOcall. don\'t create subcallsession, just return"

    .line 347
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 351
    :cond_2
    iget-object v4, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-virtual {v4}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->getP2pDeviceType()Lcom/sec/internal/google/cmc/CmcP2pController$DeviceType;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/google/cmc/CmcP2pController$DeviceType;->None:Lcom/sec/internal/google/cmc/CmcP2pController$DeviceType;

    if-ne v4, v5, :cond_3

    const-string p0, "Not support p2p"

    .line 352
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    if-nez v1, :cond_4

    const-string p0, "sessionImpl is null"

    .line 356
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 360
    :cond_4
    invoke-virtual {v1}, Lcom/sec/internal/google/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v4

    .line 361
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v5

    invoke-virtual {v1}, Lcom/sec/internal/google/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v6

    invoke-static {v5, v6, v2}, Lcom/sec/internal/google/DataTypeConvertor;->convertToSecCallProfile(ILandroid/telephony/ims/ImsCallProfile;Z)Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v5

    .line 362
    iget-object v6, v4, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    const-string v7, "android.telephony.ims.extra.OEM_EXTRAS"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    if-eqz v6, :cond_6

    const-string v7, "com.samsung.telephony.extra.CMC_BOUND_SESSION_ID"

    .line 364
    invoke-virtual {v6, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 366
    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 367
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "boundSessionId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v7, :cond_5

    .line 369
    invoke-virtual {v5, v7}, Lcom/sec/ims/volte2/data/CallProfile;->setCmcBoundSessionId(I)V

    :cond_5
    const-string v7, "com.samsung.telephony.extra.CMC_DIAL_FROM"

    .line 372
    invoke-virtual {v6, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 374
    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 375
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 376
    invoke-virtual {v5, v6}, Lcom/sec/ims/volte2/data/CallProfile;->setLetteringText(Ljava/lang/String;)V

    .line 382
    :cond_6
    iget-object v6, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mServiceProfile:Lcom/sec/internal/google/ServiceProfile;

    .line 383
    new-instance v7, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v7}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 384
    iget-object v8, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-eqz v8, :cond_b

    .line 386
    iget-object v8, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-virtual {v8}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->getP2pDeviceType()Lcom/sec/internal/google/cmc/CmcP2pController$DeviceType;

    move-result-object v8

    .line 387
    sget-object v9, Lcom/sec/internal/google/cmc/CmcP2pController$DeviceType;->PDevice:Lcom/sec/internal/google/cmc/CmcP2pController$DeviceType;

    const-string v10, "create session on P2P-SD"

    const-string v11, "not found P2P-SD"

    if-ne v8, v9, :cond_8

    const/4 v8, 0x7

    .line 388
    invoke-direct {p0, v6, v8}, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->getCmcRegHandle(Lcom/sec/internal/google/ServiceProfile;I)I

    move-result v8

    if-eq v8, v3, :cond_7

    .line 389
    invoke-static {v0, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {v10, v5, v8}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->createSession(Lcom/sec/ims/volte2/data/CallProfile;I)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v5

    invoke-interface {v7, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 392
    :cond_7
    invoke-static {v0, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 394
    :cond_8
    sget-object v9, Lcom/sec/internal/google/cmc/CmcP2pController$DeviceType;->SDevice:Lcom/sec/internal/google/cmc/CmcP2pController$DeviceType;

    if-ne v8, v9, :cond_a

    const/16 v8, 0x8

    .line 395
    invoke-direct {p0, v6, v8}, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->getCmcRegHandle(Lcom/sec/internal/google/ServiceProfile;I)I

    move-result v8

    if-eq v8, v3, :cond_9

    .line 396
    invoke-static {v0, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {v10, v5, v8}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->createSession(Lcom/sec/ims/volte2/data/CallProfile;I)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v5

    invoke-interface {v7, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 399
    :cond_9
    invoke-static {v0, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_a
    const-string v5, "not found P2P device, exception case"

    .line 402
    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_b
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "p2pSecSessionMap size: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 408
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/ims/volte2/IImsCallSession;

    const-string v8, "CallRadioTech"

    .line 409
    invoke-virtual {v4, v8}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x12

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    invoke-interface {v5, v8}, Lcom/sec/ims/volte2/IImsCallSession;->setEpdgState(Z)V

    goto :goto_1

    .line 412
    :cond_c
    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_12

    const/4 v0, 0x5

    const/4 v4, 0x1

    move v5, v4

    :goto_2
    if-gt v5, v0, :cond_e

    .line 417
    invoke-direct {p0, v6, v5}, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->getCmcRegHandle(Lcom/sec/internal/google/ServiceProfile;I)I

    move-result v8

    if-eq v8, v3, :cond_d

    move v0, v4

    goto :goto_3

    :cond_d
    add-int/lit8 v5, v5, 0x2

    goto :goto_2

    :cond_e
    move v0, v2

    .line 422
    :goto_3
    sget-object v3, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "existMainSession: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    invoke-virtual {v1}, Lcom/sec/internal/google/ImsCallSessionImpl;->getCmcCallSessionManager()Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    move-result-object v3

    .line 426
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    if-nez v2, :cond_10

    if-nez v0, :cond_f

    .line 429
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/IImsCallSession;

    invoke-virtual {v3, v2}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->setMainSession(Lcom/sec/ims/volte2/IImsCallSession;)V

    move v2, v4

    goto :goto_4

    .line 432
    :cond_f
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/ims/volte2/IImsCallSession;

    invoke-virtual {v3, v6}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->addP2pSession(Lcom/sec/ims/volte2/IImsCallSession;)V

    goto :goto_4

    .line 435
    :cond_10
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/ims/volte2/IImsCallSession;

    invoke-virtual {v3, v6}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->addP2pSession(Lcom/sec/ims/volte2/IImsCallSession;)V

    goto :goto_4

    .line 438
    :cond_11
    sget-object v0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSubSessionList size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->getP2pSessionSize()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    invoke-virtual {v1}, Lcom/sec/internal/google/ImsCallSessionImpl;->initP2pImpl()V

    .line 441
    iget-object p0, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mGoogleImsAdaptor:Lcom/sec/internal/google/GoogleImsService;

    invoke-virtual {v1}, Lcom/sec/internal/google/ImsCallSessionImpl;->getCallIdInt()I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/google/GoogleImsService;->setCallSession(ILcom/sec/internal/google/ImsCallSessionImpl;)V

    .line 444
    invoke-virtual {v3, v2}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->startP2pSessions(Z)V

    :cond_12
    return-void
.end method

.method public getPendingCallSession(ILandroid/telephony/ims/ImsCallProfile;Lcom/sec/ims/volte2/IImsCallSession;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 464
    sget-object v0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getPendingCallSession()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

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

    if-eqz p1, :cond_4

    .line 466
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 467
    invoke-interface {p3}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v8

    .line 468
    invoke-interface {p3}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v9

    .line 470
    invoke-static {v8}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcPrimaryType(I)Z

    move-result v10

    if-eqz v10, :cond_0

    goto :goto_0

    .line 472
    :cond_0
    invoke-static {v8}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcSecondaryType(I)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x2

    goto :goto_0

    :cond_1
    move v7, v8

    .line 475
    :goto_0
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

    .line 477
    invoke-virtual {p1, v3, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 478
    invoke-virtual {p1, v2, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 479
    invoke-static {v7}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcPrimaryType(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 480
    invoke-direct {p0, p3}, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->getCmcPhoneId(Lcom/sec/ims/volte2/IImsCallSession;)I

    move-result p0

    const-string p3, "com.samsung.telephony.extra.CMC_PHONE_ID"

    invoke-virtual {p1, p3, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 481
    :cond_2
    invoke-static {v7}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcSecondaryType(I)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 482
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->isSupportDualSimCMC()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 483
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "put CMC_EXTERNAL_CALL_SLOT: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcEdCallSlot()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    invoke-interface {p3}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcEdCallSlot()I

    move-result p0

    const-string p3, "com.samsung.telephony.extra.CMC_EXTERNAL_CALL_SLOT"

    invoke-virtual {p1, p3, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 487
    :cond_3
    :goto_1
    iget-object p0, p2, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    invoke-virtual {p0, v1, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_2

    .line 489
    :cond_4
    iget-object p1, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-virtual {p1}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->isEnabledWifiDirectFeature()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 490
    iget-object p0, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-virtual {p0}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->getP2pDeviceType()Lcom/sec/internal/google/cmc/CmcP2pController$DeviceType;

    move-result-object p0

    sget-object p1, Lcom/sec/internal/google/cmc/CmcP2pController$DeviceType;->PDevice:Lcom/sec/internal/google/cmc/CmcP2pController$DeviceType;

    if-ne p0, p1, :cond_5

    .line 491
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 493
    invoke-interface {p3}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result p1

    .line 494
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

    .line 496
    invoke-virtual {p0, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 497
    invoke-virtual {p0, v2, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 501
    iget-object p1, p2, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v1, p0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public postProcessForCmcIncomingCall(ILandroid/content/Intent;Lcom/sec/internal/google/ServiceProfile;Lcom/sec/ims/volte2/IImsCallSession;)V
    .locals 6

    .line 522
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getCmcServiceHelper()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/ICmcServiceHelper;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/ICmcServiceHelper;->isCmcRegExist(I)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_5

    .line 523
    invoke-interface {p4}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p1

    .line 524
    invoke-interface {p4}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v1

    .line 525
    invoke-interface {p4}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v2

    .line 527
    invoke-static {v1}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcPrimaryType(I)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v0

    goto :goto_0

    .line 529
    :cond_0
    invoke-static {v1}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcSecondaryType(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x2

    .line 532
    :cond_1
    :goto_0
    sget-object v3, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "postProcessForCmcIncomingCall(), SEM_EXTRA_CMC_TYPE: ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p4}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "com.samsung.telephony.extra.CMC_TYPE"

    .line 534
    invoke-virtual {p2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "com.samsung.telephony.extra.CMC_SESSION_ID"

    .line 535
    invoke-virtual {p2, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-ne v1, v0, :cond_4

    const-string v1, "com.samsung.telephony.extra.CMC_DIAL_TO"

    .line 538
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 539
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getReplaceSipCallId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.samsung.telephony.extra.CMC_REPLACE_CALL_ID"

    .line 540
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getReplaceSipCallId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.telephony.extra.CMC_DEVICE_ID_BY_SD"

    .line 542
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcDeviceId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 543
    :cond_2
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.samsung.telephony.extra.CMC_DEVICE_ID"

    .line 544
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcDeviceId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    :goto_1
    const-string p1, "com.samsung.telephony.extra.CMC_PHONE_ID"

    .line 546
    invoke-direct {p0, p4}, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->getCmcPhoneId(Lcom/sec/ims/volte2/IImsCallSession;)I

    move-result v1

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2

    .line 548
    :cond_4
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->isSupportDualSimCMC()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 549
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postProcessForCmcIncomingCall(), cmcEdCallSlot:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcEdCallSlot()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.samsung.telephony.extra.CMC_EXTERNAL_CALL_SLOT"

    .line 550
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcEdCallSlot()I

    move-result p1

    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 555
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-virtual {p1}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->isEnabledWifiDirectFeature()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 556
    invoke-interface {p4}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    .line 557
    invoke-virtual {p1}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->getP2pDeviceType()Lcom/sec/internal/google/cmc/CmcP2pController$DeviceType;

    move-result-object p1

    sget-object p2, Lcom/sec/internal/google/cmc/CmcP2pController$DeviceType;->None:Lcom/sec/internal/google/cmc/CmcP2pController$DeviceType;

    if-ne p1, p2, :cond_6

    const/4 p1, 0x7

    .line 558
    invoke-direct {p0, p3, p1}, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->getCmcRegHandle(Lcom/sec/internal/google/ServiceProfile;I)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_6

    .line 559
    sget-object p1, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->LOG_TAG:Ljava/lang/String;

    const-string p2, "onIncomingCall: need wifi-direct connection, startCmcP2pConnection!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    iget-object p1, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-virtual {p1}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->setP2pPD()V

    .line 565
    iget-object p0, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-virtual {p0, v0}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->setCmcActivation(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 570
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_6
    :goto_3
    return-void
.end method

.method public prepareCallSession(ILandroid/telephony/ims/ImsCallProfile;Lcom/sec/ims/volte2/data/CallProfile;Lcom/sec/internal/google/ServiceProfile;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const/4 v0, -0x1

    .line 128
    iput v0, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mCmcRegHandle:I

    const/4 v1, 0x1

    .line 129
    iput-boolean v1, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mCmcReady:Z

    .line 130
    iget-object v2, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mp2pSecSessionMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 134
    :try_start_0
    invoke-virtual {p4}, Lcom/sec/internal/google/ServiceProfile;->getPhoneId()I

    move-result v2

    invoke-direct {p0, v2, p2, p3}, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->setBoundSessionInfo(ILandroid/telephony/ims/ImsCallProfile;Lcom/sec/ims/volte2/data/CallProfile;)Z

    move-result v2

    .line 135
    sget-object v3, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prepareCallSession(), isCmcRegExist: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    if-eqz v2, :cond_9

    if-ne p1, v1, :cond_4

    .line 139
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getCmcLineSlotIndex()I

    move-result p2

    .line 140
    invoke-virtual {p4}, Lcom/sec/internal/google/ServiceProfile;->getPhoneId()I

    move-result v1

    .line 141
    invoke-direct {p0, p4, p1}, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->getCmcRegHandle(Lcom/sec/internal/google/ServiceProfile;I)I

    move-result v2

    iput v2, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mCmcRegHandle:I

    if-ne v2, v0, :cond_0

    const-string v2, "CMC PD is not registered."

    .line 143
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iput-boolean v4, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mCmcReady:Z

    goto :goto_0

    :cond_0
    if-eq p2, v1, :cond_1

    .line 145
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->isSupportDualSimCMC()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "phoneId and cmcLineSlotIndex are not matched"

    .line 147
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iput-boolean v4, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mCmcReady:Z

    goto :goto_0

    :cond_1
    const-string v2, "prepareCallSession, create session on CMC-PD"

    .line 150
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cmcLineSlotIndex: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", phoneId: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p2, v1, :cond_a

    const/4 p2, 0x5

    .line 157
    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-virtual {v1}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->isEnabledWifiDirectFeature()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p2, 0x7

    :cond_2
    const/4 v1, 0x3

    :goto_1
    if-gt v1, p2, :cond_a

    .line 161
    invoke-direct {p0, p4, v1}, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->getCmcRegHandle(Lcom/sec/internal/google/ServiceProfile;I)I

    move-result v2

    if-eq v2, v0, :cond_3

    .line 162
    invoke-virtual {p3, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setCmcType(I)V

    .line 163
    iget-object v3, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mp2pSecSessionMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {v5, p3, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->createSession(Lcom/sec/ims/volte2/data/CallProfile;I)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_4
    const-string v1, "CallPull"

    .line 168
    invoke-virtual {p2, v1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraBoolean(Ljava/lang/String;)Z

    move-result p2

    const/4 v1, 0x2

    if-eqz p2, :cond_5

    :goto_2
    move p1, v1

    goto :goto_3

    .line 170
    :cond_5
    iget-object p2, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/internal/helper/os/ITelephonyManager;->isVoiceCapable()Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_2

    .line 173
    :cond_6
    :goto_3
    invoke-direct {p0, p4, v1}, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->getCmcRegHandle(Lcom/sec/internal/google/ServiceProfile;I)I

    move-result p2

    iput p2, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mCmcRegHandle:I

    if-eq p2, v0, :cond_7

    const-string p2, "create session on CMC SD"

    .line 174
    invoke-static {v3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 176
    :cond_7
    iput-boolean v4, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mCmcReady:Z

    :goto_4
    const/4 p2, 0x4

    .line 180
    invoke-direct {p0, p4, p2}, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->getCmcRegHandle(Lcom/sec/internal/google/ServiceProfile;I)I

    move-result v1

    if-eq v1, v0, :cond_8

    const-string p4, "create session on WIFI-AP SD"

    .line 181
    invoke-static {v3, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-virtual {p3, p2}, Lcom/sec/ims/volte2/data/CallProfile;->setCmcType(I)V

    .line 183
    iget-object p2, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mp2pSecSessionMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    iget-object p0, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {p0, p3, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->createSession(Lcom/sec/ims/volte2/data/CallProfile;I)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object p0

    invoke-interface {p2, p4, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 185
    :cond_8
    iget-object p2, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-virtual {p2}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->isEnabledWifiDirectFeature()Z

    move-result p2

    if-eqz p2, :cond_a

    const/16 p2, 0x8

    .line 186
    invoke-direct {p0, p4, p2}, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->getCmcRegHandle(Lcom/sec/internal/google/ServiceProfile;I)I

    move-result p4

    if-eq p4, v0, :cond_a

    const-string v0, "create session on WIFI-DIRECT SD"

    .line 187
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-virtual {p3, p2}, Lcom/sec/ims/volte2/data/CallProfile;->setCmcType(I)V

    .line 189
    iget-object p2, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mp2pSecSessionMap:Ljava/util/Map;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {p0, p3, p4}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->createSession(Lcom/sec/ims/volte2/data/CallProfile;I)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object p0

    invoke-interface {p2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 195
    :cond_9
    iput-boolean v4, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mCmcReady:Z

    .line 197
    :cond_a
    :goto_5
    invoke-virtual {p3, p1}, Lcom/sec/ims/volte2/data/CallProfile;->setCmcType(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return p1
.end method

.method public sendPublishDialog(ILcom/android/internal/telephony/PublishDialog;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 509
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-virtual {v0}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->isEnabledWifiDirectFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    .line 513
    :goto_0
    sget-object v1, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendPublishDialog() callCnt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/internal/telephony/PublishDialog;->getCallCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :goto_1
    if-gt v1, v0, :cond_1

    .line 515
    iget-object v2, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getCmcServiceHelper()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/ICmcServiceHelper;

    move-result-object v2

    invoke-interface {v2, p1, p2, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/ICmcServiceHelper;->sendPublishDialog(ILcom/android/internal/telephony/PublishDialog;I)V

    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_1
    return-void
.end method

.method public setServiceProfile(Lcom/sec/internal/google/ServiceProfile;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mServiceProfile:Lcom/sec/internal/google/ServiceProfile;

    return-void
.end method
