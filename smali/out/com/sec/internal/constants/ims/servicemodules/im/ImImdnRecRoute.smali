.class public Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;
.super Ljava/lang/Object;
.source "ImImdnRecRoute.java"


# instance fields
.field private mId:I

.field private final mImdnMsgId:Ljava/lang/String;

.field private mMessageId:I

.field private final mUri:Ljava/lang/String;

.field private final mUserAlias:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;->mId:I

    .line 25
    iput p2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;->mMessageId:I

    .line 26
    iput-object p3, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;->mImdnMsgId:Ljava/lang/String;

    .line 27
    iput-object p5, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;->mUserAlias:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;->mUri:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;->mImdnMsgId:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;->mUserAlias:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;->mUri:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 89
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    return v1

    .line 92
    :cond_13
    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;

    .line 93
    iget-object v2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;->mImdnMsgId:Ljava/lang/String;

    if-nez v2, :cond_1e

    .line 94
    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;->mImdnMsgId:Ljava/lang/String;

    if-eqz v2, :cond_27

    return v1

    .line 97
    :cond_1e
    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;->mImdnMsgId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    return v1

    .line 100
    :cond_27
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;->mUri:Ljava/lang/String;

    if-nez p0, :cond_32

    .line 101
    iget-object p0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;->mUri:Ljava/lang/String;

    if-nez p0, :cond_30

    goto :goto_31

    :cond_30
    move v0, v1

    :goto_31
    return v0

    .line 103
    :cond_32
    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;->mUri:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getImdnMsgId()Ljava/lang/String;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;->mImdnMsgId:Ljava/lang/String;

    return-object p0
.end method

.method public getMessageId()I
    .registers 1

    .line 42
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;->mMessageId:I

    return p0
.end method

.method public getRecordRouteDispName()Ljava/lang/String;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;->mUserAlias:Ljava/lang/String;

    return-object p0
.end method

.method public getRecordRouteUri()Ljava/lang/String;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;->mUri:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .registers 5

    .line 75
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;->mImdnMsgId:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/2addr v0, v2

    .line 76
    iget-object v3, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;->mUri:Ljava/lang/String;

    if-nez v3, :cond_15

    move v3, v1

    goto :goto_19

    :cond_15
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_19
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 77
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;->mUserAlias:Ljava/lang/String;

    if-nez p0, :cond_20

    goto :goto_24

    :cond_20
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_24
    add-int/2addr v0, v1

    return v0
.end method

.method public setId(I)V
    .registers 2

    .line 38
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;->mId:I

    return-void
.end method

.method public setMessageId(I)V
    .registers 2

    .line 46
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;->mMessageId:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImImdnRecRoute [mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMessageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;->mMessageId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mImdnMsgId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;->mImdnMsgId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;->mUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mUserAlias="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;->mUserAlias:Ljava/lang/String;

    .line 67
    invoke-static {p0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
