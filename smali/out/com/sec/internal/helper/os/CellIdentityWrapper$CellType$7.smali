.class final enum Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType$7;
.super Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;
.source "CellIdentityWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    .line 136
    invoke-direct {p0, p1, p2, v0}, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;-><init>(Ljava/lang/String;ILcom/sec/internal/helper/os/CellIdentityWrapper$CellType-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/sec/internal/helper/os/CellIdentityWrapper$CellType$7-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType$7;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method isMatchedWith(I)Z
    .registers 2

    .line 0
    const/16 p0, 0x14

    if-ne p1, p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method retrieveAreaCode(Landroid/telephony/CellIdentity;)I
    .registers 2

    .line 139
    instance-of p0, p1, Landroid/telephony/CellIdentityNr;

    if-eqz p0, :cond_b

    .line 140
    check-cast p1, Landroid/telephony/CellIdentityNr;

    invoke-virtual {p1}, Landroid/telephony/CellIdentityNr;->getTac()I

    move-result p0

    goto :goto_e

    :cond_b
    const p0, 0x7fffffff

    :goto_e
    return p0
.end method

.method retrieveCellId(Landroid/telephony/CellIdentity;)J
    .registers 2

    .line 145
    instance-of p0, p1, Landroid/telephony/CellIdentityNr;

    if-eqz p0, :cond_b

    .line 146
    check-cast p1, Landroid/telephony/CellIdentityNr;

    invoke-virtual {p1}, Landroid/telephony/CellIdentityNr;->getNci()J

    move-result-wide p0

    goto :goto_10

    :cond_b
    const-wide p0, 0x7fffffffffffffffL

    :goto_10
    return-wide p0
.end method
