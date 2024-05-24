.class Lcom/sec/internal/ims/core/PdnController$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "PdnController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/PdnController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/PdnController;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/PdnController;)V
    .registers 2

    .line 386
    iput-object p1, p0, Lcom/sec/internal/ims/core/PdnController$1;->this$0:Lcom/sec/internal/ims/core/PdnController;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .registers 2

    .line 389
    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController$1;->this$0:Lcom/sec/internal/ims/core/PdnController;

    const/16 p1, 0x69

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .registers 2

    .line 394
    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController$1;->this$0:Lcom/sec/internal/ims/core/PdnController;

    const/16 p1, 0x6a

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
