.class public Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;
.super Ljava/lang/Object;
.source "CmcCallSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CmcCallSessionManager"


# instance fields
.field private mCC:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

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
.method static bridge synthetic -$$Nest$fgetmImpleEventListener(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->mImpleEventListener:Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMainSession(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->mMainSession:Lcom/sec/ims/volte2/IImsCallSession;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmReplacedSessionId(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->mReplacedSessionId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSubSessionList(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Ljava/util/Map;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->mSubSessionList:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsReplacedSession(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->mIsReplacedSession:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMainSession(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;Lcom/sec/ims/volte2/IImsCallSession;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->mMainSession:Lcom/sec/ims/volte2/IImsCallSession;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmReplacedSessionId(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->mReplacedSessionId:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/ims/volte2/IImsCallSession;Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;)V
    .registers 6

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->mSubSessionList:Ljava/util/Map;

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->mReplacedSessionId:I

    const-string v1, ""

    .line 27
    iput-object v1, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->mTargetNumber:Ljava/lang/String;

    const/4 v1, 0x0

    .line 28
    iput-object v1, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->mReservedCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    .line 29
    iput-boolean v0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->mIsReplacedSession:Z

    const-string v0, "CmcCallSessionManager"

    const-string v1, "add mainSession"

    .line 36
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iput-object p1, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->mMainSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 38
    iput-object p2, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->mCC:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

    .line 39
    iput-object p3, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    return-void
.end method


# virtual methods
.method public addP2pSession(Lcom/sec/ims/volte2/IImsCallSession;)V
    .registers 5

    const-string v0, "CmcCallSessionManager"

    if-nez p1, :cond_b

    :try_start_4
    const-string/jumbo p0, "session is null. do not add"

    .line 59
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 62
    :cond_b
    invoke-interface {p1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v1

    .line 63
    iget-object v2, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->mSubSessionList:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    const-string p0, "already contains session with this callId! Return"

    .line 64
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 68
    :cond_21
    iget-object v1, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->mSubSessionList:Ljava/util/Map;

    invoke-interface {p1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v1, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->mImpleEventListener:Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    if-eqz v1, :cond_53

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "register VolteEventListener for [SUB] session: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    new-instance v1, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;-><init>(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;Lcom/sec/ims/volte2/IImsCallSession;)V

    .line 72
    invoke-interface {p1, v1}, Lcom/sec/ims/volte2/IImsCallSession;->registerSessionEventListener(Lcom/sec/ims/volte2/IImsCallSessionEventListener;)V

    .line 74
    :cond_53
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSubSessionList size: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->getP2pSessionSize()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_6b} :catch_6c

    goto :goto_85

    :catch_6c
    move-exception p0

    .line 76
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

    :goto_85
    return-void
.end method

.method public getCallId()I
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 114
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->mMainSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 117
    :cond_6
    invoke-interface {p0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result p0

    return p0
.end method

.method public getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->mMainSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-nez v0, :cond_1f

    .line 144
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->mReservedCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    const-string v1, "CmcCallSessionManager"

    if-eqz v0, :cond_13

    const-string/jumbo v0, "return reserved callProfile"

    .line 145
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->mReservedCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    return-object p0

    :cond_13
    const-string/jumbo p0, "return dummy callProfile"

    .line 148
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    new-instance p0, Lcom/sec/ims/volte2/data/CallProfile;

    invoke-direct {p0}, Lcom/sec/ims/volte2/data/CallProfile;-><init>()V

    return-object p0

    .line 151
    :cond_1f
    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p0

    return-object p0
.end method

.method public getMainSession()Lcom/sec/ims/volte2/IImsCallSession;
    .registers 1

    .line 121
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->mMainSession:Lcom/sec/ims/volte2/IImsCallSession;

    return-object p0
.end method

.method public getP2pSessionSize()I
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->mSubSessionList:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    return p0
.end method

.method public getPhoneId()I
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 107
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->mMainSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 110
    :cond_6
    invoke-interface {p0}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result p0

    return p0
.end method

.method public getSessionId()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current sessionId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->mMainSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mReplacedSessionId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->mReplacedSessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CmcCallSessionManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget v0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->mReplacedSessionId:I

    if-eqz v0, :cond_2b

    return v0

    .line 139
    :cond_2b
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->mMainSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p0}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result p0

    return p0
.end method

.method public isExistP2pConnection()Z
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->mCC:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

    invoke-interface {p0}, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;->isExistP2pConnection()Z

    move-result p0

    return p0
.end method

.method public isReplacedSession()Z
    .registers 3

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsReplacedSession: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->mIsReplacedSession:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CmcCallSessionManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-boolean p0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->mIsReplacedSession:Z

    return p0
.end method

.method public registerSessionEventListener(Lcom/sec/ims/volte2/IImsCallSessionEventListener;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 93
    iput-object p1, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->mImpleEventListener:Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    .line 95
    new-instance p1, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;

    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->mMainSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-direct {p1, p0, v0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;-><init>(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;Lcom/sec/ims/volte2/IImsCallSession;)V

    .line 96
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->mMainSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/sec/ims/volte2/IImsCallSession;->registerSessionEventListener(Lcom/sec/ims/volte2/IImsCallSessionEventListener;)V

    .line 97
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "register VolteEventListener for [MAIN] session: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->mMainSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CmcCallSessionManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object p1, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->mSubSessionList:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_35
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_69

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 99
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/volte2/IImsCallSession;

    .line 100
    new-instance v2, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;

    invoke-direct {v2, p0, v1}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;-><init>(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;Lcom/sec/ims/volte2/IImsCallSession;)V

    .line 101
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "register VolteEventListener for [SUB] session: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-interface {v1, v2}, Lcom/sec/ims/volte2/IImsCallSession;->registerSessionEventListener(Lcom/sec/ims/volte2/IImsCallSessionEventListener;)V

    goto :goto_35

    :cond_69
    return-void
.end method

.method public setMainSession(Lcom/sec/ims/volte2/IImsCallSession;)V
    .registers 2

    .line 125
    iput-object p1, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->mMainSession:Lcom/sec/ims/volte2/IImsCallSession;

    return-void
.end method

.method public setReservedCallProfile(Lcom/sec/ims/volte2/data/CallProfile;)V
    .registers 2

    .line 130
    iput-object p1, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->mReservedCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    return-void
.end method

.method public start(Ljava/lang/String;Lcom/sec/ims/volte2/data/CallProfile;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->mMainSession:Lcom/sec/ims/volte2/IImsCallSession;

    const-string v1, "CmcCallSessionManager"

    if-nez v0, :cond_1e

    .line 156
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "need to create p2p sessions: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iput-object p1, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->mTargetNumber:Ljava/lang/String;

    const/4 p0, 0x0

    return p0

    .line 161
    :cond_1e
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->mSubSessionList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 162
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

    .line 163
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2, p1, p2}, Lcom/sec/ims/volte2/IImsCallSession;->start(Ljava/lang/String;Lcom/sec/ims/volte2/data/CallProfile;)I

    goto :goto_28

    .line 165
    :cond_5d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start(), mainSession cmcType: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->mMainSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->mMainSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p0, p1, p2}, Lcom/sec/ims/volte2/IImsCallSession;->start(Ljava/lang/String;Lcom/sec/ims/volte2/data/CallProfile;)I

    move-result p0

    return p0
.end method

.method public startP2pSessions(Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_c

    .line 83
    invoke-virtual {p0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->getMainSession()Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object p1

    iget-object v1, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->mTargetNumber:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Lcom/sec/ims/volte2/IImsCallSession;->start(Ljava/lang/String;Lcom/sec/ims/volte2/data/CallProfile;)I

    .line 87
    :cond_c
    iget-object p1, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->mSubSessionList:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 88
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/volte2/IImsCallSession;

    iget-object v2, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->mTargetNumber:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/sec/ims/volte2/IImsCallSession;->start(Ljava/lang/String;Lcom/sec/ims/volte2/data/CallProfile;)I

    goto :goto_16

    :cond_2e
    return-void
.end method

.method public terminate(I)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->mMainSession:Lcom/sec/ims/volte2/IImsCallSession;

    const-string v1, "CmcCallSessionManager"

    if-nez v0, :cond_d

    const-string p0, "not yet start call session. update call state as terminated."

    .line 171
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 176
    :cond_d
    :try_start_d
    invoke-interface {v0, p1}, Lcom/sec/ims/volte2/IImsCallSession;->terminate(I)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_10} :catch_11

    goto :goto_16

    :catch_11
    const-string v0, "exception session is maybe a cmcSession, need to terminate subSession"

    .line 178
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :goto_16
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->mSubSessionList:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_20
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 182
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/volte2/IImsCallSession;

    .line 183
    invoke-interface {v0, p1}, Lcom/sec/ims/volte2/IImsCallSession;->terminate(I)V

    goto :goto_20

    :cond_36
    const/4 p0, 0x1

    return p0
.end method
