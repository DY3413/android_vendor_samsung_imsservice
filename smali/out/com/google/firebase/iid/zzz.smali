.class public final Lcom/google/firebase/iid/zzz;
.super Ljava/lang/Object;


# static fields
.field private static zzolj:Lcom/google/firebase/iid/zzz;


# instance fields
.field private final zzolk:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzoll:Ljava/lang/Boolean;

.field final zzolm:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private zzoln:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/iid/zzz;->zzolk:Landroid/support/v4/util/SimpleArrayMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/iid/zzz;->zzoll:Ljava/lang/Boolean;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/iid/zzz;->zzolm:Ljava/util/Queue;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/iid/zzz;->zzoln:Ljava/util/Queue;

    return-void
.end method

.method public static zza(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .registers 5

    .line 0
    new-instance p3, Landroid/content/Intent;

    const-class v0, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;

    invoke-direct {p3, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "com.google.firebase.MESSAGING_EVENT"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "wrapped_intent"

    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p0, p1, p3, p2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized zzclq()Lcom/google/firebase/iid/zzz;
    .registers 2

    .line 0
    const-class v0, Lcom/google/firebase/iid/zzz;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/firebase/iid/zzz;->zzolj:Lcom/google/firebase/iid/zzz;

    if-nez v1, :cond_e

    new-instance v1, Lcom/google/firebase/iid/zzz;

    invoke-direct {v1}, Lcom/google/firebase/iid/zzz;-><init>()V

    sput-object v1, Lcom/google/firebase/iid/zzz;->zzolj:Lcom/google/firebase/iid/zzz;

    :cond_e
    sget-object v1, Lcom/google/firebase/iid/zzz;->zzolj:Lcom/google/firebase/iid/zzz;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private final zze(Landroid/content/Context;Landroid/content/Intent;)I
    .registers 9

    .line 0
    iget-object v0, p0, Lcom/google/firebase/iid/zzz;->zzolk:Landroid/support/v4/util/SimpleArrayMap;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/firebase/iid/zzz;->zzolk:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_138

    const/4 v0, 0x0

    if-nez v1, :cond_a4

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_9c

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v1, :cond_23

    goto/16 :goto_9c

    :cond_23
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_66

    iget-object v2, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    if-nez v2, :cond_34

    goto :goto_66

    :cond_34
    const-string v1, "."

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_54

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4f

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_55

    :cond_4f
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :cond_54
    move-object v1, v2

    :goto_55
    iget-object v2, p0, Lcom/google/firebase/iid/zzz;->zzolk:Landroid/support/v4/util/SimpleArrayMap;

    monitor-enter v2

    :try_start_58
    iget-object v3, p0, Lcom/google/firebase/iid/zzz;->zzolk:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2

    goto :goto_a4

    :catchall_63
    move-exception p0

    monitor-exit v2
    :try_end_65
    .catchall {:try_start_58 .. :try_end_65} :catchall_63

    throw p0

    :cond_66
    :goto_66
    const-string v2, "FirebaseInstanceId"

    iget-object v3, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x5e

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Error resolving target intent service, skipping classname enforcement. Resolved service was: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d0

    :cond_9c
    :goto_9c
    const-string v1, "FirebaseInstanceId"

    const-string v2, "Failed to resolve target intent service, skipping classname enforcement"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d0

    :cond_a4
    :goto_a4
    const-string v2, "FirebaseInstanceId"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_c9

    const-string v2, "FirebaseInstanceId"

    const-string v3, "Restricting intent to a specific service: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_c0

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_c6

    :cond_c0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    :goto_c6
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c9
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_d0
    :try_start_d0
    iget-object v1, p0, Lcom/google/firebase/iid/zzz;->zzoll:Ljava/lang/Boolean;

    if-nez v1, :cond_e3

    const-string v1, "android.permission.WAKE_LOCK"

    invoke-virtual {p1, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_dd

    const/4 v0, 0x1

    :cond_dd
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/iid/zzz;->zzoll:Ljava/lang/Boolean;

    :cond_e3
    iget-object p0, p0, Lcom/google/firebase/iid/zzz;->zzoll:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_f0

    invoke-static {p1, p2}, Landroid/support/v4/content/WakefulBroadcastReceiver;->startWakefulService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p0

    goto :goto_fb

    :cond_f0
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p0

    const-string p1, "FirebaseInstanceId"

    const-string p2, "Missing wake lock permission, service start may be delayed"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_fb
    if-nez p0, :cond_107

    const-string p0, "FirebaseInstanceId"

    const-string p1, "Error while delivering the message: ServiceIntent not found."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_104
    .catch Ljava/lang/SecurityException; {:try_start_d0 .. :try_end_104} :catch_12d
    .catch Ljava/lang/IllegalStateException; {:try_start_d0 .. :try_end_104} :catch_109

    const/16 p0, 0x194

    return p0

    :cond_107
    const/4 p0, -0x1

    return p0

    :catch_109
    move-exception p0

    const-string p1, "FirebaseInstanceId"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, 0x2d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Failed to start service while in background: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x192

    return p0

    :catch_12d
    move-exception p0

    const-string p1, "FirebaseInstanceId"

    const-string p2, "Error while delivering the message to the serviceIntent"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 p0, 0x191

    return p0

    :catchall_138
    move-exception p0

    :try_start_139
    monitor-exit v0
    :try_end_13a
    .catchall {:try_start_139 .. :try_end_13a} :catchall_138

    throw p0
.end method


# virtual methods
.method public final zzb(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)I
    .registers 5

    .line 0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const-string v0, "com.google.firebase.INSTANCE_ID_EVENT"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    const-string v0, "com.google.firebase.MESSAGING_EVENT"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    const-string p1, "Unknown service action: "

    if-eqz p0, :cond_20

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_25

    :cond_20
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_25
    const-string p1, "FirebaseInstanceId"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x1f4

    return p0

    :cond_2d
    iget-object v0, p0, Lcom/google/firebase/iid/zzz;->zzoln:Ljava/util/Queue;

    goto :goto_32

    :cond_30
    iget-object v0, p0, Lcom/google/firebase/iid/zzz;->zzolm:Ljava/util/Queue;

    :goto_32
    invoke-interface {v0, p3}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, p1, p3}, Lcom/google/firebase/iid/zzz;->zze(Landroid/content/Context;Landroid/content/Intent;)I

    move-result p0

    return p0
.end method

.method public final zzclr()Landroid/content/Intent;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/google/firebase/iid/zzz;->zzoln:Ljava/util/Queue;

    invoke-interface {p0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Intent;

    return-object p0
.end method
