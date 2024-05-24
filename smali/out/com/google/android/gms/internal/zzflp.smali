.class final Lcom/google/android/gms/internal/zzflp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private value:Ljava/lang/Object;

.field private zzpvs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzflu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzflp;->zzpvs:Ljava/util/List;

    return-void
.end method

.method private final toByteArray()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzflp;->zzq()I

    move-result v0

    new-array v0, v0, [B

    invoke-static {v0}, Lcom/google/android/gms/internal/zzflk;->zzbf([B)Lcom/google/android/gms/internal/zzflk;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzflp;->zza(Lcom/google/android/gms/internal/zzflk;)V

    return-object v0
.end method

.method private zzdcm()Lcom/google/android/gms/internal/zzflp;
    .registers 5

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/zzflp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzflp;-><init>()V

    :try_start_5
    iget-object v1, p0, Lcom/google/android/gms/internal/zzflp;->zzpvs:Ljava/util/List;

    if-nez v1, :cond_d

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/internal/zzflp;->zzpvs:Ljava/util/List;

    goto :goto_12

    :cond_d
    iget-object v2, v0, Lcom/google/android/gms/internal/zzflp;->zzpvs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_12
    iget-object p0, p0, Lcom/google/android/gms/internal/zzflp;->value:Ljava/lang/Object;

    if-eqz p0, :cond_9f

    instance-of v1, p0, Lcom/google/android/gms/internal/zzfls;

    if-eqz v1, :cond_26

    check-cast p0, Lcom/google/android/gms/internal/zzfls;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzfls;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/zzfls;

    :goto_22
    iput-object p0, v0, Lcom/google/android/gms/internal/zzflp;->value:Ljava/lang/Object;

    goto/16 :goto_9f

    :cond_26
    instance-of v1, p0, [B

    if-eqz v1, :cond_31

    check-cast p0, [B

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    goto :goto_22

    :cond_31
    instance-of v1, p0, [[B

    const/4 v2, 0x0

    if-eqz v1, :cond_4d

    check-cast p0, [[B

    array-length v1, p0

    new-array v1, v1, [[B

    iput-object v1, v0, Lcom/google/android/gms/internal/zzflp;->value:Ljava/lang/Object;

    :goto_3d
    array-length v3, p0

    if-ge v2, v3, :cond_9f

    aget-object v3, p0, v2

    invoke-virtual {v3}, [B->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    :cond_4d
    instance-of v1, p0, [Z

    if-eqz v1, :cond_58

    check-cast p0, [Z

    invoke-virtual {p0}, [Z->clone()Ljava/lang/Object;

    move-result-object p0

    goto :goto_22

    :cond_58
    instance-of v1, p0, [I

    if-eqz v1, :cond_63

    check-cast p0, [I

    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object p0

    goto :goto_22

    :cond_63
    instance-of v1, p0, [J

    if-eqz v1, :cond_6e

    check-cast p0, [J

    invoke-virtual {p0}, [J->clone()Ljava/lang/Object;

    move-result-object p0

    goto :goto_22

    :cond_6e
    instance-of v1, p0, [F

    if-eqz v1, :cond_79

    check-cast p0, [F

    invoke-virtual {p0}, [F->clone()Ljava/lang/Object;

    move-result-object p0

    goto :goto_22

    :cond_79
    instance-of v1, p0, [D

    if-eqz v1, :cond_84

    check-cast p0, [D

    invoke-virtual {p0}, [D->clone()Ljava/lang/Object;

    move-result-object p0

    goto :goto_22

    :cond_84
    instance-of v1, p0, [Lcom/google/android/gms/internal/zzfls;

    if-eqz v1, :cond_9f

    check-cast p0, [Lcom/google/android/gms/internal/zzfls;

    array-length v1, p0

    new-array v1, v1, [Lcom/google/android/gms/internal/zzfls;

    iput-object v1, v0, Lcom/google/android/gms/internal/zzflp;->value:Ljava/lang/Object;

    :goto_8f
    array-length v3, p0

    if-ge v2, v3, :cond_9f

    aget-object v3, p0, v2

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzfls;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzfls;

    aput-object v3, v1, v2
    :try_end_9c
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_5 .. :try_end_9c} :catch_a0

    add-int/lit8 v2, v2, 0x1

    goto :goto_8f

    :cond_9f
    :goto_9f
    return-object v0

    :catch_a0
    move-exception p0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public final synthetic clone()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzflp;->zzdcm()Lcom/google/android/gms/internal/zzflp;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    .line 0
    if-ne p1, p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    instance-of v0, p1, Lcom/google/android/gms/internal/zzflp;

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/zzflp;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzflp;->value:Ljava/lang/Object;

    if-eqz v0, :cond_17

    iget-object v0, p1, Lcom/google/android/gms/internal/zzflp;->value:Ljava/lang/Object;

    if-nez v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    throw p0

    :cond_17
    :goto_17
    iget-object v0, p0, Lcom/google/android/gms/internal/zzflp;->zzpvs:Ljava/util/List;

    if-eqz v0, :cond_24

    iget-object v1, p1, Lcom/google/android/gms/internal/zzflp;->zzpvs:Ljava/util/List;

    if-eqz v1, :cond_24

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_24
    :try_start_24
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzflp;->toByteArray()[B

    move-result-object p0

    invoke-direct {p1}, Lcom/google/android/gms/internal/zzflp;->toByteArray()[B

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_30} :catch_31

    return p0

    :catch_31
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final hashCode()I
    .registers 2

    .line 0
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzflp;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result p0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_b

    add-int/lit16 p0, p0, 0x20f

    return p0

    :catch_b
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method final zza(Lcom/google/android/gms/internal/zzflk;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzflp;->value:Ljava/lang/Object;

    if-nez v0, :cond_22

    iget-object p0, p0, Lcom/google/android/gms/internal/zzflp;->zzpvs:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzflu;

    iget v1, v0, Lcom/google/android/gms/internal/zzflu;->tag:I

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzflk;->zzmy(I)V

    iget-object v0, v0, Lcom/google/android/gms/internal/zzflu;->zzjwl:[B

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzflk;->zzbh([B)V

    goto :goto_a

    :cond_21
    return-void

    :cond_22
    const/4 p0, 0x0

    throw p0
.end method

.method final zza(Lcom/google/android/gms/internal/zzflu;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/google/android/gms/internal/zzflp;->zzpvs:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final zzq()I
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzflp;->value:Ljava/lang/Object;

    if-nez v0, :cond_26

    iget-object p0, p0, Lcom/google/android/gms/internal/zzflp;->zzpvs:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :goto_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzflu;

    iget v3, v2, Lcom/google/android/gms/internal/zzflu;->tag:I

    invoke-static {v3}, Lcom/google/android/gms/internal/zzflk;->zzmf(I)I

    move-result v3

    add-int/2addr v3, v0

    iget-object v2, v2, Lcom/google/android/gms/internal/zzflu;->zzjwl:[B

    array-length v2, v2

    add-int/2addr v3, v2

    add-int/2addr v1, v3

    goto :goto_c

    :cond_25
    return v1

    :cond_26
    const/4 p0, 0x0

    throw p0
.end method
