.class Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$4$1;
.super Ljava/lang/Object;
.source "EucDisplayManager.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$4;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$4;

.field final synthetic val$acceptButton:Landroid/widget/Button;

.field final synthetic val$rejectButton:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$4;Landroid/widget/Button;Landroid/widget/Button;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 252
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$4$1;->this$2:Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$4;

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$4$1;->val$acceptButton:Landroid/widget/Button;

    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$4$1;->val$rejectButton:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    .line 0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 262
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 263
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$4$1;->val$acceptButton:Landroid/widget/Button;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 264
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$4$1;->val$rejectButton:Landroid/widget/Button;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
