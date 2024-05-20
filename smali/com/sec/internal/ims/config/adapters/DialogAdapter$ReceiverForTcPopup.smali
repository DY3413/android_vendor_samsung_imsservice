.class Lcom/sec/internal/ims/config/adapters/DialogAdapter$ReceiverForTcPopup;
.super Landroid/content/BroadcastReceiver;
.source "DialogAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/adapters/DialogAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReceiverForTcPopup"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$ReceiverForTcPopup;->this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/config/adapters/DialogAdapter;Lcom/sec/internal/ims/config/adapters/DialogAdapter$ReceiverForTcPopup-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/adapters/DialogAdapter$ReceiverForTcPopup;-><init>(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 170
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 173
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ReceiverForTcPopup : "

    if-nez v0, :cond_0

    .line 174
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " , intent getExtras returning null"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 177
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "reason"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 180
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 184
    :cond_1
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", reason : "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 185
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$ReceiverForTcPopup;->this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    invoke-static {p1}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->-$$Nest$fgetmDialog(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)Landroid/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string p1, "recentapps"

    .line 186
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "homekey"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 187
    :cond_2
    iget-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$ReceiverForTcPopup;->this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->-$$Nest$fputmTcPopupFlag(Lcom/sec/internal/ims/config/adapters/DialogAdapter;Z)V

    .line 188
    iget-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$ReceiverForTcPopup;->this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    invoke-static {p1}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->-$$Nest$fgetmDialog(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 189
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$ReceiverForTcPopup;->this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    invoke-static {p0}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->-$$Nest$munregisterReceiverForTcPopup(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)V

    :cond_3
    :goto_0
    return-void
.end method
