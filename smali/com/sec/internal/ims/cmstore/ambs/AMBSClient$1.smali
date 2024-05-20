.class Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;
.super Landroid/telephony/PhoneStateListener;
.source "AMBSClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageWaitingIndicatorChanged(Z)V
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MWI is changed. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->getCmsProfileEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 70
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->vvmNormalSyncRequest()V

    goto :goto_0

    .line 72
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "cms profile is not enabled or mwi is false"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
