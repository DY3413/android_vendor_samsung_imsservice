.class public Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;
.super Lcom/sec/internal/google/ImsCallSessionImpl;
.source "CmcImsCallSessionImpl.java"


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mP2pCSM:Lcom/sec/internal/google/cmc/CmcCallSessionManager;


# direct methods
.method public constructor <init>(Landroid/telephony/ims/ImsCallProfile;Lcom/sec/internal/google/cmc/CmcCallSessionManager;Landroid/telephony/ims/aidl/IImsCallSessionListener;Lcom/sec/internal/google/GoogleImsService;)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, v0, p3, p4}, Lcom/sec/internal/google/ImsCallSessionImpl;-><init>(Landroid/telephony/ims/ImsCallProfile;Lcom/sec/ims/volte2/IImsCallSession;Landroid/telephony/ims/aidl/IImsCallSessionListener;Lcom/sec/internal/google/GoogleImsService;)V

    const-string p1, "CmcImsCallSessionImpl"

    .line 41
    iput-object p1, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->LOG_TAG:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    .line 51
    invoke-virtual {p2}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->getMainSession()Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p2, "mainSession is null"

    .line 52
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iput-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mImsVideoCallProvider:Lcom/sec/internal/google/ImsVideoCallProviderImpl;

    const-string p1, "1"

    .line 54
    iput-object p1, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallId:Ljava/lang/String;

    const/4 p1, 0x1

    .line 55
    iput p1, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallIdInt:I

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->initP2pImpl()V

    :goto_0
    return-void
.end method


# virtual methods
.method public accept(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-virtual {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->getMainSession()Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 196
    invoke-super {p0, p1, p2}, Lcom/sec/internal/google/ImsCallSessionImpl;->accept(ILandroid/telephony/ims/ImsStreamMediaProfile;)V

    return-void
.end method

.method public cancelTransferCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 364
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-virtual {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->getMainSession()Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 365
    invoke-super {p0}, Lcom/sec/internal/google/ImsCallSessionImpl;->cancelTransferCall()V

    return-void
.end method

.method public consultativeTransfer(Lcom/android/ims/internal/IImsCallSession;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 358
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-virtual {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->getMainSession()Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 359
    invoke-super {p0, p1}, Lcom/sec/internal/google/ImsCallSessionImpl;->consultativeTransfer(Lcom/android/ims/internal/IImsCallSession;)V

    return-void
.end method

.method public getCmcCallSessionManager()Lcom/sec/internal/google/cmc/CmcCallSessionManager;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    return-object p0
.end method

.method public getInternalState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-virtual {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->getMainSession()Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 96
    invoke-super {p0}, Lcom/sec/internal/google/ImsCallSessionImpl;->getInternalState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object p0

    return-object p0
.end method

.method public getPrevInternalState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-virtual {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->getMainSession()Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 101
    invoke-super {p0}, Lcom/sec/internal/google/ImsCallSessionImpl;->getPrevInternalState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object p0

    return-object p0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-virtual {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->getMainSession()Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 91
    invoke-super {p0, p1}, Lcom/sec/internal/google/ImsCallSessionImpl;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hold(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-virtual {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->getMainSession()Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 226
    invoke-super {p0, p1}, Lcom/sec/internal/google/ImsCallSessionImpl;->hold(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    return-void
.end method

.method public initP2pImpl()V
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mImsVideoCallProvider:Lcom/sec/internal/google/ImsVideoCallProviderImpl;

    const-string v1, "CmcImsCallSessionImpl"

    if-eqz v0, :cond_0

    const-string p0, "initP2pImpl(), already impl is initialized, just return"

    .line 63
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    const-string v0, "initP2pImpl()"

    .line 67
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-virtual {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->getMainSession()Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 71
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    iget-object v1, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mVolteEventListener:Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    invoke-virtual {v0, v1}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->registerSessionEventListener(Lcom/sec/ims/volte2/IImsCallSessionEventListener;)V

    .line 72
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-virtual {v1}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->getPhoneId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mRttEventListener:Lcom/sec/ims/IRttEventListener;

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->registerRttEventListener(ILcom/sec/ims/IRttEventListener;)V

    .line 73
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-virtual {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->getCallId()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallIdInt:I

    if-lez v0, :cond_1

    .line 76
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallId:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 79
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 81
    :cond_1
    :goto_0
    new-instance v0, Lcom/sec/internal/google/ImsVideoCallProviderImpl;

    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-virtual {v1}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->getMainSession()Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/internal/google/ImsVideoCallProviderImpl;-><init>(Lcom/sec/ims/volte2/IImsCallSession;)V

    iput-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mImsVideoCallProvider:Lcom/sec/internal/google/ImsVideoCallProviderImpl;

    return-void
.end method

.method public isInCall()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-virtual {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->getMainSession()Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 107
    invoke-super {p0}, Lcom/sec/internal/google/ImsCallSessionImpl;->isInCall()Z

    move-result p0

    return p0
.end method

.method public isMultiparty()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-virtual {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->getMainSession()Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 262
    invoke-super {p0}, Lcom/sec/internal/google/ImsCallSessionImpl;->isMultiparty()Z

    move-result p0

    return p0
.end method

.method public reject(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-virtual {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->getMainSession()Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 202
    invoke-super {p0, p1}, Lcom/sec/internal/google/ImsCallSessionImpl;->reject(I)V

    return-void
.end method

.method public resume(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 231
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-virtual {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->getMainSession()Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 232
    invoke-super {p0, p1}, Lcom/sec/internal/google/ImsCallSessionImpl;->resume(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    return-void
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-virtual {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->getMainSession()Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 238
    invoke-super {p0, p1, p2}, Lcom/sec/internal/google/ImsCallSessionImpl;->sendDtmf(CLandroid/os/Message;)V

    return-void
.end method

.method public sendImsCallEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 370
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-virtual {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->getMainSession()Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 371
    invoke-super {p0, p1, p2}, Lcom/sec/internal/google/ImsCallSessionImpl;->sendImsCallEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendRttMessage(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 334
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-virtual {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->getMainSession()Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 335
    invoke-super {p0, p1}, Lcom/sec/internal/google/ImsCallSessionImpl;->sendRttMessage(Ljava/lang/String;)V

    return-void
.end method

.method public sendRttModifyRequest(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 340
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-virtual {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->getMainSession()Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 341
    invoke-super {p0, p1}, Lcom/sec/internal/google/ImsCallSessionImpl;->sendRttModifyRequest(Landroid/telephony/ims/ImsCallProfile;)V

    return-void
.end method

.method public sendRttModifyResponse(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 346
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-virtual {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->getMainSession()Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 347
    invoke-super {p0, p1}, Lcom/sec/internal/google/ImsCallSessionImpl;->sendRttModifyResponse(Z)V

    return-void
.end method

.method public sendUssd(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 255
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-virtual {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->getMainSession()Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 256
    invoke-super {p0, p1}, Lcom/sec/internal/google/ImsCallSessionImpl;->sendUssd(Ljava/lang/String;)V

    return-void
.end method

.method public start(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 113
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz p0, :cond_0

    .line 114
    new-instance p1, Landroid/telephony/ims/ImsReasonInfo;

    const/16 p2, 0x66

    invoke-direct {p1, p2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {p0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiatingFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    .line 119
    iput v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mState:I

    .line 120
    iput-object p2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 p2, 0x3

    .line 121
    invoke-virtual {p0, p2}, Lcom/sec/internal/google/ImsCallSessionImpl;->setCallProfile(I)V

    .line 123
    iget-object p2, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-virtual {p2}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p2

    .line 124
    iget-object v2, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-virtual {v2}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->getPhoneId()I

    move-result v2

    .line 125
    invoke-virtual {p2, p1}, Lcom/sec/ims/volte2/data/CallProfile;->setDialingNumber(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Lcom/sec/internal/google/ImsCallSessionImpl;->isEmergencyCall()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 128
    iget-object v3, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v4, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-virtual {v4}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/volte2/data/CallProfile;->getRadioTech()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "CallRadioTech"

    invoke-virtual {v3, v5, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :cond_2
    iget-object v3, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    iget-object v4, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v4, v4, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v4}, Landroid/telephony/ims/ImsStreamMediaProfile;->isRttCall()Z

    move-result v4

    invoke-interface {v3, v2, v4}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->setAutomaticMode(IZ)V

    .line 132
    invoke-virtual {p2}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v3, v3, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v3}, Landroid/telephony/ims/ImsStreamMediaProfile;->getRttMode()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/ims/volte2/data/MediaProfile;->setRttMode(I)V

    .line 134
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v3, "CallPull"

    invoke-virtual {v2, v3}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 135
    iget-object p1, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object p1, p1, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    const-string v2, "android.telephony.ims.extra.OEM_EXTRAS"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 136
    iget-object v2, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    iget-object v3, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v3}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getLastDialogEvent(I)Lcom/sec/ims/DialogEvent;

    move-result-object v2

    const/16 v3, 0x65

    if-eqz v2, :cond_6

    if-eqz p1, :cond_6

    const-string v4, "android.telephony.ImsExternalCallTracker.extra.EXTERNAL_CALL_ID"

    .line 140
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 142
    invoke-virtual {v2}, Lcom/sec/ims/DialogEvent;->getDialogList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :catch_0
    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/ims/Dialog;

    if-nez v5, :cond_4

    goto :goto_0

    .line 148
    :cond_4
    iget-object v6, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v6}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v6

    invoke-static {v6}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v6

    .line 149
    sget-object v7, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v6, v7, :cond_5

    .line 150
    invoke-virtual {v5}, Lcom/sec/ims/Dialog;->getSipCallId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/internal/helper/ImsCallUtil;->getIdForString(Ljava/lang/String;)I

    move-result v6

    goto :goto_1

    .line 153
    :cond_5
    :try_start_0
    invoke-virtual {v5}, Lcom/sec/ims/Dialog;->getDialogId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-ne p1, v6, :cond_3

    .line 160
    invoke-virtual {v5}, Lcom/sec/ims/Dialog;->getSipCallId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 161
    invoke-virtual {v5}, Lcom/sec/ims/Dialog;->getSipLocalTag()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 162
    invoke-virtual {v5}, Lcom/sec/ims/Dialog;->getSipRemoteTag()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 163
    iget-object p1, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v5}, Lcom/sec/ims/Dialog;->getCallType()I

    move-result v3

    invoke-static {v3}, Lcom/sec/internal/google/DataTypeConvertor;->convertToGoogleCallType(I)I

    move-result v3

    iput v3, p1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 164
    invoke-virtual {v5}, Lcom/sec/ims/Dialog;->getCallType()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    .line 165
    invoke-virtual {p2, v0}, Lcom/sec/ims/volte2/data/CallProfile;->setPullCall(Z)V

    .line 167
    :try_start_1
    iget-object p1, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-virtual {v2}, Lcom/sec/ims/DialogEvent;->getMsisdn()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, v5}, Lcom/sec/ims/volte2/IImsCallSession;->pulling(Ljava/lang/String;Lcom/sec/ims/Dialog;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    const/16 v3, 0x3f7

    .line 177
    :cond_6
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz p0, :cond_9

    .line 178
    new-instance p1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {p1, v3, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {p0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiatingFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_2

    .line 182
    :cond_7
    :try_start_2
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->start(Ljava/lang/String;Lcom/sec/ims/volte2/data/CallProfile;)I

    move-result p1

    if-ltz p1, :cond_8

    goto :goto_2

    .line 183
    :cond_8
    new-instance p1, Landroid/os/RemoteException;

    const-string/jumbo p2, "start return -1"

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 186
    :catch_2
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz p0, :cond_9

    .line 187
    new-instance p1, Landroid/telephony/ims/ImsReasonInfo;

    const/16 p2, 0x67

    invoke-direct {p1, p2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {p0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiatingFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    :cond_9
    :goto_2
    return-void
.end method

.method public startDtmf(C)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-virtual {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->getMainSession()Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 244
    invoke-super {p0, p1}, Lcom/sec/internal/google/ImsCallSessionImpl;->startDtmf(C)V

    return-void
.end method

.method public stopDtmf()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-virtual {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->getMainSession()Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 250
    invoke-super {p0}, Lcom/sec/internal/google/ImsCallSessionImpl;->stopDtmf()V

    return-void
.end method

.method public terminate(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 208
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-virtual {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 209
    iget-object p1, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-virtual {p1}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->getMainSession()Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object p1

    const/4 v0, 0x3

    const-string v1, "1"

    invoke-interface {p1, v0, v1}, Lcom/sec/ims/volte2/IImsCallSession;->info(ILjava/lang/String;)V

    goto :goto_0

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {p1}, Lcom/sec/internal/google/DataTypeConvertor;->convertCallEndReasonFromFW(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->terminate(I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 213
    iget-object p1, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    new-instance v0, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v1, 0x1f5

    const/16 v2, 0xc8

    invoke-direct {v0, v1, v2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {p1, v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 217
    :catch_0
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz p0, :cond_1

    .line 218
    new-instance p1, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v0, 0x67

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {p0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public transfer(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 352
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-virtual {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->getMainSession()Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 353
    invoke-super {p0, p1, p2}, Lcom/sec/internal/google/ImsCallSessionImpl;->transfer(Ljava/lang/String;Z)V

    return-void
.end method

.method public updateCallProfile()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 328
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-virtual {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->getMainSession()Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 329
    invoke-super {p0}, Lcom/sec/internal/google/ImsCallSessionImpl;->updateCallProfile()V

    return-void
.end method

.method public updateCmcCallExtras(Lcom/sec/ims/volte2/data/CallProfile;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 268
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    const-string v1, "android.telephony.ims.extra.OEM_EXTRAS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "com.samsung.telephony.extra.CMC_CS_DTMF_KEY"

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 271
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 272
    iget-object v3, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v3, v3, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 276
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 279
    :cond_2
    iget-object v3, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-virtual {v3}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->getMainSession()Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v3

    .line 280
    iget-object v4, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-virtual {v4}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->getSessionId()I

    move-result v4

    .line 282
    invoke-static {v3}, Lcom/sec/internal/helper/ImsCallUtil;->isP2pPrimaryType(I)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    move v3, v6

    goto :goto_1

    .line 284
    :cond_3
    invoke-static {v3}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcSecondaryType(I)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v3, 0x2

    .line 287
    :cond_4
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateCmcCallExtras(), SEM_EXTRA_CMC_TYPE: ("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-virtual {v7}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->getMainSession()Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v7

    invoke-interface {v7}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " -> "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "CmcImsCallSessionImpl"

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "com.samsung.telephony.extra.CMC_TYPE"

    .line 290
    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "com.samsung.telephony.extra.CMC_SESSION_ID"

    .line 291
    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-ne v3, v6, :cond_8

    .line 293
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.samsung.telephony.extra.CMC_DIAL_TO"

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcDtmfKey()I

    move-result v5

    const/4 v6, -0x1

    if-le v5, v6, :cond_9

    const/16 v6, 0xc

    if-ge v5, v6, :cond_9

    const/4 v6, 0x0

    if-ltz v5, :cond_5

    const/16 v7, 0x9

    if-gt v5, v7, :cond_5

    add-int/lit8 v5, v5, 0x30

    int-to-char v6, v5

    goto :goto_2

    :cond_5
    const/16 v7, 0xa

    if-ne v5, v7, :cond_6

    const/16 v6, 0x2a

    goto :goto_2

    :cond_6
    const/16 v7, 0xb

    if-ne v5, v7, :cond_7

    const/16 v6, 0x23

    .line 304
    :cond_7
    :goto_2
    invoke-static {v6}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 306
    :cond_8
    invoke-static {v3}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcSecondaryType(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 307
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcCallTime()Ljava/lang/String;

    move-result-object v2

    const-string v5, "com.samsung.telephony.extra.CMC_PD_CALL_CONNECT_TIME"

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->isSupportDualSimCMC()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 309
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcEdCallSlot()I

    move-result v2

    const-string v5, "com.samsung.telephony.extra.CMC_EXTERNAL_CALL_SLOT"

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 313
    :cond_9
    :goto_3
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcDeviceId()Ljava/lang/String;

    move-result-object v2

    .line 314
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getReplaceSipCallId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const v6, 0x7000000a

    const-string v7, ","

    if-nez v5, :cond_a

    const-string v5, "com.samsung.telephony.extra.CMC_DEVICE_ID_BY_SD"

    .line 316
    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcCallTime()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",CMC_DEVICE_ID_BY_SD"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    goto :goto_4

    :cond_a
    if-eqz v2, :cond_b

    const-string v5, "com.samsung.telephony.extra.CMC_DEVICE_ID"

    .line 319
    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcCallTime()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",CMC_DEVICE_ID"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 324
    :cond_b
    :goto_4
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object p0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
