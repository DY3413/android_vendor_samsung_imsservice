.class public abstract Lcom/google/android/gms/internal/zzflm;
.super Lcom/google/android/gms/internal/zzfls;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/google/android/gms/internal/zzflm<",
        "TM;>;>",
        "Lcom/google/android/gms/internal/zzfls;"
    }
.end annotation


# instance fields
.field protected zzpvl:Lcom/google/android/gms/internal/zzflo;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzfls;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzflm;->zzdck()Lcom/google/android/gms/internal/zzflm;

    move-result-object p0

    return-object p0
.end method

.method protected final zza(Lcom/google/android/gms/internal/zzflj;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->getPosition()I

    move-result v0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzflj;->zzlg(I)Z

    move-result v1

    if-nez v1, :cond_c

    const/4 p0, 0x0

    return p0

    :cond_c
    ushr-int/lit8 v1, p2, 0x3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->getPosition()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzflj;->zzao(II)[B

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/zzflu;

    invoke-direct {v0, p2, p1}, Lcom/google/android/gms/internal/zzflu;-><init>(I[B)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzflm;->zzpvl:Lcom/google/android/gms/internal/zzflo;

    if-nez p1, :cond_29

    new-instance p1, Lcom/google/android/gms/internal/zzflo;

    invoke-direct {p1}, Lcom/google/android/gms/internal/zzflo;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzflm;->zzpvl:Lcom/google/android/gms/internal/zzflo;

    const/4 p1, 0x0

    goto :goto_2d

    :cond_29
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzflo;->zzmz(I)Lcom/google/android/gms/internal/zzflp;

    move-result-object p1

    :goto_2d
    if-nez p1, :cond_39

    new-instance p1, Lcom/google/android/gms/internal/zzflp;

    invoke-direct {p1}, Lcom/google/android/gms/internal/zzflp;-><init>()V

    iget-object p0, p0, Lcom/google/android/gms/internal/zzflm;->zzpvl:Lcom/google/android/gms/internal/zzflo;

    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/internal/zzflo;->zza(ILcom/google/android/gms/internal/zzflp;)V

    :cond_39
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzflp;->zza(Lcom/google/android/gms/internal/zzflu;)V

    const/4 p0, 0x1

    return p0
.end method

.method public zzdck()Lcom/google/android/gms/internal/zzflm;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 0
    invoke-super {p0}, Lcom/google/android/gms/internal/zzfls;->zzdcl()Lcom/google/android/gms/internal/zzfls;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzflm;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/zzflq;->zza(Lcom/google/android/gms/internal/zzflm;Lcom/google/android/gms/internal/zzflm;)V

    return-object v0
.end method

.method public synthetic zzdcl()Lcom/google/android/gms/internal/zzfls;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzfls;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/zzflm;

    return-object p0
.end method
