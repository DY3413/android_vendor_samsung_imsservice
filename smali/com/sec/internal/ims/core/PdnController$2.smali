.class Lcom/sec/internal/ims/core/PdnController$2;
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
    .locals 0

    .line 418
    iput-object p1, p0, Lcom/sec/internal/ims/core/PdnController$2;->this$0:Lcom/sec/internal/ims/core/PdnController;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 3

    .line 421
    invoke-static {}, Lcom/sec/internal/ims/core/PdnController;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDefaultNetworkListener: onAvailable network="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iget-object p1, p0, Lcom/sec/internal/ims/core/PdnController$2;->this$0:Lcom/sec/internal/ims/core/PdnController;

    iget p1, p1, Lcom/sec/internal/ims/core/PdnController;->mActiveDataPhoneId:I

    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object p1

    .line 423
    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/internal/constants/Mno;->TMOBILE:Lcom/sec/internal/constants/Mno;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/sec/internal/constants/Mno;->H3G:Lcom/sec/internal/constants/Mno;

    if-ne p1, v0, :cond_1

    .line 424
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/core/PdnController$2;->this$0:Lcom/sec/internal/ims/core/PdnController;

    const/16 v0, 0x6e

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 425
    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController$2;->this$0:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 2

    .line 432
    invoke-static {}, Lcom/sec/internal/ims/core/PdnController;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDefaultNetworkListener: onLost network="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
