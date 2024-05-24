.class final Lcom/google/firebase/iid/zzv;
.super Lcom/google/firebase/iid/zzt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/firebase/iid/zzt<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(IILandroid/os/Bundle;)V
    .registers 4

    .line 0
    const/4 p2, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/google/firebase/iid/zzt;-><init>(IILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method final zzaww()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method final zzx(Landroid/os/Bundle;)V
    .registers 3

    .line 0
    const-string v0, "data"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_a

    sget-object p1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :cond_a
    invoke-virtual {p0, p1}, Lcom/google/firebase/iid/zzt;->finish(Ljava/lang/Object;)V

    return-void
.end method
