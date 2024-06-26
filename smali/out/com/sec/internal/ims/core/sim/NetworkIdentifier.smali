.class Lcom/sec/internal/ims/core/sim/NetworkIdentifier;
.super Ljava/lang/Object;
.source "NetworkIdentifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/core/sim/NetworkIdentifier$Builder;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MnoMap_NetworkIdentifier"


# instance fields
.field private mGid1:Ljava/lang/String;

.field private mGid2:Ljava/lang/String;

.field private mMccMnc:Ljava/lang/String;

.field private mMnoName:Ljava/lang/String;

.field private mSpName:Ljava/lang/String;

.field private mSubset:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mMccMnc:Ljava/lang/String;

    .line 108
    iput-object p2, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mSubset:Ljava/lang/String;

    .line 109
    iput-object p3, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mGid1:Ljava/lang/String;

    .line 110
    iput-object p4, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mGid2:Ljava/lang/String;

    .line 111
    iput-object p5, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mSpName:Ljava/lang/String;

    const-string p1, "default"

    .line 112
    iput-object p1, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mMnoName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p1, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mMccMnc:Ljava/lang/String;

    .line 117
    iput-object p2, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mSubset:Ljava/lang/String;

    .line 118
    iput-object p3, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mGid1:Ljava/lang/String;

    .line 119
    iput-object p4, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mGid2:Ljava/lang/String;

    .line 120
    iput-object p5, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mSpName:Ljava/lang/String;

    .line 121
    iput-object p6, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mMnoName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public contains(Lcom/sec/internal/ims/core/sim/NetworkIdentifier;)Z
    .registers 4

    .line 203
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mMccMnc:Ljava/lang/String;

    iget-object v1, p1, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mMccMnc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mGid1:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mGid1:Ljava/lang/String;

    iget-object v1, p1, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mGid1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 204
    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "contains: L"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", R"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MnoMap_NetworkIdentifier"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_44
    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 170
    instance-of v0, p1, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;

    const/4 v1, 0x0

    if-eqz v0, :cond_44

    .line 171
    check-cast p1, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;

    .line 173
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mMccMnc:Ljava/lang/String;

    iget-object v2, p1, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mMccMnc:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mSubset:Ljava/lang/String;

    iget-object v2, p1, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mSubset:Ljava/lang/String;

    .line 174
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mGid1:Ljava/lang/String;

    iget-object v2, p1, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mGid1:Ljava/lang/String;

    .line 175
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mGid2:Ljava/lang/String;

    iget-object v2, p1, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mGid2:Ljava/lang/String;

    .line 176
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mSpName:Ljava/lang/String;

    iget-object v2, p1, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mSpName:Ljava/lang/String;

    .line 177
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mMnoName:Ljava/lang/String;

    iget-object p1, p1, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mMnoName:Ljava/lang/String;

    .line 178
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_44

    const/4 v1, 0x1

    :cond_44
    return v1
.end method

.method public equalsWithoutMnoName(Lcom/sec/internal/ims/core/sim/NetworkIdentifier;)Z
    .registers 4

    .line 189
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mMccMnc:Ljava/lang/String;

    iget-object v1, p1, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mMccMnc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mSubset:Ljava/lang/String;

    iget-object v1, p1, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mSubset:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mGid1:Ljava/lang/String;

    iget-object v1, p1, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mGid1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mGid2:Ljava/lang/String;

    iget-object v1, p1, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mGid2:Ljava/lang/String;

    .line 190
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mSpName:Ljava/lang/String;

    iget-object v1, p1, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mSpName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "equalsWithoutMnoName: L"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", R"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MnoMap_NetworkIdentifier"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_5a
    const/4 p0, 0x0

    return p0
.end method

.method public getGid1()Ljava/lang/String;
    .registers 1

    .line 141
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mGid1:Ljava/lang/String;

    return-object p0
.end method

.method public getGid2()Ljava/lang/String;
    .registers 1

    .line 149
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mGid2:Ljava/lang/String;

    return-object p0
.end method

.method public getMccMnc()Ljava/lang/String;
    .registers 1

    .line 125
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mMccMnc:Ljava/lang/String;

    return-object p0
.end method

.method public getMnoName()Ljava/lang/String;
    .registers 1

    .line 165
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mMnoName:Ljava/lang/String;

    return-object p0
.end method

.method public getSpName()Ljava/lang/String;
    .registers 1

    .line 157
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mSpName:Ljava/lang/String;

    return-object p0
.end method

.method public getSubset()Ljava/lang/String;
    .registers 1

    .line 133
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mSubset:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .registers 7

    .line 185
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mMccMnc:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mMnoName:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mGid1:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mGid2:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mSubset:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mSpName:Ljava/lang/String;

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public setGid1(Ljava/lang/String;)V
    .registers 2

    .line 145
    iput-object p1, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mGid1:Ljava/lang/String;

    return-void
.end method

.method public setGid2(Ljava/lang/String;)V
    .registers 2

    .line 153
    iput-object p1, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mGid2:Ljava/lang/String;

    return-void
.end method

.method public setMccMnc(Ljava/lang/String;)V
    .registers 2

    .line 129
    iput-object p1, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mMccMnc:Ljava/lang/String;

    return-void
.end method

.method public setMnoName(Ljava/lang/String;)V
    .registers 2

    .line 199
    iput-object p1, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mMnoName:Ljava/lang/String;

    return-void
.end method

.method public setSpName(Ljava/lang/String;)V
    .registers 2

    .line 161
    iput-object p1, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mSpName:Ljava/lang/String;

    return-void
.end method

.method public setSubset(Ljava/lang/String;)V
    .registers 2

    .line 137
    iput-object p1, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mSubset:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mMccMnc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mSubset:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mGid1:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mGid2:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mSpName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->mMnoName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
