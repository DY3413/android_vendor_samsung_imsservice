.class public Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory$CallDetailInfo;
.super Ljava/lang/Object;
.source "ImsCallSipErrorFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CallDetailInfo"
.end annotation


# instance fields
.field hasConfCall:Ljava/lang/Boolean;

.field hasHoldCall:Ljava/lang/Boolean;

.field hasIncall:Ljava/lang/Boolean;

.field hasTtyCall:Ljava/lang/Boolean;

.field inCalltype:I

.field isModifyOngoing:Ljava/lang/Boolean;

.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;)V
    .registers 2

    .line 487
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory$CallDetailInfo;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 488
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory$CallDetailInfo;->isModifyOngoing:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory$CallDetailInfo;->hasTtyCall:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory$CallDetailInfo;->hasConfCall:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory$CallDetailInfo;->hasHoldCall:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory$CallDetailInfo;->hasIncall:Ljava/lang/Boolean;

    const/4 p1, 0x0

    .line 489
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory$CallDetailInfo;->inCalltype:I

    return-void
.end method


# virtual methods
.method public getHasConfCall()Ljava/lang/Boolean;
    .registers 1

    .line 509
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory$CallDetailInfo;->hasConfCall:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getHasHoldCall()Ljava/lang/Boolean;
    .registers 1

    .line 501
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory$CallDetailInfo;->hasHoldCall:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getHasIncall()Ljava/lang/Boolean;
    .registers 1

    .line 493
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory$CallDetailInfo;->hasIncall:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getHasTtyCall()Ljava/lang/Boolean;
    .registers 1

    .line 517
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory$CallDetailInfo;->hasTtyCall:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getInCalltype()I
    .registers 1

    .line 533
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory$CallDetailInfo;->inCalltype:I

    return p0
.end method

.method public getIsModifyOngoing()Ljava/lang/Boolean;
    .registers 1

    .line 525
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory$CallDetailInfo;->isModifyOngoing:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setHasConfCall(Ljava/lang/Boolean;)V
    .registers 2

    .line 513
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory$CallDetailInfo;->hasConfCall:Ljava/lang/Boolean;

    return-void
.end method

.method public setHasHoldCall(Ljava/lang/Boolean;)V
    .registers 2

    .line 505
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory$CallDetailInfo;->hasHoldCall:Ljava/lang/Boolean;

    return-void
.end method

.method public setHasIncall(Ljava/lang/Boolean;)V
    .registers 2

    .line 497
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory$CallDetailInfo;->hasIncall:Ljava/lang/Boolean;

    return-void
.end method

.method public setHasTtyCall(Ljava/lang/Boolean;)V
    .registers 2

    .line 521
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory$CallDetailInfo;->hasTtyCall:Ljava/lang/Boolean;

    return-void
.end method

.method public setInCalltype(I)V
    .registers 2

    .line 537
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory$CallDetailInfo;->inCalltype:I

    return-void
.end method

.method public setIsModifyOngoing(Ljava/lang/Boolean;)V
    .registers 2

    .line 529
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory$CallDetailInfo;->isModifyOngoing:Ljava/lang/Boolean;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CallDetailInfo [hasIncall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory$CallDetailInfo;->hasIncall:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hasHoldCall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory$CallDetailInfo;->hasHoldCall:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hasConfCall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory$CallDetailInfo;->hasConfCall:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hasTtyCall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory$CallDetailInfo;->hasTtyCall:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isModifyOngoing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory$CallDetailInfo;->isModifyOngoing:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", inCalltype="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory$CallDetailInfo;->inCalltype:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
