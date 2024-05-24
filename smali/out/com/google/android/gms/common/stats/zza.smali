.class public final Lcom/google/android/gms/common/stats/zza;
.super Ljava/lang/Object;


# static fields
.field private static final zzggs:Ljava/lang/Object;

.field private static volatile zzgjh:Lcom/google/android/gms/common/stats/zza;


# instance fields
.field private final zzgjj:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzgjk:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzgjl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzgjm:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/stats/zza;->zzggs:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/common/stats/zza;->zzgjj:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/common/stats/zza;->zzgjk:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/common/stats/zza;->zzgjl:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/common/stats/zza;->zzgjm:Ljava/util/List;

    return-void
.end method

.method public static zzanm()Lcom/google/android/gms/common/stats/zza;
    .registers 2

    .line 0
    sget-object v0, Lcom/google/android/gms/common/stats/zza;->zzgjh:Lcom/google/android/gms/common/stats/zza;

    if-nez v0, :cond_17

    sget-object v0, Lcom/google/android/gms/common/stats/zza;->zzggs:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/google/android/gms/common/stats/zza;->zzgjh:Lcom/google/android/gms/common/stats/zza;

    if-nez v1, :cond_12

    new-instance v1, Lcom/google/android/gms/common/stats/zza;

    invoke-direct {v1}, Lcom/google/android/gms/common/stats/zza;-><init>()V

    sput-object v1, Lcom/google/android/gms/common/stats/zza;->zzgjh:Lcom/google/android/gms/common/stats/zza;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/google/android/gms/common/stats/zza;->zzgjh:Lcom/google/android/gms/common/stats/zza;

    return-object v0
.end method


# virtual methods
.method public final zza(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .registers 12

    .line 0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/common/stats/zza;->zza(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    return p0
.end method

.method public final zza(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .registers 6

    .line 0
    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    const/4 p2, 0x0

    if-nez p0, :cond_9

    move p0, p2

    goto :goto_11

    :cond_9
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/google/android/gms/common/util/zzd;->zzv(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    :goto_11
    if-eqz p0, :cond_1b

    const-string p0, "ConnectionTracker"

    const-string p1, "Attempted to bind to a service in a STOPPED package."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p2

    :cond_1b
    invoke-virtual {p1, p3, p4, p5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    return p0
.end method
