.class Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$6;
.super Ljava/lang/Object;
.source "EucDisplayManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;->onClickAction(Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;Landroid/widget/EditText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;

.field final synthetic val$pinInput:Landroid/widget/EditText;

.field final synthetic val$response:Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;Landroid/widget/EditText;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 316
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$6;->this$1:Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$6;->val$response:Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;

    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$6;->val$pinInput:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 319
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$6;->this$1:Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;->val$callback:Lcom/sec/internal/ims/servicemodules/euc/dialog/IEucDisplayManager$IDisplayCallback;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$6;->val$response:Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;

    iget-boolean v0, v0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;->hasPin:Z

    if-eqz v0, :cond_15

    .line 320
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$6;->val$pinInput:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    .line 319
    :goto_16
    invoke-interface {v1, v2, p0}, Lcom/sec/internal/ims/servicemodules/euc/dialog/IEucDisplayManager$IDisplayCallback;->onSuccess(Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;Ljava/lang/String;)V

    return-void
.end method
