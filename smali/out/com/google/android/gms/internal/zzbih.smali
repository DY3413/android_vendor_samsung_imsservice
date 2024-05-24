.class public final Lcom/google/android/gms/internal/zzbih;
.super Ljava/lang/Object;


# static fields
.field private static zzglt:Lcom/google/android/gms/internal/zzbih;


# instance fields
.field private zzgls:Lcom/google/android/gms/internal/zzbig;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/zzbih;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbih;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbih;->zzglt:Lcom/google/android/gms/internal/zzbih;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbih;->zzgls:Lcom/google/android/gms/internal/zzbig;

    return-void
.end method

.method private final declared-synchronized zzdc(Landroid/content/Context;)Lcom/google/android/gms/internal/zzbig;
    .registers 3

    .line 0
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbih;->zzgls:Lcom/google/android/gms/internal/zzbig;

    if-nez v0, :cond_17

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_c

    goto :goto_10

    :cond_c
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :goto_10
    new-instance v0, Lcom/google/android/gms/internal/zzbig;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzbig;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbih;->zzgls:Lcom/google/android/gms/internal/zzbig;

    :cond_17
    iget-object p1, p0, Lcom/google/android/gms/internal/zzbih;->zzgls:Lcom/google/android/gms/internal/zzbig;
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    monitor-exit p0

    return-object p1

    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static zzdd(Landroid/content/Context;)Lcom/google/android/gms/internal/zzbig;
    .registers 2

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/zzbih;->zzglt:Lcom/google/android/gms/internal/zzbih;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbih;->zzdc(Landroid/content/Context;)Lcom/google/android/gms/internal/zzbig;

    move-result-object p0

    return-object p0
.end method
