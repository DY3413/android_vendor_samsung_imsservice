.class public final Lcom/google/android/gms/internal/zzfmv;
.super Lcom/google/android/gms/internal/zzflm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzflm<",
        "Lcom/google/android/gms/internal/zzfmv;",
        ">;"
    }
.end annotation


# instance fields
.field public zzgoc:J

.field public zzpzs:Ljava/lang/String;

.field public zzpzt:Ljava/lang/String;

.field public zzpzu:J

.field public zzpzv:Ljava/lang/String;

.field public zzpzw:J

.field public zzpzx:Ljava/lang/String;

.field public zzpzy:Ljava/lang/String;

.field public zzpzz:Ljava/lang/String;

.field public zzqaa:Ljava/lang/String;

.field public zzqab:Ljava/lang/String;

.field public zzqac:I

.field public zzqad:[Lcom/google/android/gms/internal/zzfmu;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzflm;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfmv;->zzpzs:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfmv;->zzpzt:Ljava/lang/String;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/android/gms/internal/zzfmv;->zzpzu:J

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfmv;->zzpzv:Ljava/lang/String;

    iput-wide v1, p0, Lcom/google/android/gms/internal/zzfmv;->zzpzw:J

    iput-wide v1, p0, Lcom/google/android/gms/internal/zzfmv;->zzgoc:J

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfmv;->zzpzx:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfmv;->zzpzy:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfmv;->zzpzz:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfmv;->zzqaa:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfmv;->zzqab:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzfmv;->zzqac:I

    invoke-static {}, Lcom/google/android/gms/internal/zzfmu;->zzddi()[Lcom/google/android/gms/internal/zzfmu;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfmv;->zzqad:[Lcom/google/android/gms/internal/zzfmu;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzflm;->zzpvl:Lcom/google/android/gms/internal/zzflo;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzfls;->zzpnr:I

    return-void
.end method

.method public static zzbi([B)Lcom/google/android/gms/internal/zzfmv;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzflr;
        }
    .end annotation

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/zzfmv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzfmv;-><init>()V

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/zzfls;->zza(Lcom/google/android/gms/internal/zzfls;[B)Lcom/google/android/gms/internal/zzfls;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/zzfmv;

    return-object p0
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/zzflj;)Lcom/google/android/gms/internal/zzfls;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->zzcxx()I

    move-result v0

    sparse-switch v0, :sswitch_data_9e

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/zzflm;->zza(Lcom/google/android/gms/internal/zzflj;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :sswitch_e
    const/16 v0, 0x6a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzflv;->zzb(Lcom/google/android/gms/internal/zzflj;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfmv;->zzqad:[Lcom/google/android/gms/internal/zzfmu;

    const/4 v2, 0x0

    if-nez v1, :cond_1b

    move v3, v2

    goto :goto_1c

    :cond_1b
    array-length v3, v1

    :goto_1c
    add-int/2addr v0, v3

    new-array v4, v0, [Lcom/google/android/gms/internal/zzfmu;

    if-eqz v3, :cond_24

    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_24
    :goto_24
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_38

    new-instance v1, Lcom/google/android/gms/internal/zzfmu;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzfmu;-><init>()V

    aput-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzflj;->zza(Lcom/google/android/gms/internal/zzfls;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->zzcxx()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    :cond_38
    new-instance v0, Lcom/google/android/gms/internal/zzfmu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzfmu;-><init>()V

    aput-object v0, v4, v3

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzflj;->zza(Lcom/google/android/gms/internal/zzfls;)V

    iput-object v4, p0, Lcom/google/android/gms/internal/zzfmv;->zzqad:[Lcom/google/android/gms/internal/zzfmu;

    goto :goto_0

    :sswitch_45
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->zzcya()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzfmv;->zzqac:I

    goto :goto_0

    :sswitch_4c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfmv;->zzqab:Ljava/lang/String;

    goto :goto_0

    :sswitch_53
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfmv;->zzqaa:Ljava/lang/String;

    goto :goto_0

    :sswitch_5a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfmv;->zzpzz:Ljava/lang/String;

    goto :goto_0

    :sswitch_61
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfmv;->zzpzy:Ljava/lang/String;

    goto :goto_0

    :sswitch_68
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfmv;->zzpzx:Ljava/lang/String;

    goto :goto_0

    :sswitch_6f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->zzcxz()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzfmv;->zzgoc:J

    goto :goto_0

    :sswitch_76
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->zzcxz()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzfmv;->zzpzw:J

    goto :goto_0

    :sswitch_7d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfmv;->zzpzv:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_85
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->zzcxz()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzfmv;->zzpzu:J

    goto/16 :goto_0

    :sswitch_8d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfmv;->zzpzt:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_95
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfmv;->zzpzs:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_9d
    return-object p0

    :sswitch_data_9e
    .sparse-switch
        0x0 -> :sswitch_9d
        0xa -> :sswitch_95
        0x12 -> :sswitch_8d
        0x18 -> :sswitch_85
        0x22 -> :sswitch_7d
        0x28 -> :sswitch_76
        0x30 -> :sswitch_6f
        0x3a -> :sswitch_68
        0x42 -> :sswitch_61
        0x4a -> :sswitch_5a
        0x52 -> :sswitch_53
        0x5a -> :sswitch_4c
        0x60 -> :sswitch_45
        0x6a -> :sswitch_e
    .end sparse-switch
.end method
