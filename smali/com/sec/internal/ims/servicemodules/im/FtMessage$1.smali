.class Lcom/sec/internal/ims/servicemodules/im/FtMessage$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "FtMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/im/FtMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/im/FtMessage;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$1;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 2

    .line 216
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConnectivityManager.NetworkCallback: onAvailable"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$1;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->-$$Nest$monConnectionChanged(Lcom/sec/internal/ims/servicemodules/im/FtMessage;Landroid/net/Network;Z)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 2

    .line 222
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConnectivityManager.NetworkCallback: onLost"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$1;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->-$$Nest$monConnectionChanged(Lcom/sec/internal/ims/servicemodules/im/FtMessage;Landroid/net/Network;Z)V

    return-void
.end method
