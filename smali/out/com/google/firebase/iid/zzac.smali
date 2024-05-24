.class final Lcom/google/firebase/iid/zzac;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzokq:Lcom/google/firebase/iid/zzw;

.field private final zzolp:J

.field private final zzolq:Landroid/os/PowerManager$WakeLock;

.field private final zzolr:Lcom/google/firebase/iid/FirebaseInstanceId;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/FirebaseInstanceId;Lcom/google/firebase/iid/zzw;J)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/zzac;->zzolr:Lcom/google/firebase/iid/FirebaseInstanceId;

    iput-object p2, p0, Lcom/google/firebase/iid/zzac;->zzokq:Lcom/google/firebase/iid/zzw;

    iput-wide p3, p0, Lcom/google/firebase/iid/zzac;->zzolp:J

    invoke-virtual {p0}, Lcom/google/firebase/iid/zzac;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "power"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const/4 p2, 0x1

    const-string p3, "fiid-sync"

    invoke-virtual {p1, p2, p3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/iid/zzac;->zzolq:Landroid/os/PowerManager$WakeLock;

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    return-void
.end method

.method private final zzclt()Z
    .registers 7

    .line 0
    const-string v0, "FirebaseInstanceId"

    iget-object v1, p0, Lcom/google/firebase/iid/zzac;->zzolr:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-virtual {v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzclc()Lcom/google/firebase/iid/zzab;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_18

    iget-object v3, p0, Lcom/google/firebase/iid/zzac;->zzokq:Lcom/google/firebase/iid/zzw;

    invoke-virtual {v3}, Lcom/google/firebase/iid/zzw;->zzclm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/firebase/iid/zzab;->zzru(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_18

    return v2

    :cond_18
    const/4 v3, 0x0

    :try_start_19
    iget-object v4, p0, Lcom/google/firebase/iid/zzac;->zzolr:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-virtual {v4}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzcld()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_27

    const-string p0, "Token retrieval failed: null"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_27
    const/4 v5, 0x3

    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_33

    const-string v5, "Token successfully retrieved"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    if-eqz v1, :cond_3d

    iget-object v1, v1, Lcom/google/firebase/iid/zzab;->zzlnm:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5d

    :cond_3d
    invoke-virtual {p0}, Lcom/google/firebase/iid/zzac;->getContext()Landroid/content/Context;

    move-result-object p0

    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.google.firebase.iid.TOKEN_REFRESH"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.google.firebase.INSTANCE_ID_EVENT"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v5, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;

    invoke-virtual {v4, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string/jumbo v5, "wrapped_intent"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_5d} :catch_5e
    .catch Ljava/lang/SecurityException; {:try_start_19 .. :try_end_5d} :catch_5e

    :cond_5d
    return v2

    :catch_5e
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "Token retrieval failed: "

    if-eqz v1, :cond_74

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_79

    :cond_74
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_79
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method private final zzclu()Z
    .registers 3

    .line 0
    :goto_0
    iget-object v0, p0, Lcom/google/firebase/iid/zzac;->zzolr:Lcom/google/firebase/iid/FirebaseInstanceId;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzcle()Lcom/google/firebase/iid/zzaa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/iid/zzaa;->zzcls()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_18

    const-string p0, "FirebaseInstanceId"

    const-string/jumbo v1, "topic sync succeeded"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :cond_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_29

    invoke-direct {p0, v1}, Lcom/google/firebase/iid/zzac;->zzrv(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    const/4 p0, 0x0

    return p0

    :cond_21
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzcle()Lcom/google/firebase/iid/zzaa;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/zzaa;->zzro(Ljava/lang/String;)Z

    goto :goto_0

    :catchall_29
    move-exception p0

    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw p0
.end method

.method private final zzrv(Ljava/lang/String;)Z
    .registers 8

    .line 0
    const-string v0, "FirebaseInstanceId"

    const-string v1, "!"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_79

    const/4 v1, 0x0

    aget-object v2, p1, v1

    aget-object p1, p1, v3

    :try_start_12
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/16 v5, 0x53

    if-eq v4, v5, :cond_29

    const/16 v5, 0x55

    if-eq v4, v5, :cond_1f

    goto :goto_33

    :cond_1f
    const-string v4, "U"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    move v2, v3

    goto :goto_34

    :cond_29
    const-string v4, "S"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    move v2, v1

    goto :goto_34

    :cond_33
    :goto_33
    const/4 v2, -0x1

    :goto_34
    if-eqz v2, :cond_4b

    if-eq v2, v3, :cond_39

    goto :goto_79

    :cond_39
    iget-object p0, p0, Lcom/google/firebase/iid/zzac;->zzolr:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-virtual {p0, p1}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzrn(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzclf()Z

    move-result p0

    if-eqz p0, :cond_79

    const-string/jumbo p0, "unsubscribe operation succeeded"

    :goto_47
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_79

    :cond_4b
    iget-object p0, p0, Lcom/google/firebase/iid/zzac;->zzolr:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-virtual {p0, p1}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzrm(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzclf()Z

    move-result p0

    if-eqz p0, :cond_79

    const-string/jumbo p0, "subscribe operation succeeded"
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_59} :catch_5a

    goto :goto_47

    :catch_5a
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const-string v2, "Topic sync failed: "

    if-eqz p1, :cond_70

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_75

    :cond_70
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_75
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_79
    :goto_79
    return v3
.end method


# virtual methods
.method final getContext()Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/google/firebase/iid/zzac;->zzolr:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/google/firebase/iid/zzac;->zzolq:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :try_start_5
    iget-object v0, p0, Lcom/google/firebase/iid/zzac;->zzolr:Lcom/google/firebase/iid/FirebaseInstanceId;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzcy(Z)V

    iget-object v0, p0, Lcom/google/firebase/iid/zzac;->zzokq:Lcom/google/firebase/iid/zzw;

    invoke-virtual {v0}, Lcom/google/firebase/iid/zzw;->zzcll()I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_15

    goto :goto_16

    :cond_15
    move v1, v2

    :goto_16
    if-nez v1, :cond_23

    iget-object v0, p0, Lcom/google/firebase/iid/zzac;->zzolr:Lcom/google/firebase/iid/FirebaseInstanceId;

    :goto_1a
    invoke-virtual {v0, v2}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzcy(Z)V
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_49

    :goto_1d
    iget-object p0, p0, Lcom/google/firebase/iid/zzac;->zzolq:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :cond_23
    :try_start_23
    invoke-virtual {p0}, Lcom/google/firebase/iid/zzac;->zzclv()Z

    move-result v0

    if-nez v0, :cond_32

    new-instance v0, Lcom/google/firebase/iid/zzad;

    invoke-direct {v0, p0}, Lcom/google/firebase/iid/zzad;-><init>(Lcom/google/firebase/iid/zzac;)V

    invoke-virtual {v0}, Lcom/google/firebase/iid/zzad;->zzclw()V

    goto :goto_1d

    :cond_32
    invoke-direct {p0}, Lcom/google/firebase/iid/zzac;->zzclt()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-direct {p0}, Lcom/google/firebase/iid/zzac;->zzclu()Z

    move-result v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/google/firebase/iid/zzac;->zzolr:Lcom/google/firebase/iid/FirebaseInstanceId;

    goto :goto_1a

    :cond_41
    iget-object v0, p0, Lcom/google/firebase/iid/zzac;->zzolr:Lcom/google/firebase/iid/FirebaseInstanceId;

    iget-wide v1, p0, Lcom/google/firebase/iid/zzac;->zzolp:J

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzcd(J)V
    :try_end_48
    .catchall {:try_start_23 .. :try_end_48} :catchall_49

    goto :goto_1d

    :catchall_49
    move-exception v0

    iget-object p0, p0, Lcom/google/firebase/iid/zzac;->zzolq:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0
.end method

.method final zzclv()Z
    .registers 2

    .line 0
    invoke-virtual {p0}, Lcom/google/firebase/iid/zzac;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-eqz p0, :cond_13

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    if-eqz p0, :cond_1e

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_1e

    const/4 p0, 0x1

    return p0

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method
