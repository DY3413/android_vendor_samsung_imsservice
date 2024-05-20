.class final synthetic Lcom/google/firebase/iid/zzn;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private final zzola:Lcom/google/firebase/iid/zzm;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/zzm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/zzn;->zzola:Lcom/google/firebase/iid/zzm;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/iid/zzn;->zzola:Lcom/google/firebase/iid/zzm;

    invoke-virtual {p0, p1}, Lcom/google/firebase/iid/zzm;->zzc(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method
