.class public Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;
.super Ljava/lang/Object;
.source "IncomingCallEvent.java"


# instance fields
.field private final mCallType:I

.field private final mIdcExtra:Ljava/lang/String;

.field private final mParams:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

.field private final mPeerAddr:Lcom/sec/ims/util/NameAddr;

.field private final mPreAlerting:Z

.field private final mRegistration:Lcom/sec/ims/ImsRegistration;

.field private mRemoteVideoCapa:Z

.field private final mSessionID:I


# direct methods
.method public constructor <init>(Lcom/sec/ims/ImsRegistration;IILcom/sec/ims/util/NameAddr;ZZLjava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;)V
    .registers 9

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 33
    iput p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->mSessionID:I

    .line 34
    iput p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->mCallType:I

    .line 35
    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->mPeerAddr:Lcom/sec/ims/util/NameAddr;

    .line 36
    iput-boolean p5, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->mPreAlerting:Z

    .line 37
    iput-boolean p6, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->mRemoteVideoCapa:Z

    .line 38
    iput-object p7, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->mIdcExtra:Ljava/lang/String;

    .line 39
    iput-object p8, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->mParams:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    return-void
.end method


# virtual methods
.method public getCallType()I
    .registers 1

    .line 55
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->mCallType:I

    return p0
.end method

.method public getIdcExtra()Ljava/lang/String;
    .registers 1

    .line 67
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->mIdcExtra:Ljava/lang/String;

    return-object p0
.end method

.method public getImsRegistration()Lcom/sec/ims/ImsRegistration;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->mRegistration:Lcom/sec/ims/ImsRegistration;

    return-object p0
.end method

.method public getParams()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;
    .registers 1

    .line 71
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->mParams:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    return-object p0
.end method

.method public getPeerAddr()Lcom/sec/ims/util/NameAddr;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->mPeerAddr:Lcom/sec/ims/util/NameAddr;

    return-object p0
.end method

.method public getPreAlerting()Z
    .registers 1

    .line 47
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->mPreAlerting:Z

    return p0
.end method

.method public getRemoteVideoCapa()Z
    .registers 1

    .line 63
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->mRemoteVideoCapa:Z

    return p0
.end method

.method public getSessionID()I
    .registers 1

    .line 51
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->mSessionID:I

    return p0
.end method
