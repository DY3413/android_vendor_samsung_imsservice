.class Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$1;
.super Landroid/content/BroadcastReceiver;
.source "VolteServiceModuleInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/interfaces/ims/core/IPdnController;Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;)V
    .locals 0

    .line 293
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$1;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 296
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 297
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v0, :sswitch_data_0

    :goto_0
    move p1, v4

    goto :goto_1

    :sswitch_0
    const-string v0, "com.samsung.intent.action.LTE_BAND"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    goto :goto_1

    :sswitch_1
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x5

    goto :goto_1

    :sswitch_2
    const-string v0, "com.samsung.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED_INTERNAL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x4

    goto :goto_1

    :sswitch_3
    const-string v0, "com.samsung.intent.action.PSBARRED_FOR_VOLTE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x3

    goto :goto_1

    :sswitch_4
    const-string v0, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 p1, 0x2

    goto :goto_1

    :sswitch_5
    const-string v0, "com.att.iqi.action.SERVICE_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    move p1, v2

    goto :goto_1

    :sswitch_6
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    move p1, v3

    :goto_1
    const/16 v0, 0x17

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    const-string p1, "BAND"

    .line 310
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 311
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$1;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mMobileCareController:Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->onLteBancChanged(Ljava/lang/String;)V

    goto :goto_2

    .line 321
    :pswitch_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$1;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    invoke-virtual {p0, v0, v2, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    :pswitch_2
    const-string p1, "cmd"

    .line 315
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 316
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$1;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    const/16 p2, 0xe

    const-string v0, "1"

    .line 317
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 316
    invoke-virtual {p0, p2, p1, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    :pswitch_3
    const-string p1, "android.telephony.extra.PHONE_IN_ECM_STATE"

    .line 300
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 301
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$1;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->access$000(Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;)I

    move-result v0

    const-string v4, "phone"

    invoke-virtual {p2, v4, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-eqz p1, :cond_7

    .line 303
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$1;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    invoke-virtual {p0, v1, p2, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 305
    :cond_7
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$1;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    invoke-virtual {p0, v1, p2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    :pswitch_4
    const-string p1, "com.att.iqi.extra.SERVICE_RUNNING"

    .line 329
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 330
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$1;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    const/16 p2, 0x1c

    invoke-virtual {p0, p2, p1, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 325
    :pswitch_5
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$1;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    invoke-virtual {p0, v0, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ed8ea7f -> :sswitch_6
        -0x7b224c95 -> :sswitch_5
        -0x72d34001 -> :sswitch_4
        -0x6db000e9 -> :sswitch_3
        -0x633bdce1 -> :sswitch_2
        -0x56ac2893 -> :sswitch_1
        0x42b5455e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
