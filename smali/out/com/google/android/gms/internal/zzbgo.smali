.class public final Lcom/google/android/gms/internal/zzbgo;
.super Ljava/lang/Object;


# direct methods
.method public static zza(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V
    .registers 4

    .line 0
    if-nez p2, :cond_3

    return-void

    :cond_3
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzbgo;->zzag(Landroid/os/Parcel;I)I

    move-result p1

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzbgo;->zzah(Landroid/os/Parcel;I)V

    return-void
.end method

.method private static zzag(Landroid/os/Parcel;I)I
    .registers 3

    .line 0
    const/high16 v0, -0x10000

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result p0

    return p0
.end method

.method private static zzah(Landroid/os/Parcel;I)V
    .registers 4

    .line 0
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    sub-int v1, v0, p1

    add-int/lit8 p1, p1, -0x4

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method

.method public static zzai(Landroid/os/Parcel;I)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzbgo;->zzah(Landroid/os/Parcel;I)V

    return-void
.end method

.method public static zze(Landroid/os/Parcel;)I
    .registers 2

    .line 0
    const/16 v0, 0x4f45

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/zzbgo;->zzag(Landroid/os/Parcel;I)I

    move-result p0

    return p0
.end method
