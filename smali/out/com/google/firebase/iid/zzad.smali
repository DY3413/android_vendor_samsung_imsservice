.class final Lcom/google/firebase/iid/zzad;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private zzols:Lcom/google/firebase/iid/zzac;


# direct methods
.method public constructor <init>(Lcom/google/firebase/iid/zzac;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/zzad;->zzols:Lcom/google/firebase/iid/zzac;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 0
    iget-object p1, p0, Lcom/google/firebase/iid/zzad;->zzols:Lcom/google/firebase/iid/zzac;

    if-nez p1, :cond_5

    return-void

    :cond_5
    invoke-virtual {p1}, Lcom/google/firebase/iid/zzac;->zzclv()Z

    move-result p1

    if-nez p1, :cond_c

    return-void

    :cond_c
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzclf()Z

    move-result p1

    if-eqz p1, :cond_19

    const-string p1, "FirebaseInstanceId"

    const-string p2, "Connectivity changed. Starting background sync."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    iget-object p1, p0, Lcom/google/firebase/iid/zzad;->zzols:Lcom/google/firebase/iid/zzac;

    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzb(Ljava/lang/Runnable;J)V

    iget-object p1, p0, Lcom/google/firebase/iid/zzad;->zzols:Lcom/google/firebase/iid/zzac;

    invoke-virtual {p1}, Lcom/google/firebase/iid/zzac;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/firebase/iid/zzad;->zzols:Lcom/google/firebase/iid/zzac;

    return-void
.end method

.method public final zzclw()V
    .registers 3

    .line 0
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzclf()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "FirebaseInstanceId"

    const-string v1, "Connectivity change received registered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/firebase/iid/zzad;->zzols:Lcom/google/firebase/iid/zzac;

    invoke-virtual {v1}, Lcom/google/firebase/iid/zzac;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
