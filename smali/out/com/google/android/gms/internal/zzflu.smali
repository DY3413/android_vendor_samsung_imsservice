.class final Lcom/google/android/gms/internal/zzflu;
.super Ljava/lang/Object;


# instance fields
.field final tag:I

.field final zzjwl:[B


# direct methods
.method constructor <init>(I[B)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzflu;->tag:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzflu;->zzjwl:[B

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    .line 0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/internal/zzflu;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/zzflu;

    iget v1, p0, Lcom/google/android/gms/internal/zzflu;->tag:I

    iget v3, p1, Lcom/google/android/gms/internal/zzflu;->tag:I

    if-ne v1, v3, :cond_1d

    iget-object p0, p0, Lcom/google/android/gms/internal/zzflu;->zzjwl:[B

    iget-object p1, p1, Lcom/google/android/gms/internal/zzflu;->zzjwl:[B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_1d

    return v0

    :cond_1d
    return v2
.end method

.method public final hashCode()I
    .registers 2

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/zzflu;->tag:I

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/google/android/gms/internal/zzflu;->zzjwl:[B

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method
