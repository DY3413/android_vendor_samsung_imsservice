.class final enum Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType$4;
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

    .line 74
    invoke-direct {p0, p1, p2, v0}, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;-><init>(Ljava/lang/String;ILcom/sec/internal/helper/os/CellIdentityWrapper$CellType-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/sec/internal/helper/os/CellIdentityWrapper$CellType$4-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType$4;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method isMatchedWith(I)Z
    .registers 2

    .line 0
    const/16 p0, 0x11

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

    .line 77
    instance-of p0, p1, Landroid/telephony/CellIdentityTdscdma;

    if-eqz p0, :cond_b

    .line 78
    check-cast p1, Landroid/telephony/CellIdentityTdscdma;

    invoke-virtual {p1}, Landroid/telephony/CellIdentityTdscdma;->getLac()I

    move-result p0

    goto :goto_e

    :cond_b
    const p0, 0x7fffffff

    :goto_e
    return p0
.end method

.method retrieveCellId(Landroid/telephony/CellIdentity;)J
    .registers 2

    .line 83
    instance-of p0, p1, Landroid/telephony/CellIdentityTdscdma;

    if-eqz p0, :cond_c

    .line 84
    check-cast p1, Landroid/telephony/CellIdentityTdscdma;

    invoke-virtual {p1}, Landroid/telephony/CellIdentityTdscdma;->getCid()I

    move-result p0

    int-to-long p0, p0

    goto :goto_f

    :cond_c
    const-wide/32 p0, 0x7fffffff

    :goto_f
    return-wide p0
.end method