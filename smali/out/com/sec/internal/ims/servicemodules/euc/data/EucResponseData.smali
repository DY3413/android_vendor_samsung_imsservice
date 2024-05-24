.class public Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData;
.super Ljava/lang/Object;
.source "EucResponseData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;
    }
.end annotation


# instance fields
.field private final mCallback:Landroid/os/Message;

.field private final mId:Ljava/lang/String;

.field private final mOwnIdentity:Ljava/lang/String;

.field private final mPin:Ljava/lang/String;

.field private final mRemoteUri:Lcom/sec/ims/util/ImsUri;

.field private final mType:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

.field private final mValue:Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/data/EucType;Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;Landroid/os/Message;)V
    .registers 11

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->PERSISTENT:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    if-eq p2, v0, :cond_e

    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->VOLATILE:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    if-ne p2, v0, :cond_c

    goto :goto_e

    :cond_c
    const/4 v0, 0x0

    goto :goto_f

    :cond_e
    :goto_e
    const/4 v0, 0x1

    :goto_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EucType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not applicable for EucResponseData"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/helper/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 87
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData;->mId:Ljava/lang/String;

    .line 88
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData;->mType:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    .line 89
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData;->mPin:Ljava/lang/String;

    .line 90
    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    .line 91
    iput-object p5, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData;->mOwnIdentity:Ljava/lang/String;

    .line 92
    iput-object p6, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData;->mValue:Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;

    .line 93
    iput-object p7, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData;->mCallback:Landroid/os/Message;

    return-void
.end method


# virtual methods
.method public getCallback()Landroid/os/Message;
    .registers 1

    .line 142
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData;->mCallback:Landroid/os/Message;

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .registers 1

    .line 100
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData;->mId:Ljava/lang/String;

    return-object p0
.end method

.method public getOwnIdentity()Ljava/lang/String;
    .registers 1

    .line 128
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData;->mOwnIdentity:Ljava/lang/String;

    return-object p0
.end method

.method public getPin()Ljava/lang/String;
    .registers 1

    .line 114
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData;->mPin:Ljava/lang/String;

    return-object p0
.end method

.method public getRemoteUri()Lcom/sec/ims/util/ImsUri;
    .registers 1

    .line 121
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    return-object p0
.end method

.method public getType()Lcom/sec/internal/ims/servicemodules/euc/data/EucType;
    .registers 1

    .line 107
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData;->mType:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    return-object p0
.end method

.method public getValue()Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;
    .registers 1

    .line 135
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData;->mValue:Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData;->mType:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mPin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData;->mPin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mRemoteUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mOwnIdentity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData;->mOwnIdentity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData;->mValue:Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mCallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData;->mCallback:Landroid/os/Message;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
