.class final Lcom/google/firebase/iid/zzg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzokk:Lcom/google/firebase/iid/zzd;

.field private synthetic zzokl:Lcom/google/firebase/iid/zzf;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/zzf;Lcom/google/firebase/iid/zzd;)V
    .registers 3

    .line 0
    iput-object p1, p0, Lcom/google/firebase/iid/zzg;->zzokl:Lcom/google/firebase/iid/zzf;

    iput-object p2, p0, Lcom/google/firebase/iid/zzg;->zzokk:Lcom/google/firebase/iid/zzd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    const/4 v0, 0x3

    const-string v1, "EnhancedIntentService"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "bg processing of the intent starting now"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    iget-object v0, p0, Lcom/google/firebase/iid/zzg;->zzokl:Lcom/google/firebase/iid/zzf;

    invoke-static {v0}, Lcom/google/firebase/iid/zzf;->zza(Lcom/google/firebase/iid/zzf;)Lcom/google/firebase/iid/zzb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/iid/zzg;->zzokk:Lcom/google/firebase/iid/zzd;

    iget-object v1, v1, Lcom/google/firebase/iid/zzd;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/zzb;->handleIntent(Landroid/content/Intent;)V

    iget-object p0, p0, Lcom/google/firebase/iid/zzg;->zzokk:Lcom/google/firebase/iid/zzd;

    invoke-virtual {p0}, Lcom/google/firebase/iid/zzd;->finish()V

    return-void
.end method
