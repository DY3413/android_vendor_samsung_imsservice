.class public Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ParticipantUser;
.super Ljava/lang/Object;
.source "CallStateEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParticipantUser"
.end annotation


# instance fields
.field private final mParticipantId:I

.field private final mParticipantStatus:I

.field private final mSessionId:I

.field private final mUri:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIILjava/lang/String;)V
    .registers 5

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ParticipantUser;->mParticipantId:I

    .line 51
    iput p2, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ParticipantUser;->mSessionId:I

    .line 52
    iput p3, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ParticipantUser;->mParticipantStatus:I

    .line 53
    iput-object p4, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ParticipantUser;->mUri:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getParticipantId()I
    .registers 1

    .line 57
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ParticipantUser;->mParticipantId:I

    return p0
.end method

.method public getParticipantStatus()I
    .registers 1

    .line 61
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ParticipantUser;->mParticipantStatus:I

    return p0
.end method

.method public getSessionId()I
    .registers 1

    .line 65
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ParticipantUser;->mSessionId:I

    return p0
.end method

.method public getUri()Ljava/lang/String;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ParticipantUser;->mUri:Ljava/lang/String;

    return-object p0
.end method
