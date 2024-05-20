.class abstract Lcom/google/android/gms/common/zzh;
.super Lcom/google/android/gms/common/internal/zzau;


# instance fields
.field private zzfrd:I


# direct methods
.method protected constructor <init>([B)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/zzau;-><init>()V

    array-length v0, p1

    const/16 v1, 0x19

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(Z)V

    invoke-static {p1}, Ljava/util/Arrays;->hashCode([B)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/common/zzh;->zzfrd:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    instance-of v1, p1, Lcom/google/android/gms/common/internal/zzat;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    check-cast p1, Lcom/google/android/gms/common/internal/zzat;

    invoke-interface {p1}, Lcom/google/android/gms/common/internal/zzat;->zzahh()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/common/zzh;->hashCode()I

    move-result v2

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    invoke-interface {p1}, Lcom/google/android/gms/common/internal/zzat;->zzahg()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    if-nez p1, :cond_2

    return v0

    :cond_2
    invoke-static {p1}, Lcom/google/android/gms/dynamic/zzn;->zzy(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-virtual {p0}, Lcom/google/android/gms/common/zzh;->getBytes()[B

    move-result-object p0

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "GoogleCertificates"

    const-string v1, "Failed to get Google certificates from remote"

    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_0
    return v0
.end method

.method abstract getBytes()[B
.end method

.method public hashCode()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/common/zzh;->zzfrd:I

    return p0
.end method

.method public final zzahg()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/common/zzh;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/dynamic/zzn;->zzz(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p0

    return-object p0
.end method

.method public final zzahh()I
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/common/zzh;->hashCode()I

    move-result p0

    return p0
.end method
