.class public Lcom/sec/internal/google/cmc/CmcCallSessionManager;
.super Ljava/lang/Object;
.source "CmcCallSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;
    }
.end annotation


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mCC:Lcom/sec/internal/google/cmc/CmcConnectivityController;

.field private mImpleEventListener:Lcom/sec/ims/volte2/IImsCallSessionEventListener;

.field private mIsReplacedSession:Z

.field private mMainSession:Lcom/sec/ims/volte2/IImsCallSession;

.field private mReplacedSessionId:I

.field private mReservedCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

.field private mSubSessionList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/ims/volte2/IImsCallSession;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetNumber:Ljava/lang/String;

.field private mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCC(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/internal/google/cmc/CmcConnectivityController;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mCC:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmImpleEventListener(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mImpleEventListener:Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMainSession(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mMainSession:Lcom/sec/ims/volte2/IImsCallSession;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmReplacedSessionId(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)I
    .locals 0

    iget p0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mReplacedSessionId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSubSessionList(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mSubSessionList:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVolteServiceModule(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsReplacedSession(Lcom/sec/internal/google/cmc/CmcCallSessionManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mIsReplacedSession:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMainSession(Lcom/sec/internal/google/cmc/CmcCallSessionManager;Lcom/sec/ims/volte2/IImsCallSession;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mMainSession:Lcom/sec/ims/volte2/IImsCallSession;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmReplacedSessionId(Lcom/sec/internal/google/cmc/CmcCallSessionManager;I)V
    .locals 0

    iput p1, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mReplacedSessionId:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/ims/volte2/IImsCallSession;Lcom/sec/internal/google/cmc/CmcConnectivityController;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;)V
    .locals 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "CmcCallSessionManager"

    .line 23
    iput-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->LOG_TAG:Ljava/lang/String;

    .line 25
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mSubSessionList:Ljava/util/Map;

    const/4 v1, 0x0

    .line 29
    iput v1, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mReplacedSessionId:I

    const-string v2, ""

    .line 30
    iput-object v2, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mTargetNumber:Ljava/lang/String;

    const/4 v2, 0x0

    .line 31
    iput-object v2, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mReservedCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    .line 32
    iput-boolean v1, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mIsReplacedSession:Z

    const-string v1, "add mainSession"

    .line 39
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iput-object p1, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mMainSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 41
    iput-object p2, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mCC:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    .line 42
    iput-object p3, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    return-void
.end method


# virtual methods
.method public addP2pSession(Lcom/sec/ims/volte2/IImsCallSession;)V
    .locals 3

    const-string v0, "CmcCallSessionManager"

    if-nez p1, :cond_0

    :try_start_0
    const-string p0, "session is null. do not add"

    .line 62
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 65
    :cond_0
    invoke-interface {p1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v1

    .line 66
    iget-object v2, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mSubSessionList:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "already contains session with this callId! Return"

    .line 67
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 71
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mSubSessionList:Ljava/util/Map;

    invoke-interface {p1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mImpleEventListener:Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    if-eqz v1, :cond_2

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "register VolteEventListener for [SUB] session: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    new-instance v1, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;-><init>(Lcom/sec/internal/google/cmc/CmcCallSessionManager;Lcom/sec/ims/volte2/IImsCallSession;)V

    .line 75
    invoke-interface {p1, v1}, Lcom/sec/ims/volte2/IImsCallSession;->registerSessionEventListener(Lcom/sec/ims/volte2/IImsCallSessionEventListener;)V

    .line 77
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSubSessionList size: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->getP2pSessionSize()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 79
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCallId failed due to "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getCallId()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 117
    iget-object p0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mMainSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 120
    :cond_0
    invoke-interface {p0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result p0

    return p0
.end method

.method public getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mMainSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-nez v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mReservedCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    const-string v1, "CmcCallSessionManager"

    if-eqz v0, :cond_0

    const-string v0, "return reserved callProfile"

    .line 148
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object p0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mReservedCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    return-object p0

    :cond_0
    const-string p0, "return dummy callProfile"

    .line 151
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    new-instance p0, Lcom/sec/ims/volte2/data/CallProfile;

    invoke-direct {p0}, Lcom/sec/ims/volte2/data/CallProfile;-><init>()V

    return-object p0

    .line 154
    :cond_1
    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p0

    return-object p0
.end method

.method public getMainSession()Lcom/sec/ims/volte2/IImsCallSession;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mMainSession:Lcom/sec/ims/volte2/IImsCallSession;

    return-object p0
.end method

.method public getP2pSessionSize()I
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mSubSessionList:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    return p0
.end method

.method public getPhoneId()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 110
    iget-object p0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mMainSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 113
    :cond_0
    invoke-interface {p0}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result p0

    return p0
.end method

.method public getSessionId()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current sessionId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mMainSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mReplacedSessionId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mReplacedSessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CmcCallSessionManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mReplacedSessionId:I

    if-eqz v0, :cond_0

    return v0

    .line 142
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mMainSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p0}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result p0

    return p0
.end method

.method public isExistP2pConnection()Z
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mCC:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-virtual {p0}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->isExistP2pConnection()Z

    move-result p0

    return p0
.end method

.method public isReplacedSession()Z
    .locals 2

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsReplacedSession: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mIsReplacedSession:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CmcCallSessionManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-boolean p0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mIsReplacedSession:Z

    return p0
.end method

.method public registerSessionEventListener(Lcom/sec/ims/volte2/IImsCallSessionEventListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 96
    iput-object p1, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mImpleEventListener:Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    .line 98
    new-instance p1, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;

    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mMainSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-direct {p1, p0, v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;-><init>(Lcom/sec/internal/google/cmc/CmcCallSessionManager;Lcom/sec/ims/volte2/IImsCallSession;)V

    .line 99
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mMainSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/sec/ims/volte2/IImsCallSession;->registerSessionEventListener(Lcom/sec/ims/volte2/IImsCallSessionEventListener;)V

    .line 100
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "register VolteEventListener for [MAIN] session: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mMainSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CmcCallSessionManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object p1, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mSubSessionList:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 102
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/volte2/IImsCallSession;

    .line 103
    new-instance v2, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;

    invoke-direct {v2, p0, v1}, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;-><init>(Lcom/sec/internal/google/cmc/CmcCallSessionManager;Lcom/sec/ims/volte2/IImsCallSession;)V

    .line 104
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "register VolteEventListener for [SUB] session: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-interface {v1, v2}, Lcom/sec/ims/volte2/IImsCallSession;->registerSessionEventListener(Lcom/sec/ims/volte2/IImsCallSessionEventListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setMainSession(Lcom/sec/ims/volte2/IImsCallSession;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mMainSession:Lcom/sec/ims/volte2/IImsCallSession;

    return-void
.end method

.method public setReservedCallProfile(Lcom/sec/ims/volte2/data/CallProfile;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mReservedCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    return-void
.end method

.method public start(Ljava/lang/String;Lcom/sec/ims/volte2/data/CallProfile;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mMainSession:Lcom/sec/ims/volte2/IImsCallSession;

    const-string v1, "CmcCallSessionManager"

    if-nez v0, :cond_0

    .line 159
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "need to create p2p sessions: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iput-object p1, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mTargetNumber:Ljava/lang/String;

    const/4 p0, 0x0

    return p0

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mSubSessionList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 165
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "start(), subSession cmcType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v4}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2, p1, p2}, Lcom/sec/ims/volte2/IImsCallSession;->start(Ljava/lang/String;Lcom/sec/ims/volte2/data/CallProfile;)I

    goto :goto_0

    .line 168
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start(), mainSession cmcType: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mMainSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object p0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mMainSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p0, p1, p2}, Lcom/sec/ims/volte2/IImsCallSession;->start(Ljava/lang/String;Lcom/sec/ims/volte2/data/CallProfile;)I

    move-result p0

    return p0
.end method

.method public startP2pSessions(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->getMainSession()Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object p1

    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mTargetNumber:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Lcom/sec/ims/volte2/IImsCallSession;->start(Ljava/lang/String;Lcom/sec/ims/volte2/data/CallProfile;)I

    .line 90
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mSubSessionList:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 91
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/volte2/IImsCallSession;

    iget-object v2, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mTargetNumber:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/sec/ims/volte2/IImsCallSession;->start(Ljava/lang/String;Lcom/sec/ims/volte2/data/CallProfile;)I

    goto :goto_0

    :cond_1
    return-void
.end method

.method public terminate(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mMainSession:Lcom/sec/ims/volte2/IImsCallSession;

    const-string v1, "CmcCallSessionManager"

    if-nez v0, :cond_0

    const-string p0, "not yet start call session. update call state as terminated."

    .line 174
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 179
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/sec/ims/volte2/IImsCallSession;->terminate(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "exception session is maybe a cmcSession, need to terminate subSession"

    .line 181
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mSubSessionList:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 185
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/volte2/IImsCallSession;

    .line 186
    invoke-interface {v0, p1}, Lcom/sec/ims/volte2/IImsCallSession;->terminate(I)V

    goto :goto_1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method
