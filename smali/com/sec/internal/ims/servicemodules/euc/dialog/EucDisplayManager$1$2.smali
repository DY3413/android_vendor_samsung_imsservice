.class Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$2;
.super Ljava/lang/Object;
.source "EucDisplayManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;

.field final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;Landroid/widget/EditText;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$2;->this$1:Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$2;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 221
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$2;->this$1:Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;

    sget-object p2, Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;->ACCEPT:Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$2;->val$input:Landroid/widget/EditText;

    invoke-static {p1, p2, p0}, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;->-$$Nest$monClickAction(Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;Landroid/widget/EditText;)V

    return-void
.end method
