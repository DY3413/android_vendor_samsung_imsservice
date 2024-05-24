.class Lcom/sec/internal/ims/servicemodules/csh/VshTranslation$1;
.super Landroid/content/BroadcastReceiver;
.source "VshTranslation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;)V
    .registers 2

    .line 63
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation$1;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 66
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 67
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.sec.rcs.mediatransfer.vsh.action.SHARE_CONTENT"

    .line 68
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 69
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation$1;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;

    invoke-static {p0, p2}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->-$$Nest$mrequestNewShare(Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;Landroid/content/Intent;)V

    goto :goto_61

    :cond_2a
    const-string v0, "com.sec.rcs.mediatransfer.vsh.action.SHARE_ACCEPT"

    .line 70
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 71
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation$1;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;

    invoke-static {p0, p2}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->-$$Nest$mrequestAcceptShare(Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;Landroid/content/Intent;)V

    goto :goto_61

    :cond_38
    const-string v0, "com.sec.rcs.mediatransfer.vsh.action.SHARE_CANCEL"

    .line 72
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 73
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation$1;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;

    invoke-static {p0, p2}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->-$$Nest$mrequestCancelShare(Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;Landroid/content/Intent;)V

    goto :goto_61

    :cond_46
    const-string v0, "com.sec.rcs.mediatransfer.vsh.action.TOGGLE_CAMERA"

    .line 74
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 75
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation$1;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;

    invoke-static {p0, p2}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->-$$Nest$mrequestToggleCamera(Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;Landroid/content/Intent;)V

    goto :goto_61

    :cond_54
    const-string v0, "com.sec.rcs.mediatransfer.vsh.action.CHANGE_VIDEO_ORIENTATION"

    .line 76
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_61

    .line 78
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation$1;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;

    invoke-static {p0, p2}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->-$$Nest$mrequestChangeSurfaceOrientation(Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;Landroid/content/Intent;)V

    :cond_61
    :goto_61
    return-void
.end method
