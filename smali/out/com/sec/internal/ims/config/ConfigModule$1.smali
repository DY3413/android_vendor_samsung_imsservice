.class Lcom/sec/internal/ims/config/ConfigModule$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "ConfigModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/config/ConfigModule;->createNetworkListener(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/ConfigModule;

.field final synthetic val$networkType:I

.field final synthetic val$phoneId:I


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/config/ConfigModule;II)V
    .registers 4

    .line 1593
    iput-object p1, p0, Lcom/sec/internal/ims/config/ConfigModule$1;->this$0:Lcom/sec/internal/ims/config/ConfigModule;

    iput p2, p0, Lcom/sec/internal/ims/config/ConfigModule$1;->val$phoneId:I

    iput p3, p0, Lcom/sec/internal/ims/config/ConfigModule$1;->val$networkType:I

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .registers 6

    .line 1596
    invoke-static {}, Lcom/sec/internal/ims/config/ConfigModule;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/config/ConfigModule$1;->val$phoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAvailable : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " networkType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/config/ConfigModule$1;->val$networkType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1597
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isDualRcsReg()Z

    move-result v0

    const/16 v1, 0x18

    if-eqz v0, :cond_46

    iget v0, p0, Lcom/sec/internal/ims/config/ConfigModule$1;->val$networkType:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_46

    const/4 v0, 0x0

    .line 1598
    :goto_32
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v2

    if-ge v0, v2, :cond_53

    .line 1599
    iget-object v2, p0, Lcom/sec/internal/ims/config/ConfigModule$1;->this$0:Lcom/sec/internal/ims/config/ConfigModule;

    iget v3, p0, Lcom/sec/internal/ims/config/ConfigModule$1;->val$networkType:I

    invoke-virtual {v2, v1, v0, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    .line 1602
    :cond_46
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule$1;->this$0:Lcom/sec/internal/ims/config/ConfigModule;

    iget v2, p0, Lcom/sec/internal/ims/config/ConfigModule$1;->val$phoneId:I

    iget p0, p0, Lcom/sec/internal/ims/config/ConfigModule$1;->val$networkType:I

    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_53
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .registers 6

    .line 1608
    invoke-static {}, Lcom/sec/internal/ims/config/ConfigModule;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/config/ConfigModule$1;->val$phoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLost : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " networkType: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/sec/internal/ims/config/ConfigModule$1;->val$networkType:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1609
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isDualRcsReg()Z

    move-result p1

    const/16 v0, 0x19

    if-eqz p1, :cond_46

    iget p1, p0, Lcom/sec/internal/ims/config/ConfigModule$1;->val$networkType:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_46

    const/4 p1, 0x0

    .line 1610
    :goto_32
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v1

    if-ge p1, v1, :cond_53

    .line 1611
    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigModule$1;->this$0:Lcom/sec/internal/ims/config/ConfigModule;

    iget v2, p0, Lcom/sec/internal/ims/config/ConfigModule$1;->val$networkType:I

    invoke-virtual {v1, v0, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_32

    .line 1614
    :cond_46
    iget-object p1, p0, Lcom/sec/internal/ims/config/ConfigModule$1;->this$0:Lcom/sec/internal/ims/config/ConfigModule;

    iget v1, p0, Lcom/sec/internal/ims/config/ConfigModule$1;->val$phoneId:I

    iget p0, p0, Lcom/sec/internal/ims/config/ConfigModule$1;->val$networkType:I

    invoke-virtual {p1, v0, v1, p0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_53
    return-void
.end method
