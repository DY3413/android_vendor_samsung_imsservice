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
    .locals 3

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
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzflr;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzfmv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzfmv;-><init>()V

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/zzfls;->zza(Lcom/google/android/gms/internal/zzfls;[B)Lcom/google/android/gms/internal/zzfls;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/zzfmv;

    return-object p0
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/zzflj;)Lcom/google/android/gms/internal/zzfls;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->zzcxx()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/zzflm;->zza(Lcom/google/android/gms/internal/zzflj;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :sswitch_0
    const/16 v0, 0x6a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzflv;->zzb(Lcom/google/android/gms/internal/zzflj;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfmv;->zzqad:[Lcom/google/android/gms/internal/zzfmu;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    array-length v3, v1

    :goto_1
    add-int/2addr v0, v3

    new-array v4, v0, [Lcom/google/android/gms/internal/zzfmu;

    if-eqz v3, :cond_2

    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    :goto_2
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_3

    new-instance v1, Lcom/google/android/gms/internal/zzfmu;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzfmu;-><init>()V

    aput-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzflj;->zza(Lcom/google/android/gms/internal/zzfls;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->zzcxx()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/zzfmu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzfmu;-><init>()V

    aput-object v0, v4, v3

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzflj;->zza(Lcom/google/android/gms/internal/zzfls;)V

    iput-object v4, p0, Lcom/google/android/gms/internal/zzfmv;->zzqad:[Lcom/google/android/gms/internal/zzfmu;

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->zzcya()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzfmv;->zzqac:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfmv;->zzqab:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfmv;->zzqaa:Ljava/lang/String;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfmv;->zzpzz:Ljava/lang/String;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfmv;->zzpzy:Ljava/lang/String;

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfmv;->zzpzx:Ljava/lang/String;

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->zzcxz()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzfmv;->zzgoc:J

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->zzcxz()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzfmv;->zzpzw:J

    goto :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfmv;->zzpzv:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->zzcxz()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzfmv;->zzpzu:J

    goto/16 :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfmv;->zzpzt:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfmv;->zzpzs:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_d
    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_c
        0x12 -> :sswitch_b
        0x18 -> :sswitch_a
        0x22 -> :sswitch_9
        0x28 -> :sswitch_8
        0x30 -> :sswitch_7
        0x3a -> :sswitch_6
        0x42 -> :sswitch_5
        0x4a -> :sswitch_4
        0x52 -> :sswitch_3
        0x5a -> :sswitch_2
        0x60 -> :sswitch_1
        0x6a -> :sswitch_0
    .end sparse-switch
.end method
