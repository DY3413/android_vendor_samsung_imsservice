.class public Lcom/sec/internal/helper/os/CellIdentityWrapper;
.super Ljava/lang/Object;
.source "CellIdentityWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;
    }
.end annotation


# static fields
.field public static final DEFAULT:Lcom/sec/internal/helper/os/CellIdentityWrapper;


# instance fields
.field private final mAreaCode:I

.field private final mCellId:J

.field private final mCellType:Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    .line 162
    invoke-static {v0}, Lcom/sec/internal/helper/os/CellIdentityWrapper;->from(Landroid/telephony/CellIdentity;)Lcom/sec/internal/helper/os/CellIdentityWrapper;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/helper/os/CellIdentityWrapper;->DEFAULT:Lcom/sec/internal/helper/os/CellIdentityWrapper;

    return-void
.end method

.method private constructor <init>(Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;Landroid/telephony/CellIdentity;)V
    .registers 4

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    iput-object p1, p0, Lcom/sec/internal/helper/os/CellIdentityWrapper;->mCellType:Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;

    .line 189
    invoke-virtual {p1, p2}, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;->retrieveAreaCode(Landroid/telephony/CellIdentity;)I

    move-result v0

    iput v0, p0, Lcom/sec/internal/helper/os/CellIdentityWrapper;->mAreaCode:I

    .line 190
    invoke-virtual {p1, p2}, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;->retrieveCellId(Landroid/telephony/CellIdentity;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sec/internal/helper/os/CellIdentityWrapper;->mCellId:J

    return-void
.end method

.method public static from(Landroid/telephony/CellIdentity;)Lcom/sec/internal/helper/os/CellIdentityWrapper;
    .registers 3

    .line 165
    sget-object v0, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;->UNKNOWN:Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;

    .line 166
    instance-of v1, p0, Landroid/telephony/CellIdentityLte;

    if-eqz v1, :cond_9

    .line 167
    sget-object v0, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;->LTE:Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;

    goto :goto_2b

    .line 168
    :cond_9
    instance-of v1, p0, Landroid/telephony/CellIdentityNr;

    if-eqz v1, :cond_10

    .line 169
    sget-object v0, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;->NR:Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;

    goto :goto_2b

    .line 170
    :cond_10
    instance-of v1, p0, Landroid/telephony/CellIdentityGsm;

    if-eqz v1, :cond_17

    .line 171
    sget-object v0, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;->GSM:Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;

    goto :goto_2b

    .line 172
    :cond_17
    instance-of v1, p0, Landroid/telephony/CellIdentityWcdma;

    if-eqz v1, :cond_1e

    .line 173
    sget-object v0, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;->WCDMA:Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;

    goto :goto_2b

    .line 174
    :cond_1e
    instance-of v1, p0, Landroid/telephony/CellIdentityTdscdma;

    if-eqz v1, :cond_25

    .line 175
    sget-object v0, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;->TDSCDMA:Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;

    goto :goto_2b

    .line 176
    :cond_25
    instance-of v1, p0, Landroid/telephony/CellIdentityCdma;

    if-eqz v1, :cond_2b

    .line 177
    sget-object v0, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;->CDMA:Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;

    .line 180
    :cond_2b
    :goto_2b
    new-instance v1, Lcom/sec/internal/helper/os/CellIdentityWrapper;

    invoke-direct {v1, v0, p0}, Lcom/sec/internal/helper/os/CellIdentityWrapper;-><init>(Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;Landroid/telephony/CellIdentity;)V

    return-object v1
.end method


# virtual methods
.method public getAreaCode()I
    .registers 1

    .line 220
    iget p0, p0, Lcom/sec/internal/helper/os/CellIdentityWrapper;->mAreaCode:I

    return p0
.end method

.method public getCellId()J
    .registers 3

    .line 224
    iget-wide v0, p0, Lcom/sec/internal/helper/os/CellIdentityWrapper;->mCellId:J

    return-wide v0
.end method

.method public isCdma()Z
    .registers 2

    .line 245
    iget-object p0, p0, Lcom/sec/internal/helper/os/CellIdentityWrapper;->mCellType:Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;

    sget-object v0, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;->TDSCDMA:Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;

    if-eq p0, v0, :cond_d

    sget-object v0, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;->CDMA:Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;

    if-ne p0, v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method

.method public isMatched(I)Z
    .registers 2

    .line 241
    iget-object p0, p0, Lcom/sec/internal/helper/os/CellIdentityWrapper;->mCellType:Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;->isMatchedWith(I)Z

    move-result p0

    return p0
.end method

.method public isValid()Z
    .registers 2

    .line 228
    invoke-virtual {p0}, Lcom/sec/internal/helper/os/CellIdentityWrapper;->isValidAreaCode()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/sec/internal/helper/os/CellIdentityWrapper;->isValidCellId()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public isValidAreaCode()Z
    .registers 2

    .line 232
    iget p0, p0, Lcom/sec/internal/helper/os/CellIdentityWrapper;->mAreaCode:I

    const v0, 0x7fffffff

    if-eq p0, v0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public isValidCellId()Z
    .registers 7

    .line 236
    iget-object v0, p0, Lcom/sec/internal/helper/os/CellIdentityWrapper;->mCellType:Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;

    sget-object v1, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;->NR:Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_14

    .line 237
    iget-wide v0, p0, Lcom/sec/internal/helper/os/CellIdentityWrapper;->mCellId:J

    const-wide v4, 0x7fffffffffffffffL

    cmp-long p0, v0, v4

    if-eqz p0, :cond_1e

    goto :goto_1f

    :cond_14
    iget-wide v0, p0, Lcom/sec/internal/helper/os/CellIdentityWrapper;->mCellId:J

    const-wide/32 v4, 0x7fffffff

    cmp-long p0, v0, v4

    if-eqz p0, :cond_1e

    goto :goto_1f

    :cond_1e
    move v2, v3

    :goto_1f
    return v2
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 196
    iget-object v0, p0, Lcom/sec/internal/helper/os/CellIdentityWrapper;->mCellType:Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;

    sget-object v1, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;->UNKNOWN:Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;

    if-ne v0, v1, :cond_9

    const-string p0, "Unknown CellIdentity"

    return-object p0

    .line 199
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CellIdentity<"

    .line 200
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/helper/os/CellIdentityWrapper;->mCellType:Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ">: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "AreaCode: "

    .line 201
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {p0}, Lcom/sec/internal/helper/os/CellIdentityWrapper;->isValidAreaCode()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 203
    iget v1, p0, Lcom/sec/internal/helper/os/CellIdentityWrapper;->mAreaCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3c

    :cond_36
    const-string/jumbo v1, "tac or lac unavailable"

    .line 205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3c
    const-string v1, " Cell ID: "

    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {p0}, Lcom/sec/internal/helper/os/CellIdentityWrapper;->isValidCellId()Z

    move-result v1

    if-eqz v1, :cond_55

    .line 210
    iget-wide v1, p0, Lcom/sec/internal/helper/os/CellIdentityWrapper;->mCellId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5a

    :cond_55
    const-string p0, "cid unavailable"

    .line 212
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    :goto_5a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
