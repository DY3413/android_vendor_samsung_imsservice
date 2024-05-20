.class Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;
.super Ljava/lang/Object;
.source "ImsCallSessionBuilder.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ImsCallSessionBuilder"


# instance fields
.field mIcsm:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

.field private mIsEmergency:Z

.field private mMno:Lcom/sec/internal/constants/Mno;

.field private mNeedToSetCallToPending:Z

.field private mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

.field private mPhoneId:I

.field private mProfile:Lcom/sec/ims/volte2/data/CallProfile;

.field private mRegInfo:Lcom/sec/ims/ImsRegistration;

.field private final mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

.field private mSessionFactory:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionFactory;

.field private mSubId:I

.field private mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

.field private mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/interfaces/ims/core/IPdnController;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Landroid/os/Looper;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->mIcsm:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    .line 54
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    .line 55
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 56
    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    .line 57
    new-instance p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionFactory;

    invoke-direct {p1, p2, p6}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionFactory;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->mSessionFactory:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionFactory;

    .line 58
    iput-object p5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    return-void
.end method

.method private checkCanMakeCallSession()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->mRegInfo:Lcom/sec/ims/ImsRegistration;

    if-eqz v0, :cond_2

    .line 94
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isVowifiEnabled(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpdgConnected(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->mProfile:Lcom/sec/ims/volte2/data/CallProfile;

    .line 95
    invoke-virtual {p0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->LOG_TAG:Ljava/lang/String;

    const-string v0, "cannot make new call session. currently in Registering"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    new-instance p0, Landroid/os/RemoteException;

    const-string v0, "Registering."

    invoke-direct {p0, v0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void

    .line 90
    :cond_2
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->LOG_TAG:Ljava/lang/String;

    const-string v0, "cannot make new call session. not registered"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    new-instance p0, Landroid/os/RemoteException;

    const-string v0, "Not registered."

    invoke-direct {p0, v0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private checkExistingCallSessions()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->mProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->isConferenceCall()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->mIcsm:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSessionMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 106
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 107
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 108
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->checkOngoingCallForForkedSession(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V

    .line 109
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->mRegInfo:Lcom/sec/ims/ImsRegistration;

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->mRegInfo:Lcom/sec/ims/ImsRegistration;

    .line 110
    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v2

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 111
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "skip different based regi"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_1

    .line 115
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HeldCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v2, v3, :cond_1

    .line 116
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/helper/ImsCallUtil;->isOngoingCallState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 117
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->handleCallSessionDuringCall(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private checkOngoingCallForForkedSession(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->mRegInfo:Lcom/sec/ims/ImsRegistration;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcPrimaryType(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 124
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->mRegInfo:Lcom/sec/ims/ImsRegistration;

    .line 125
    invoke-virtual {p0}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p0

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    if-eq p0, v0, :cond_1

    .line 126
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->isSupportDualSimCMC()Z

    move-result p0

    if-nez p0, :cond_1

    .line 127
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object p0

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->Idle:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 128
    :cond_0
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cannot make a forking session. ongoing call exists on the other sim. callId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sessionId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", callState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 128
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    new-instance p0, Landroid/os/RemoteException;

    invoke-direct {p0}, Landroid/os/RemoteException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method private getNetworkForCreateSession()I
    .locals 7

    .line 138
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->mIsEmergency:Z

    const/16 v1, 0xb

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 144
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->mPhoneId:I

    sget-object v4, Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;->EMERGENCY:Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;

    invoke-interface {v2, v3, v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getImsProfile(ILcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 146
    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getE911PdnSelectionVowifi()I

    move-result v0

    .line 148
    :cond_0
    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createSession: voiceNetwork = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    iget v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->mSubId:I

    invoke-interface {v4, v5}, Lcom/sec/internal/helper/os/ITelephonyManager;->getVoiceNetworkType(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "VoWIFI"

    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    .line 149
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    iget v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->mPhoneId:I

    .line 150
    invoke-interface {v5, v6}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpdgConnected(I)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->mProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v5}, Lcom/sec/ims/volte2/data/CallProfile;->getEmergencyRat()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string p0, "createSession: use IMS PDN for WiFi e911 for e911pdnpolicy(IMSPDN_IF_IPC_RAT_EPDG)."

    .line 151
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 153
    :cond_1
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v5}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    iget v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->mSubId:I

    invoke-interface {v5, v6}, Lcom/sec/internal/helper/os/ITelephonyManager;->getVoiceNetworkType(I)I

    move-result v5

    invoke-static {v5}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    iget v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->mSubId:I

    .line 154
    invoke-interface {v5, v6}, Lcom/sec/internal/helper/os/ITelephonyManager;->getVoiceNetworkType(I)I

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->mProfile:Lcom/sec/ims/volte2/data/CallProfile;

    .line 155
    invoke-virtual {v5}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_2

    const-string p0, "createSession: use IMS PDN for KOR 3g psvt e911."

    .line 156
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 158
    :cond_2
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v5}, Lcom/sec/internal/constants/Mno;->isAus()Z

    move-result v5

    if-eqz v5, :cond_3

    if-ne v0, v4, :cond_3

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->mProfile:Lcom/sec/ims/volte2/data/CallProfile;

    .line 159
    invoke-virtual {p0}, Lcom/sec/ims/volte2/data/CallProfile;->getEmergencyRat()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "createSession: AU use IMS PDN for WiFi e911."

    .line 160
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    const/16 p0, 0xf

    return p0

    .line 166
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->mRegInfo:Lcom/sec/ims/ImsRegistration;

    if-eqz v0, :cond_5

    .line 167
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getNetworkType()I

    move-result p0

    return p0

    .line 168
    :cond_5
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->mNeedToSetCallToPending:Z

    if-eqz p0, :cond_6

    return v1

    :cond_6
    const/4 p0, -0x1

    return p0
.end method

.method private handleCallSessionDuringCall(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 177
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->mIsEmergency:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_1

    .line 179
    :try_start_0
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->LOG_TAG:Ljava/lang/String;

    const-string v0, "release active call before E911 dialing"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object p0

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->IncomingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x2

    .line 181
    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->reject(I)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x5

    const/4 v0, 0x1

    .line 183
    invoke-virtual {p1, p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->terminate(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 186
    sget-object p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->LOG_TAG:Ljava/lang/String;

    const-string v0, "createSession: "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->isAllowUssdDuringCall(Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->mProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    .line 189
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Operator allow USSD during call"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 191
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->mRegInfo:Lcom/sec/ims/ImsRegistration;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result p0

    invoke-static {p0}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcPrimaryType(I)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 192
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->LOG_TAG:Ljava/lang/String;

    const-string p1, "allow CMC 2ndCall in PD"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    .line 194
    :cond_3
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cannot make new call session. another call already exist callId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sessionId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", callState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 194
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    new-instance p0, Landroid/os/RemoteException;

    invoke-direct {p0}, Landroid/os/RemoteException;-><init>()V

    throw p0
.end method

.method private isAllowUssdDuringCall(Lcom/sec/internal/constants/Mno;)Z
    .locals 4

    .line 270
    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isSwa()Z

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/sec/internal/constants/Mno;->MOBITEL_LK:Lcom/sec/internal/constants/Mno;

    if-eq p1, p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    move p0, v1

    .line 271
    :goto_0
    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isMea()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/sec/internal/constants/Mno;->MTN_IRAN:Lcom/sec/internal/constants/Mno;

    if-eq p1, v2, :cond_1

    sget-object v2, Lcom/sec/internal/constants/Mno;->OOREDOO_QATAR:Lcom/sec/internal/constants/Mno;

    if-eq p1, v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    .line 272
    :goto_1
    sget-object v3, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-eq p1, v3, :cond_3

    sget-object v3, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-eq p1, v3, :cond_3

    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isEur()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isSea()Z

    move-result v3

    if-nez v3, :cond_3

    if-nez p0, :cond_3

    if-nez v2, :cond_3

    .line 273
    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isOce()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isJpn()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :cond_3
    :goto_2
    return v0
.end method

.method private parseArguments()V
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->mProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getPhoneId()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->mPhoneId:I

    .line 205
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->mRegInfo:Lcom/sec/ims/ImsRegistration;

    if-nez v1, :cond_0

    .line 206
    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->mMno:Lcom/sec/internal/constants/Mno;

    goto :goto_0

    .line 208
    :cond_0
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->mMno:Lcom/sec/internal/constants/Mno;

    .line 211
    :goto_0
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->mSubId:I

    .line 212
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->mProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->mProfile:Lcom/sec/ims/volte2/data/CallProfile;

    .line 213
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->mIsEmergency:Z

    .line 214
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->mNeedToSetCallToPending:Z

    return-void
.end method

.method private processImpuAndCmc()V
    .locals 5

    .line 218
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v0}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getActiveImpu()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    .line 219
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->mProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getLineMsisdn()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 220
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createSession: originating from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->mProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-static {v0}, Lcom/sec/internal/helper/UriUtil;->getMsisdnNumber(Lcom/sec/ims/util/ImsUri;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/ims/volte2/data/CallProfile;->setLineMsisdn(Ljava/lang/String;)V

    .line 222
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->mProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v1, v0}, Lcom/sec/ims/volte2/data/CallProfile;->setOriginatingUri(Lcom/sec/ims/util/ImsUri;)V

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->mRegInfo:Lcom/sec/ims/ImsRegistration;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v0

    if-lez v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->mRegInfo:Lcom/sec/ims/ImsRegistration;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->mProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-interface {v0, v1, p0}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->updateCmcP2pList(Lcom/sec/ims/ImsRegistration;Lcom/sec/ims/volte2/data/CallProfile;)V

    :cond_1
    return-void
.end method

.method private processNeedToSetCallToPending(Landroid/content/Context;)V
    .locals 3

    .line 231
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->mPhoneId:I

    invoke-static {p1, v0}, Lcom/sec/internal/ims/util/ImsUtil;->isCdmalessEnabled(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->mRegInfo:Lcom/sec/ims/ImsRegistration;

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->mIsEmergency:Z

    if-nez p1, :cond_0

    .line 232
    sget-object p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->LOG_TAG:Ljava/lang/String;

    const-string v0, "createSession: Cdmaless needToPendingCall"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->mNeedToSetCallToPending:Z

    goto :goto_0

    .line 234
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->mProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->isForceCSFB()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->mProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcType()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->mRegInfo:Lcom/sec/ims/ImsRegistration;

    if-eqz p1, :cond_1

    .line 235
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result p1

    if-eq p1, v0, :cond_2

    .line 237
    :cond_1
    sget-object p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->LOG_TAG:Ljava/lang/String;

    const-string v0, "set needToPendingCall to true when SD or VoLTE is not registered"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->mNeedToSetCallToPending:Z

    const/4 p1, 0x0

    .line 239
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->mRegInfo:Lcom/sec/ims/ImsRegistration;

    :cond_2
    :goto_0
    return-void
.end method

.method private processNetworkType()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 244
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->mProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->getNetworkForCreateSession()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setNetworkType(I)V

    .line 246
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->mRegInfo:Lcom/sec/ims/ImsRegistration;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->mIsEmergency:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->mProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getNetworkType()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 247
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Need to pending E911 call over VoWifi using IMS PDN."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 248
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->mNeedToSetCallToPending:Z

    .line 251
    :cond_0
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->mNeedToSetCallToPending:Z

    if-nez v0, :cond_3

    .line 252
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->mIsEmergency:Z

    if-nez v0, :cond_1

    .line 253
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->checkCanMakeCallSession()V

    .line 256
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->mProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getNetworkType()I

    move-result v0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_3

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->mRegInfo:Lcom/sec/ims/ImsRegistration;

    if-eqz p0, :cond_2

    goto :goto_0

    .line 257
    :cond_2
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->LOG_TAG:Ljava/lang/String;

    const-string v0, "cannot make new call session. not registered"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    new-instance p0, Landroid/os/RemoteException;

    const-string v0, "Not registered."

    invoke-direct {p0, v0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    return-void
.end method

.method private setPendingOutgoingCall(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V
    .locals 2

    .line 264
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "try to regi for pending outgoing call session"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 265
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setPendingCall(Z)V

    .line 266
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->mIcsm:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->setPendingOutgoingCall(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V

    return-void
.end method


# virtual methods
.method public createSession(Landroid/content/Context;Lcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/ImsRegistration;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p2, :cond_2

    .line 67
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->mProfile:Lcom/sec/ims/volte2/data/CallProfile;

    .line 68
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->mRegInfo:Lcom/sec/ims/ImsRegistration;

    .line 69
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->parseArguments()V

    .line 70
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->processNeedToSetCallToPending(Landroid/content/Context;)V

    .line 71
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->processNetworkType()V

    .line 72
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->checkExistingCallSessions()V

    .line 73
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->processImpuAndCmc()V

    .line 75
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->mSessionFactory:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionFactory;

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->mProfile:Lcom/sec/ims/volte2/data/CallProfile;

    iget-object p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->mRegInfo:Lcom/sec/ims/ImsRegistration;

    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->mNeedToSetCallToPending:Z

    invoke-virtual {p1, p2, p3, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionFactory;->create(Lcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/ImsRegistration;Z)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 81
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->mRegInfo:Lcom/sec/ims/ImsRegistration;

    if-nez p2, :cond_0

    iget-boolean p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->mNeedToSetCallToPending:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->mProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {p2}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcType()I

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->mProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {p2}, Lcom/sec/ims/volte2/data/CallProfile;->isForceCSFB()Z

    move-result p2

    if-nez p2, :cond_0

    .line 82
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->setPendingOutgoingCall(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V

    .line 84
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->mIcsm:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->addCallSession(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V

    return-object p1

    .line 77
    :cond_1
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->LOG_TAG:Ljava/lang/String;

    const-string p1, "createSession: session create fail"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    new-instance p0, Landroid/os/RemoteException;

    invoke-direct {p0}, Landroid/os/RemoteException;-><init>()V

    throw p0

    .line 63
    :cond_2
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionBuilder;->LOG_TAG:Ljava/lang/String;

    const-string p1, "profile is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Null CallProfile."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
