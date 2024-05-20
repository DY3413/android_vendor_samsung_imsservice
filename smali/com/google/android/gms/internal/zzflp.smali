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
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzflp;->zzpvs:Ljava/util/List;

    return-void
.end method

.method private final toByteArray()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzflp;->zzq()I

    move-result v0

    new-array v0, v0, [B

    invoke-static {v0}, Lcom/google/android/gms/internal/zzflk;->zzbf([B)Lcom/google/android/gms/internal/zzflk;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzflp;->zza(Lcom/google/android/gms/internal/zzflk;)V

    return-object v0
.end method

.method private zzdcm()Lcom/google/android/gms/internal/zzflp;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/zzflp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzflp;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzflp;->zzpvs:Ljava/util/List;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/internal/zzflp;->zzpvs:Ljava/util/List;

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/google/android/gms/internal/zzflp;->zzpvs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    iget-object p0, p0, Lcom/google/android/gms/internal/zzflp;->value:Ljava/lang/Object;

    if-eqz p0, :cond_9

    instance-of v1, p0, Lcom/google/android/gms/internal/zzfls;

    if-eqz v1, :cond_1

    check-cast p0, Lcom/google/android/gms/internal/zzfls;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzfls;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/zzfls;

    :goto_1
    iput-object p0, v0, Lcom/google/android/gms/internal/zzflp;->value:Ljava/lang/Object;

    goto/16 :goto_4

    :cond_1
    instance-of v1, p0, [B

    if-eqz v1, :cond_2

    check-cast p0, [B

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_2
    instance-of v1, p0, [[B

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    check-cast p0, [[B

    array-length v1, p0

    new-array v1, v1, [[B

    iput-object v1, v0, Lcom/google/android/gms/internal/zzflp;->value:Ljava/lang/Object;

    :goto_2
    array-length v3, p0

    if-ge v2, v3, :cond_9

    aget-object v3, p0, v2

    invoke-virtual {v3}, [B->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    instance-of v1, p0, [Z

    if-eqz v1, :cond_4

    check-cast p0, [Z

    invoke-virtual {p0}, [Z->clone()Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_4
    instance-of v1, p0, [I

    if-eqz v1, :cond_5

    check-cast p0, [I

    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_5
    instance-of v1, p0, [J

    if-eqz v1, :cond_6

    check-cast p0, [J

    invoke-virtual {p0}, [J->clone()Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_6
    instance-of v1, p0, [F

    if-eqz v1, :cond_7

    check-cast p0, [F

    invoke-virtual {p0}, [F->clone()Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_7
    instance-of v1, p0, [D

    if-eqz v1, :cond_8

    check-cast p0, [D

    invoke-virtual {p0}, [D->clone()Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_8
    instance-of v1, p0, [Lcom/google/android/gms/internal/zzfls;

    if-eqz v1, :cond_9

    check-cast p0, [Lcom/google/android/gms/internal/zzfls;

    array-length v1, p0

    new-array v1, v1, [Lcom/google/android/gms/internal/zzfls;

    iput-object v1, v0, Lcom/google/android/gms/internal/zzflp;->value:Ljava/lang/Object;

    :goto_3
    array-length v3, p0

    if-ge v2, v3, :cond_9

    aget-object v3, p0, v2

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzfls;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzfls;

    aput-object v3, v1, v2
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_9
    :goto_4
    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public final synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzflp;->zzdcm()Lcom/google/android/gms/internal/zzflp;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/zzflp;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/zzflp;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzflp;->value:Ljava/lang/Object;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/google/android/gms/internal/zzflp;->value:Ljava/lang/Object;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    throw p0

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzflp;->zzpvs:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v1, p1, Lcom/google/android/gms/internal/zzflp;->zzpvs:Ljava/util/List;

    if-eqz v1, :cond_4

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_4
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzflp;->toByteArray()[B

    move-result-object p0

    invoke-direct {p1}, Lcom/google/android/gms/internal/zzflp;->toByteArray()[B

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final hashCode()I
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzflp;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit16 p0, p0, 0x20f

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method final zza(Lcom/google/android/gms/internal/zzflk;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzflp;->value:Ljava/lang/Object;

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/google/android/gms/internal/zzflp;->zzpvs:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzflu;

    iget v1, v0, Lcom/google/android/gms/internal/zzflu;->tag:I

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzflk;->zzmy(I)V

    iget-object v0, v0, Lcom/google/android/gms/internal/zzflu;->zzjwl:[B

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzflk;->zzbh([B)V

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    const/4 p0, 0x0

    throw p0
.end method

.method final zza(Lcom/google/android/gms/internal/zzflu;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzflp;->zzpvs:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final zzq()I
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzflp;->value:Ljava/lang/Object;

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/google/android/gms/internal/zzflp;->zzpvs:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

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

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    const/4 p0, 0x0

    throw p0
.end method
