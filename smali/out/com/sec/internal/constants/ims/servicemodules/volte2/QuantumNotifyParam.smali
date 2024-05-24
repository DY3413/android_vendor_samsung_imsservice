.class public Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam;
.super Ljava/lang/Object;
.source "QuantumNotifyParam.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam$Builder;
    }
.end annotation


# instance fields
.field mComment:Ljava/lang/String;

.field mKey:[B

.field mQtSessionId:Ljava/lang/String;

.field mRequestMark:Ljava/lang/String;

.field mStatus:I

.field mToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam$Builder;)V
    .registers 3

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iget v0, p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam$Builder;->mStatus:I

    iput v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam;->mStatus:I

    .line 68
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam$Builder;->mComment:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam;->mComment:Ljava/lang/String;

    .line 69
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam$Builder;->mRequestMark:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam;->mRequestMark:Ljava/lang/String;

    .line 70
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam$Builder;->mToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam;->mToken:Ljava/lang/String;

    .line 71
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam$Builder;->mQtSessionId:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam;->mQtSessionId:Ljava/lang/String;

    .line 72
    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam$Builder;->mKey:[B

    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam;->mKey:[B

    return-void
.end method


# virtual methods
.method public getComment()Ljava/lang/String;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam;->mComment:Ljava/lang/String;

    return-object p0
.end method

.method public getKey()[B
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam;->mKey:[B

    return-object p0
.end method

.method public getQtSessionId()Ljava/lang/String;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam;->mQtSessionId:Ljava/lang/String;

    return-object p0
.end method

.method public getRequestMark()Ljava/lang/String;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam;->mRequestMark:Ljava/lang/String;

    return-object p0
.end method

.method public getStatus()I
    .registers 1

    .line 19
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam;->mStatus:I

    return p0
.end method

.method public getToken()Ljava/lang/String;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam;->mToken:Ljava/lang/String;

    return-object p0
.end method

.method public setComment(Ljava/lang/String;)V
    .registers 2

    .line 31
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam;->mComment:Ljava/lang/String;

    return-void
.end method

.method public setKey([B)V
    .registers 2

    .line 63
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam;->mKey:[B

    return-void
.end method

.method public setQtSessionId(Ljava/lang/String;)V
    .registers 2

    .line 55
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam;->mQtSessionId:Ljava/lang/String;

    return-void
.end method

.method public setRequestMark(Ljava/lang/String;)V
    .registers 2

    .line 39
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam;->mRequestMark:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .registers 2

    .line 23
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam;->mStatus:I

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .registers 2

    .line 47
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam;->mToken:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QuantumNotifyParam{mStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mComment=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam;->mComment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mRequestMark=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam;->mRequestMark:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mToken=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam;->mToken:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mQtSessionId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam;->mQtSessionId:Ljava/lang/String;

    .line 82
    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam;->mKey:[B

    .line 83
    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
